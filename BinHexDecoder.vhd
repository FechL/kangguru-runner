library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BcdSegDecoder is
    Port (	clk : in std_logic;
				bcd : in std_logic_vector(3 downto 0);
				segment7 : out std_logic_vector(6 downto 0));
end BcdSegDecoder;

architecture Behavioral of BcdSegDecoder is
begin

process (clk,bcd)
begin
	if (rising_edge(clk)) then
		case  bcd is
			when "0000"=> segment7 <="0000001";
			when "0001"=> segment7 <="1001111";
			when "0010"=> segment7 <="0010010";
			when "0011"=> segment7 <="0000110";
			when "0100"=> segment7 <="1001100";
			when "0101"=> segment7 <="0100100";
			when "0110"=> segment7 <="0100000";
			when "0111"=> segment7 <="0001111";
			when "1000"=> segment7 <="0000000";
			when "1001"=> segment7 <="0000100";

			when others=> segment7 <="1111111"; 
		end case;
	end if;
end process;
end Behavioral;