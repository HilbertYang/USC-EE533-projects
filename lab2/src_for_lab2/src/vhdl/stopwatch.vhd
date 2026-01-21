--------------------------------------------------------------------------------
-- Company:        Xilinx
--
-- Create Date:    12:23:44 01/27/05
-- Design Name:    stopwatch
-- Module Name:    stopwatch - stopwatch_arch
-- Project Name:   ISE in Depth Tutorial
-- Target Device:  xc3As700-4fg484
-- Tool versions:  ISE 9.1i
-- Description:
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all; 

entity stopwatch is
   port ( clk      : in    std_logic; 
          lap_load : in    std_logic; 
          mode     : in    std_logic; 
          reset    : in    std_logic; 
          strtstop : in    std_logic; 
          lcd_e    : out   std_logic; 
          lcd_rs   : out   std_logic; 
          lcd_rw   : out   std_logic; 
          sf_d     : out   std_logic_vector (7 downto 0));
   attribute LOC : string ;
   attribute LOC of sf_d : signal is "Y15,AB16,Y16,AA12,AB12,AB17,AB18,Y13";
   attribute LOC of clk : signal is "E12";
end stopwatch;

architecture stopwatch_arch of stopwatch is

  component debounce is
    port ( sig_in  : in std_logic;
           clk     : in std_logic;
           sig_out : out std_logic);
  end component;
  
   component lcd_control
      port ( rst       : in    std_logic; 
             clk       : in    std_logic; 
             lap       : in    std_logic; 
             control   : out   std_logic_vector (2 downto 0); 
             sf_d      : out   std_logic_vector (7 downto 0); 
             hundredths : in    std_logic_vector (3 downto 0); 
             tenths    : in    std_logic_vector (3 downto 0); 
             ones      : in    std_logic_vector (3 downto 0); 
             tens      : in    std_logic_vector (3 downto 0); 
             minutes   : in    std_logic_vector (3 downto 0); 
             mode      : in    std_logic);
   end component;
	
   component clk_div_262k
      port ( clk_in     : in    std_logic; 
             div_262144 : out   std_logic);
   end component;
	
   component STATMACH
      port ( CLK         : in    std_logic; 
             DCM_lock    : in    std_logic; 
             lap_load    : in    std_logic; 
             mode_in     : in    std_logic; 
             reset       : in    std_logic; 
             strtstop    : in    std_logic; 
             clken       : out   std_logic; 
             lap_trigger : out   std_logic; 
             load        : out   std_logic; 
             mode        : out   std_logic; 
             rst         : out   std_logic);
   end component;

   component time_cnt
      port ( ce        : in    std_logic; 
             clk       : in    std_logic; 
             clr       : in    std_logic; 
             hundredths : out   std_logic_vector (3 downto 0); 
             load      : in    std_logic; 
             minutes   : out   std_logic_vector (3 downto 0); 
             q         : in    std_logic_vector (19 downto 0); 
             sec_lsb   : out   std_logic_vector (3 downto 0); 
             sec_msb   : out   std_logic_vector (3 downto 0); 
             tenths    : out   std_logic_vector (3 downto 0); 
             up        : in    std_logic);
   end component;

---- Insert CORE Generator ROM component declaration here

---- Insert dcm1 component declaration here


   signal clk_en_int         : std_logic;
   signal clk_100            : std_logic;
   signal clk_26214k         : std_logic;
   signal count1             : std_logic_vector (3 downto 0);
   signal count2             : std_logic_vector (3 downto 0);
   signal count3             : std_logic_vector (3 downto 0);
   signal count4             : std_logic_vector (3 downto 0);
   signal count5             : std_logic_vector (3 downto 0);
   signal load               : std_logic;
   signal locked             : std_logic;
   signal mode_control       : std_logic;
   signal rst_int            : std_logic;
   signal strtstop_debounced : std_logic;
   signal lap_trig           : std_logic;
   signal ll_debounced       : std_logic;
   signal mode_debounced     : std_logic;
   signal preset_time        : std_logic_vector (19 downto 0);
   signal address		  : std_logic_vector (5 downto 0);	

begin

------ Insert CORE Generator ROM instantiation here

------ Insert dcm1 instantiation here
   

   clk_divider : clk_div_262k
      port map (clk_in=>clk_26214k,
                div_262144=>clk_100);
    
   lcd_cntrl_inst : lcd_control
      port map (clk=>clk_26214k,
                lap=>lap_trig,
                mode=>mode_control,
                rst=>rst_int,
					 minutes(3 downto 0)=>count5(3 downto 0),
                tens(3 downto 0)=>count4(3 downto 0),
                ones(3 downto 0)=>count3(3 downto 0),
					 tenths(3 downto 0)=>count2(3 downto 0),
					 hundredths(3 downto 0)=>count1(3 downto 0),
                control(2)=>lcd_rs,
                control(1)=>lcd_rw,
                control(0)=>lcd_e,
                sf_d(7 downto 0)=>sf_d(7 downto 0));
   
   mode_debounce : debounce
      port map (clk=>clk_26214k,
                sig_in=>mode,
                sig_out=>mode_debounced);
   
   strtstop_debounce : debounce
      port map (clk=>clk_26214k,
                sig_in=>strtstop,
                sig_out=>strtstop_debounced);
					 
   lap_load_debounce : debounce
      port map (clk=>clk_26214k,
                sig_in=>lap_load,
                sig_out=>ll_debounced);					 
   
   timer_inst : time_cnt
      port map (ce=>clk_en_int,
                clk=>clk_100,
                clr=>rst_int,
                load=>load,
                q(19 downto 0)=>preset_time(19 downto 0),
                up=>mode_control,
                hundredths(3 downto 0)=>count1(3 downto 0),
                tenths(3 downto 0)=>count2(3 downto 0),
                sec_lsb(3 downto 0)=>count3(3 downto 0),
                sec_msb(3 downto 0)=>count4(3 downto 0),
                minutes(3 downto 0)=>count5(3 downto 0));
   
   timer_state : statmach
      port map (clk=>clk_100,
                dcm_lock=>locked,
                lap_load=>ll_debounced,
                mode_in=>mode_debounced,
                reset=>reset,
                strtstop=>strtstop_debounced,
                clken=>clk_en_int,
                lap_trigger=>lap_trig,
                load=>load,
                mode=>mode_control,
                rst=>rst_int);
					 
process (clk_100, mode_control)--, load)
  begin
    if (mode_control = '1') then
      address <= (others => '0');
    elsif (clk_100'event and clk_100 = '1') then
      if (load = '1') then
        if (address = "111111") then
          address <= "000000";
        else
          address <= address + 1;
        end if;
      end if;
    end if;
end process;				 

end stopwatch_arch;
