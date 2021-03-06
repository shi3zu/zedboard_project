-- VIO Wrapper HDL file generated by VIO's TCL generator

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity chipscope_vio is
  generic (
    C_FAMILY           : string   := "virtex2" ;
    C_DEVICE           : string   := "7z020";
    C_PACKAGE          : string   := "clg484";
    C_SPEEDGRADE       : string   := "-1";


    C_ASYNC_INPUT_ENABLE : integer := 0;
    C_ASYNC_OUTPUT_ENABLE : integer := 1;
    C_SYNC_INPUT_ENABLE : integer := 1;
    C_SYNC_OUTPUT_ENABLE : integer := 1;

    C_ASYNC_INPUT_WIDTH : integer := 8;
    C_ASYNC_OUTPUT_WIDTH : integer := 1;
    C_SYNC_INPUT_WIDTH : integer := 9;
    C_SYNC_OUTPUT_WIDTH : integer := 16;

    C_RISING_CLOCK_EDGE : integer := 1
  );
  port (
    chipscope_icon_control : in STD_LOGIC_VECTOR ( 35 downto 0 ); 
    async_in : in STD_LOGIC_VECTOR(C_ASYNC_INPUT_WIDTH-1 downto 0);
    async_out : out STD_LOGIC_VECTOR(C_ASYNC_OUTPUT_WIDTH-1 downto 0);
    clk : in STD_LOGIC;
    sync_in : in STD_LOGIC_VECTOR(C_SYNC_INPUT_WIDTH-1 downto 0);
    sync_out : out STD_LOGIC_VECTOR(C_SYNC_OUTPUT_WIDTH-1 downto 0)
  );
end chipscope_vio;

architecture STRUCTURE of chipscope_vio is

  component chipscope_vio_0 is
    generic (
        C_ASYNC_INPUT_WIDTH : integer := 0;
        C_ASYNC_OUTPUT_WIDTH : integer := 0;
        C_SYNC_INPUT_WIDTH : integer := 0;
        C_SYNC_OUTPUT_WIDTH : integer := 0
    ) ;
    port (

async_out : out STD_LOGIC_VECTOR(C_ASYNC_OUTPUT_WIDTH-1 downto 0);
sync_in : in STD_LOGIC_VECTOR(C_SYNC_INPUT_WIDTH-1 downto 0);
sync_out : out STD_LOGIC_VECTOR(C_SYNC_OUTPUT_WIDTH-1 downto 0);
clk : in STD_LOGIC;

    control : in STD_LOGIC_VECTOR(35 downto 0)
    );
  end component chipscope_vio_0;

begin

  i_chipscope_vio_0 : chipscope_vio_0
      generic map (
        C_ASYNC_INPUT_WIDTH   => C_ASYNC_INPUT_WIDTH,
        C_ASYNC_OUTPUT_WIDTH  => C_ASYNC_OUTPUT_WIDTH,
        C_SYNC_INPUT_WIDTH    => C_SYNC_INPUT_WIDTH,
        C_SYNC_OUTPUT_WIDTH   => C_SYNC_OUTPUT_WIDTH
      )
      port map (

async_out => async_out,
sync_in => sync_in,
sync_out => sync_out,
clk => clk,

       control => chipscope_icon_control
      );



end architecture STRUCTURE;

