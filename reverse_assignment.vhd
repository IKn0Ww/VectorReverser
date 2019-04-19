LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;
USE work.util.ALL;
ENTITY reverse_assignment IS
  PORT (i1 : IN  std_logic_vector(3 DOWNTO 0);
        o1 : OUT std_logic_vector(3 DOWNTO 0); -- o1(3)<=i1(0) etc.
        i2 : IN  std_logic_vector(6 TO 8);
        o2 : OUT std_logic_vector(2 TO 4);     -- o2(2)<=i2(8) etc.
        i3 : IN  std_logic_vector(1 TO 1);
        o3 : OUT std_logic_vector(2 TO 2)	     -- o3(2)<=i3(1)
        );
END reverse_assignment;

ARCHITECTURE test OF reverse_assignment IS

BEGIN
--  o1 <= reverse_1(i1); --For loop methode
--  o2 <= reverse_1(i2);
--  o3 <= reverse_1(i3);
  
  o1 <= reverse_2(i1);  --Recursive methode
  o2 <= reverse_2(i2);
  o3 <= reverse_2(i3);
END test;