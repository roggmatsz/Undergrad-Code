with Ada.Characters.Handling;

package LongInt is
   type LongInt is private;
   procedure Add(A: in LongInt; B: in LongInt; Res: in out longInt);
   procedure Print(C: in LongInt);
   procedure fetch(d: out longInt);
private
   type digit;
   type longInt is access digit;
   type LongInt is record
      Num: natural;
      Ptr: digit;
   end record;

