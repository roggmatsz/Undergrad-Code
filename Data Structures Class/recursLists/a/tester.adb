with libLongInt;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Tester is
   long1: libLongInt.LongInt;
   long2: libLongint.LongInt;
   I : Integer;
   results: libLongInt.LongInt;
begin
   Put("enter a number: ");
   libLongInt.Fetch(long1);
   libLongInt.Print(long1);
   New_Line;
   Skip_Line;
   Put("Enter another number: ");
   libLongInt.Fetch(long2);
   libLongInt.Print(long2);
   New_Line;
   libLongInt.Add(long1, Long2, results, I);
   Put("The result is: ");
   libLongInt.Print(results);
   New_Line;
end Tester;

