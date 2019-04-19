LIBRARY ieee; 
USE ieee.std_logic_1164.all;

package util is
function reverse_1 (inp_vector: in std_logic_vector)
  return std_logic_vector;

function reverse_2 (inp_vector: in std_logic_vector)
  return std_logic_vector;
	 
end package util;
 
package body util is
	function reverse_1 (inp_vector: in std_logic_vector) return std_logic_vector is
	  variable result: std_logic_vector(inp_vector'reverse_range);
	begin
	  for i in inp_vector'range loop
		 result(i) := inp_vector(i);

	  end loop;
    return result;
    
	end function;

  function reverse_2 (inp_vector: in std_logic_vector) return std_logic_vector is
    variable result: std_logic_vector(inp_vector'range);
    begin
	   result := inp_vector;

      if result'length > 3 then 
		  result(result'low)  := inp_vector(inp_vector'high);
        result(result'high) := inp_vector(inp_vector'low);
		  
        if inp_vector'ascending then
          return (result(result'low) & reverse_2(result (result'low +1 to result'high - 1)) & result(result'high));
				
		  else
          return (result(result'high) & reverse_2(result (result'high -1 downto result'low + 1)) & result(result'low));
				
          end if;
		elsif result'length = 1 then
			return result;
			
		else
        result(result'low)  := inp_vector(inp_vector'high);
        result(result'high) := inp_vector(inp_vector'low);
		  return result;
		  
      end if;
  end function; 
end package body util;
