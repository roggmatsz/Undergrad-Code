with Ada.Text_IO;

package libLongInt is
   type LongInt is limited private;
   procedure Add(A: in LongInt; B: LongInt; Res: in out LongInt;
                 Carry: in Integer := 0);
   procedure Print(C: in LongInt);
   procedure Fetch(D: out LongInt);
   procedure Clear(N: in out LongInt);
   procedure Length(A: in LongInt; Counter: in out Integer);
private
   type Digit;
   type LongInt is access Digit;
   type Digit is record
      Val: Integer;
      Ptr: LongInt;
   end record;
end libLongInt;
