pragma SPARK_Mode (On);

with AS_IO_Wrapper;  use AS_IO_Wrapper;
with divide; use divide;

procedure Main is
   dividend, divisor : Integer;
   A, B : random_type;

begin
   loop
      AS_Put("Enter a number between 0 and 999: ");
      AS_Get(dividend);

      exit when dividend in 0 .. 999;
      AS_Put("Enter a number between 0 and 999 ");
   end loop;
   loop
      AS_Put("Enter a number between 1 and 10: ");
      AS_Get(divisor);

      exit when divisor in 1 .. 10;
      AS_Put("Enter a number between 1 and 10 ");
      end loop;


   B := random_type'(first => dividend, second => divisor);


   process_p(B, A);
   AS_Put_Line("Quotient:");
   AS_Put(A.first);
   AS_Put_Line;
   AS_Put_Line("Remainder:");
   AS_Put(A.second);


   --continues/ try again?



end Main;
