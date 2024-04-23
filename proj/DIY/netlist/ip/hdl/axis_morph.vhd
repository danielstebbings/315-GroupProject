-- Generated from Simulink block axis_morph/DUT/Algorithm/Coordinate Counter
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_coordinate_counter is
  port (
    valid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    x_value : out std_logic_vector( 8-1 downto 0 );
    y_value : out std_logic_vector( 7-1 downto 0 )
  );
end axis_morph_coordinate_counter;
architecture structural of axis_morph_coordinate_counter is 
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal x_counter_op_net : std_logic_vector( 8-1 downto 0 );
  signal y_counter_op_net : std_logic_vector( 7-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  x_value <= x_counter_op_net;
  y_value <= y_counter_op_net;
  delay1_q_net <= valid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_40f9a5a03f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_8e3f9e46b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => x_counter_op_net,
    op => relational_op_net
  );
  x_counter : entity xil_defaultlib.axis_morph_xlcounter_limit 
  generic map (
    cnt_15_0 => 161,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "axis_morph_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => x_counter_op_net
  );
  y_counter : entity xil_defaultlib.axis_morph_xlcounter_limit 
  generic map (
    cnt_15_0 => 121,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "axis_morph_c_counter_binary_v12_0_i1",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 7
  )
  port map (
    rst => "0",
    clr => '0',
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    op => y_counter_op_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/Grey to Binary
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_grey_to_binary is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_grey_to_binary;
architecture structural of axis_morph_grey_to_binary is 
  signal clk_net : std_logic;
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= relational_op_net;
  addsub1_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_dc0217deaa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_12b5d4f02e 
  port map (
    clr => '0',
    a => addsub1_s_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/Morphing
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_morphing is
  port (
    w00 : in std_logic_vector( 1-1 downto 0 );
    w01 : in std_logic_vector( 1-1 downto 0 );
    w02 : in std_logic_vector( 1-1 downto 0 );
    w10 : in std_logic_vector( 1-1 downto 0 );
    w11 : in std_logic_vector( 1-1 downto 0 );
    w12 : in std_logic_vector( 1-1 downto 0 );
    w20 : in std_logic_vector( 1-1 downto 0 );
    w21 : in std_logic_vector( 1-1 downto 0 );
    w22 : in std_logic_vector( 1-1 downto 0 );
    k00 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    w22_x0 : out std_logic_vector( 5-1 downto 0 )
  );
end axis_morph_morphing;
architecture structural of axis_morph_morphing is 
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 5-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 1-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 1-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 2-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 2-1 downto 0 );
  signal mult_p_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 2-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 1-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 3-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 2-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 1-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 1-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 1-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 3-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 4-1 downto 0 );
begin
  w22_x0 <= addsub7_s_net;
  delay8_q_net <= w00;
  delay7_q_net <= w01;
  delay2_q_net <= w02;
  delay6_q_net <= w10;
  delay5_q_net <= w11;
  delay1_q_net <= w12;
  delay4_q_net <= w20;
  delay3_q_net <= w21;
  delay_q_net <= w22;
  constant_op_net <= k00;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.sysgen_addsub_c9b8bf610f 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_c9b8bf610f 
  port map (
    clr => '0',
    a => mult2_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.sysgen_addsub_c9b8bf610f 
  port map (
    clr => '0',
    a => mult4_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.sysgen_addsub_c9b8bf610f 
  port map (
    clr => '0',
    a => mult6_p_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 2,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 3,
    core_name0 => "axis_morph_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 3,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 3
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub3_s_net,
    b => mult8_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 2,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 2,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 3,
    core_name0 => "axis_morph_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 3,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 3
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 2,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 3,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 4,
    core_name0 => "axis_morph_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 4,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 4
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub2_s_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 3,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 4,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 5,
    core_name0 => "axis_morph_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 5,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 5
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub5_s_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  mult : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay8_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay7_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay2_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay6_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay5_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay4_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 1,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 1,
    c_a_type => 1,
    c_a_width => 1,
    c_b_type => 1,
    c_b_width => 1,
    c_baat => 1,
    c_output_width => 2,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 1,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/RGB To Greyscale
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_rgb_to_greyscale is
  port (
    rgb : in std_logic_vector( 24-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    y : out std_logic_vector( 8-1 downto 0 )
  );
end axis_morph_rgb_to_greyscale;
architecture structural of axis_morph_rgb_to_greyscale is 
  signal ce_net : std_logic;
  signal tdata_slice_y_net : std_logic_vector( 24-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 24-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 24-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 25-1 downto 0 );
  signal clk_net : std_logic;
  signal red_y_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 24-1 downto 0 );
  signal blue_y_net : std_logic_vector( 8-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 24-1 downto 0 );
  signal green_y_net : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
begin
  y <= addsub1_s_net;
  tdata_slice_y_net <= rgb;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 15,
    a_width => 24,
    b_arith => xlUnsigned,
    b_bin_pt => 15,
    b_width => 24,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 25,
    core_name0 => "axis_morph_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 25,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 15,
    s_width => 25
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_morph_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 15,
    a_width => 25,
    b_arith => xlUnsigned,
    b_bin_pt => 15,
    b_width => 24,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 26,
    core_name0 => "axis_morph_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 26,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => register_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  blue : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => tdata_slice_y_net,
    y => blue_y_net
  );
  cmult : entity xil_defaultlib.axis_morph_xlcmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_bin_pt => 15,
    c_a_type => 1,
    c_a_width => 8,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 24,
    core_name0 => "axis_morph_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 15,
    p_width => 24,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => red_y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity xil_defaultlib.axis_morph_xlcmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_bin_pt => 15,
    c_a_type => 1,
    c_a_width => 8,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 24,
    core_name0 => "axis_morph_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 15,
    p_width => 24,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => green_y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.axis_morph_xlcmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_bin_pt => 15,
    c_a_type => 1,
    c_a_width => 8,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 24,
    core_name0 => "axis_morph_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 15,
    p_width => 24,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => blue_y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  green : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => tdata_slice_y_net,
    y => green_y_net
  );
  red : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 23,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => tdata_slice_y_net,
    y => red_y_net
  );
  register_x0 : entity xil_defaultlib.axis_morph_xlregister 
  generic map (
    d_width => 24,
    init_value => b"000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/Signal Correction
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_signal_correction is
  port (
    x_value : in std_logic_vector( 8-1 downto 0 );
    y_value : in std_logic_vector( 7-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    valid : out std_logic_vector( 1-1 downto 0 );
    last : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_signal_correction;
architecture structural of axis_morph_signal_correction is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 7-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal x_counter_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant2_op_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal y_counter_op_net : std_logic_vector( 7-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 7-1 downto 0 );
begin
  valid <= register_q_net;
  last <= register1_q_net;
  x_counter_op_net <= x_value;
  y_counter_op_net <= y_value;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_7e920c1341 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_477d91651e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_73d8f9ddf0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_66160ad2a3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_85bd7aafab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => relational2_op_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_85bd7aafab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational3_op_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_85bd7aafab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => logical1_y_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_85bd7aafab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational4_op_net,
    d1 => relational5_op_net,
    y => logical3_y_net
  );
  register_x0 : entity xil_defaultlib.axis_morph_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.axis_morph_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.axis_morph_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => x_counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.axis_morph_xlregister 
  generic map (
    d_width => 7,
    init_value => b"0000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => y_counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_2be730b0a0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register2_q_net,
    b => constant_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_5429192a8a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register3_q_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_408cca8863 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register2_q_net,
    b => constant2_op_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_c08922848e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register3_q_net,
    b => constant3_op_net,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_190d03721d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register3_q_net,
    b => constant3_op_net,
    op => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_8e3f9e46b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register2_q_net,
    b => constant2_op_net,
    op => relational5_op_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_subsystem is
  port (
    w22 : in std_logic_vector( 5-1 downto 0 );
    axi_lite_threshold : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    output : out std_logic_vector( 8-1 downto 0 )
  );
end axis_morph_subsystem;
architecture structural of axis_morph_subsystem is 
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 5-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  output <= convert_dout_net;
  addsub7_s_net <= w22;
  convert2_dout_net <= axi_lite_threshold;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.axis_morph_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  relational : entity xil_defaultlib.sysgen_relational_78b90fd84e 
  port map (
    clr => '0',
    a => addsub7_s_net,
    b => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm/Windowing
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_windowing is
  port (
    pixel_stream : in std_logic_vector( 1-1 downto 0 );
    valid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    w22 : out std_logic_vector( 1-1 downto 0 );
    w21 : out std_logic_vector( 1-1 downto 0 );
    w20 : out std_logic_vector( 1-1 downto 0 );
    w12 : out std_logic_vector( 1-1 downto 0 );
    w11 : out std_logic_vector( 1-1 downto 0 );
    w10 : out std_logic_vector( 1-1 downto 0 );
    w02 : out std_logic_vector( 1-1 downto 0 );
    w01 : out std_logic_vector( 1-1 downto 0 );
    w00 : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_windowing;
architecture structural of axis_morph_windowing is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 1-1 downto 0 );
begin
  w22 <= delay_q_net;
  w21 <= delay3_q_net;
  w20 <= delay4_q_net;
  w12 <= delay1_q_net;
  w11 <= delay5_q_net;
  w10 <= delay6_q_net;
  w02 <= delay2_q_net;
  w01 <= delay7_q_net;
  w00 <= delay8_q_net;
  relational_op_net <= pixel_stream;
  delay_q_net_x0 <= valid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => relational_op_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 160,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 320,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay1_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay1_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay2_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '0',
    d => delay2_q_net,
    en => delay_q_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Algorithm
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_algorithm is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 24-1 downto 0 );
    axi_lite_threshold : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 )
  );
end axis_morph_algorithm;
architecture structural of axis_morph_algorithm is 
  signal tdata_slice_y_net : std_logic_vector( 24-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal x_counter_op_net : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub7_s_net : std_logic_vector( 5-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal y_counter_op_net : std_logic_vector( 7-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 8-1 downto 0 );
begin
  m_axis_tvalid <= register_q_net;
  m_axis_tlast <= register1_q_net;
  m_axis_tdata <= mult_p_net;
  logical_y_net <= s_axis_tvalid;
  tdata_slice_y_net <= s_axis_tdata;
  convert2_dout_net <= axi_lite_threshold;
  clk_net <= clk_1;
  ce_net <= ce_1;
  coordinate_counter : entity xil_defaultlib.axis_morph_coordinate_counter 
  port map (
    valid => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    x_value => x_counter_op_net,
    y_value => y_counter_op_net
  );
  grey_to_binary : entity xil_defaultlib.axis_morph_grey_to_binary 
  port map (
    in1 => addsub1_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => relational_op_net
  );
  morphing : entity xil_defaultlib.axis_morph_morphing 
  port map (
    w00 => delay8_q_net,
    w01 => delay7_q_net,
    w02 => delay2_q_net,
    w10 => delay6_q_net,
    w11 => delay5_q_net,
    w12 => delay1_q_net_x0,
    w20 => delay4_q_net,
    w21 => delay3_q_net,
    w22 => delay_q_net_x0,
    k00 => constant_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    w22_x0 => addsub7_s_net
  );
  rgb_to_greyscale : entity xil_defaultlib.axis_morph_rgb_to_greyscale 
  port map (
    rgb => tdata_slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    y => addsub1_s_net
  );
  signal_correction : entity xil_defaultlib.axis_morph_signal_correction 
  port map (
    x_value => x_counter_op_net,
    y_value => y_counter_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    valid => register_q_net,
    last => register1_q_net
  );
  subsystem : entity xil_defaultlib.axis_morph_subsystem 
  port map (
    w22 => addsub7_s_net,
    axi_lite_threshold => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    output => convert_dout_net
  );
  windowing : entity xil_defaultlib.axis_morph_windowing 
  port map (
    pixel_stream => relational_op_net,
    valid => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    w22 => delay_q_net_x0,
    w21 => delay3_q_net,
    w20 => delay4_q_net,
    w12 => delay1_q_net_x0,
    w11 => delay5_q_net,
    w10 => delay6_q_net,
    w02 => delay2_q_net,
    w01 => delay7_q_net,
    w00 => delay8_q_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_5c9c5ef056 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_5766423979 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  delay : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_morph_xldelay 
  generic map (
    latency => 7,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  mult : entity xil_defaultlib.axis_morph_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 8,
    c_a_type => 1,
    c_a_width => 8,
    c_b_type => 1,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 1,
    core_name0 => "axis_morph_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert_dout_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Master FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_master_fifo is
  port (
    tvalid_out : in std_logic_vector( 1-1 downto 0 );
    tdata_out : in std_logic_vector( 16-1 downto 0 );
    tlast_out : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    tready_out : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_master_fifo;
architecture structural of axis_morph_master_fifo is 
  signal ce_net : std_logic;
  signal fifo_dout_net : std_logic_vector( 17-1 downto 0 );
  signal fifo_empty_net : std_logic;
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal fifo_full_net : std_logic;
  signal concat1_y_net : std_logic_vector( 17-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_af_net : std_logic;
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 16-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tvalid <= inverter4_op_net;
  m_axis_tdata <= tdata_slice_y_net;
  m_axis_tlast <= tlast_slice_y_net;
  tready_out <= inverter2_op_net;
  register_q_net <= tvalid_out;
  mult_p_net <= tdata_out;
  register1_q_net <= tlast_out;
  m_axis_tready_net <= m_axis_tready;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat1 : entity xil_defaultlib.sysgen_concat_5daf5c3329 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => mult_p_net,
    in1 => register1_q_net,
    y => concat1_y_net
  );
  fifo : entity xil_defaultlib.axis_morph_xlfifogen_u 
  generic map (
    core_name0 => "axis_morph_fifo_generator_i0",
    data_count_width => 11,
    data_width => 17,
    extra_registers => 0,
    has_ae => 0,
    has_af => 1,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => concat1_y_net,
    we => register_q_net(0),
    re => m_axis_tready_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net,
    full => fifo_full_net,
    af => fifo_af_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_7a6e4abf68 
  port map (
    clr => '0',
    ip(0) => fifo_af_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter4 : entity xil_defaultlib.sysgen_inverter_7a6e4abf68 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  tdata_slice : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 16,
    x_width => 17,
    y_width => 16
  )
  port map (
    x => fifo_dout_net,
    y => tdata_slice_y_net
  );
  tlast_slice : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => fifo_dout_net,
    y => tlast_slice_y_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT/Slave FIFO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_slave_fifo is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 24-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    tready_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_in : out std_logic_vector( 1-1 downto 0 );
    tdata_in : out std_logic_vector( 24-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_slave_fifo;
architecture structural of axis_morph_slave_fifo is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 24-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 24-1 downto 0 );
  signal inverter2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 25-1 downto 0 );
  signal clk_net : std_logic;
  signal fifo_empty_net : std_logic;
  signal fifo_dout_net : std_logic_vector( 25-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  tvalid_in <= logical_y_net;
  tdata_in <= tdata_slice_y_net;
  s_axis_tready <= inverter1_op_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  convert1_dout_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  inverter2_op_net_x0 <= tready_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_8956be43e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => convert1_dout_net,
    in1 => s_axis_tlast_net,
    y => concat_y_net
  );
  fifo : entity xil_defaultlib.axis_morph_xlfifogen_u 
  generic map (
    core_name0 => "axis_morph_fifo_generator_i1",
    data_count_width => 11,
    data_width => 25,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => concat_y_net,
    we => s_axis_tvalid_net(0),
    re => inverter2_op_net_x0(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net,
    full => fifo_full_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_7a6e4abf68 
  port map (
    clr => '0',
    ip(0) => fifo_full_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_7a6e4abf68 
  port map (
    clr => '0',
    ip(0) => fifo_empty_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_85bd7aafab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter2_op_net,
    d1 => inverter2_op_net_x0,
    y => logical_y_net
  );
  tdata_slice : entity xil_defaultlib.axis_morph_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 24,
    x_width => 25,
    y_width => 24
  )
  port map (
    x => fifo_dout_net,
    y => tdata_slice_y_net
  );
end structural;
-- Generated from Simulink block axis_morph/DUT
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_dut is
  port (
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    axi_lite_threshold : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_dut;
architecture structural of axis_morph_dut is 
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 24-1 downto 0 );
  signal thresh_reg_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal tdata_slice_y_net_x0 : std_logic_vector( 24-1 downto 0 );
  signal tdata_slice_y_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tvalid <= inverter4_op_net;
  m_axis_tdata <= convert_dout_net;
  m_axis_tlast <= tlast_slice_y_net;
  s_axis_tready <= inverter1_op_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  m_axis_tready_net <= m_axis_tready;
  thresh_reg_net <= axi_lite_threshold;
  clk_net <= clk_1;
  ce_net <= ce_1;
  algorithm : entity xil_defaultlib.axis_morph_algorithm 
  port map (
    s_axis_tvalid => logical_y_net,
    s_axis_tdata => tdata_slice_y_net_x0,
    axi_lite_threshold => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m_axis_tvalid => register_q_net,
    m_axis_tlast => register1_q_net,
    m_axis_tdata => mult_p_net
  );
  master_fifo : entity xil_defaultlib.axis_morph_master_fifo 
  port map (
    tvalid_out => register_q_net,
    tdata_out => mult_p_net,
    tlast_out => register1_q_net,
    m_axis_tready => m_axis_tready_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m_axis_tvalid => inverter4_op_net,
    m_axis_tdata => tdata_slice_y_net,
    m_axis_tlast => tlast_slice_y_net,
    tready_out => inverter2_op_net
  );
  slave_fifo : entity xil_defaultlib.axis_morph_slave_fifo 
  port map (
    s_axis_tvalid => s_axis_tvalid_net,
    s_axis_tdata => convert1_dout_net,
    s_axis_tlast => s_axis_tlast_net,
    tready_in => inverter2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_in => logical_y_net,
    tdata_in => tdata_slice_y_net_x0,
    s_axis_tready => inverter1_op_net
  );
  convert : entity xil_defaultlib.axis_morph_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 16,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => tdata_slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.axis_morph_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => s_axis_tdata_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.axis_morph_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => thresh_reg_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
end structural;
-- Generated from Simulink block axis_morph_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    thresh_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end axis_morph_struct;
architecture structural of axis_morph_struct is 
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal tlast_slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal thresh_reg_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tdata <= convert_dout_net;
  m_axis_tlast <= tlast_slice_y_net;
  m_axis_tready_net <= m_axis_tready;
  m_axis_tvalid <= inverter4_op_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tready <= inverter1_op_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  thresh_reg_net <= thresh_reg;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dut : entity xil_defaultlib.axis_morph_dut 
  port map (
    s_axis_tvalid => s_axis_tvalid_net,
    s_axis_tdata => s_axis_tdata_net,
    s_axis_tlast => s_axis_tlast_net,
    m_axis_tready => m_axis_tready_net,
    axi_lite_threshold => thresh_reg_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m_axis_tvalid => inverter4_op_net,
    m_axis_tdata => convert_dout_net,
    m_axis_tlast => tlast_slice_y_net,
    s_axis_tready => inverter1_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph_default_clock_driver is
  port (
    axis_morph_sysclk : in std_logic;
    axis_morph_sysce : in std_logic;
    axis_morph_sysclr : in std_logic;
    axis_morph_clk1 : out std_logic;
    axis_morph_ce1 : out std_logic
  );
end axis_morph_default_clock_driver;
architecture structural of axis_morph_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => axis_morph_sysclk,
    sysce => axis_morph_sysce,
    sysclr => axis_morph_sysclr,
    clk => axis_morph_clk1,
    ce => axis_morph_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_morph is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    axis_morph_aresetn : in std_logic;
    axis_morph_config_s_axi_awaddr : in std_logic;
    axis_morph_config_s_axi_awvalid : in std_logic;
    axis_morph_config_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    axis_morph_config_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    axis_morph_config_s_axi_wvalid : in std_logic;
    axis_morph_config_s_axi_bready : in std_logic;
    axis_morph_config_s_axi_araddr : in std_logic;
    axis_morph_config_s_axi_arvalid : in std_logic;
    axis_morph_config_s_axi_rready : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 );
    axis_morph_config_s_axi_awready : out std_logic;
    axis_morph_config_s_axi_wready : out std_logic;
    axis_morph_config_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axis_morph_config_s_axi_bvalid : out std_logic;
    axis_morph_config_s_axi_arready : out std_logic;
    axis_morph_config_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axis_morph_config_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axis_morph_config_s_axi_rvalid : out std_logic
  );
end axis_morph;
architecture structural of axis_morph is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "axis_morph,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00020288,addsub=10,cmult=3,concat=2,constant=8,convert=4,counter=2,delay=11,fifo=2,inv=4,logical=5,mult=10,register=5,relational=9,slice=7,}";
  signal clk_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
  signal thresh_reg : std_logic_vector( 32-1 downto 0 );
begin
  axis_morph_config_axi_lite_interface : entity xil_defaultlib.axis_morph_config_axi_lite_interface 
  port map (
    axis_morph_config_s_axi_awaddr => axis_morph_config_s_axi_awaddr,
    axis_morph_config_s_axi_awvalid => axis_morph_config_s_axi_awvalid,
    axis_morph_config_s_axi_wdata => axis_morph_config_s_axi_wdata,
    axis_morph_config_s_axi_wstrb => axis_morph_config_s_axi_wstrb,
    axis_morph_config_s_axi_wvalid => axis_morph_config_s_axi_wvalid,
    axis_morph_config_s_axi_bready => axis_morph_config_s_axi_bready,
    axis_morph_config_s_axi_araddr => axis_morph_config_s_axi_araddr,
    axis_morph_config_s_axi_arvalid => axis_morph_config_s_axi_arvalid,
    axis_morph_config_s_axi_rready => axis_morph_config_s_axi_rready,
    axis_morph_config_aresetn => axis_morph_aresetn,
    axis_morph_config_aclk => clk,
    thresh_reg => thresh_reg,
    axis_morph_config_s_axi_awready => axis_morph_config_s_axi_awready,
    axis_morph_config_s_axi_wready => axis_morph_config_s_axi_wready,
    axis_morph_config_s_axi_bresp => axis_morph_config_s_axi_bresp,
    axis_morph_config_s_axi_bvalid => axis_morph_config_s_axi_bvalid,
    axis_morph_config_s_axi_arready => axis_morph_config_s_axi_arready,
    axis_morph_config_s_axi_rdata => axis_morph_config_s_axi_rdata,
    axis_morph_config_s_axi_rresp => axis_morph_config_s_axi_rresp,
    axis_morph_config_s_axi_rvalid => axis_morph_config_s_axi_rvalid,
    clk => clk_net
  );
  axis_morph_default_clock_driver : entity xil_defaultlib.axis_morph_default_clock_driver 
  port map (
    axis_morph_sysclk => clk_net,
    axis_morph_sysce => '1',
    axis_morph_sysclr => '0',
    axis_morph_clk1 => clk_1_net,
    axis_morph_ce1 => ce_1_net
  );
  axis_morph_struct : entity xil_defaultlib.axis_morph_struct 
  port map (
    m_axis_tready => m_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tvalid => s_axis_tvalid,
    thresh_reg => thresh_reg,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    s_axis_tready => s_axis_tready
  );
end structural;
