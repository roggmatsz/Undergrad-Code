with Ada.Text_IO;

package libLongInt is
   type LongInt is limited private;
   procedure Add(A: in LongInt; B: LongInt; Res: in out LongInt;
                 Carry: in Integer := 0);
   --|The add procedure. It takes two longInts and adds them. The result
   --|is placed on Res (short for "Result"). Carry is used to store carry
   --|digits from the sums.

   procedure Print(C: in LongInt);
   --|Print procedure. It is a recursive procedure that takes a longInt (C)
   --|outputs it into the screen.

   procedure Fetch(D: out LongInt);
   --|Used to enter numbers from the keyboard. It releases a longInt called "D"
   --|when its done.

   procedure Clear(N: in out LongInt);
   --|Faux-clears a longInt, used whenever a longInt variable is no longer
   --|needed. Takes in a modifiable longInt called "N."

private -- visible only to the body. The structure of longInt.
   type Digit;
   type LongInt is access Digit;
   type Digit is record
      Val: Integer;
      Ptr: LongInt;
   end record;
end libLongInt;
