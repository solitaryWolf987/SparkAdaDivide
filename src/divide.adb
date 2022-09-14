pragma SPARK_Mode (On);
with AS_IO_Wrapper;  use AS_IO_Wrapper;

package body divide is

   procedure process_p (B : in random_type; A : out random_type) is
      placeholder : Integer;
   begin
      A.first := 0;
      placeholder := B.first;
      loop
         exit when placeholder < B.second;
         placeholder := placeholder - B.second;
         A.first := A.first + 1;
         A.second := placeholder;
         exit when placeholder < B.second;
         
      end loop;
      
   end process_p;
   

end divide;
