with Ada.Text_IO; use Ada.Text_IO;
with LongInt;
procedure Tester is
   Num1: LongInt;
   Num2: LongInt;
   Res: LongInt;
begin
   Put("Enter a number to add: ");
   Get(Num1);
   New_Line;
   Put("Enter another number to add: ");
   Get(Num2);
   LongInt.Add(Num1, Num2, res);
   New_Line;
   Put("The result is: ");
   LongInt.Print(Res);
end Tester;
