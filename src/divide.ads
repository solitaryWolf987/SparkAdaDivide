pragma SPARK_Mode (On);
package divide is
   
   type random_type is
      record
         first : Integer;
         second : Integer;
      end record;
   
   
   procedure process_p(B : in random_type; A : out random_type) with
     Depends => (A => B),
     Pre => (B.first in 0 .. 999 and B.second in 1 .. 10),
     Post => ((B.first = (A.first * B.second) + A.second) or 
                (B.second in 0 .. B.second) or (B.first = 0 and A.first = 0));
   
   

end divide;
