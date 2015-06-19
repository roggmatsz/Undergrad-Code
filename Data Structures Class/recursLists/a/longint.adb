with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body libLongInt is
   procedure Fetch(D: out LongInt) is
      C: Character;
      I: integer;
   begin
      while (not End_Of_Line) loop
         Get(C);
         I:= Character'Pos(C);
         if (I > 47) and (I < 58) then
            I := I - 48;
            D := new Digit'(I, D);
         else
            Put("Incorrect input type. Must be all digits.");
            exit;
         end if;
      end loop;
   end Fetch;

   procedure Clear (N: in out LongInt) is
   begin
      N:= null;
   end Clear;

   procedure Print(C: in LongInt) is
      I: Integer;
   begin
      if (C = null) then
         null;
      else
         I := C.Val;
         Print(C.Ptr);
         Put(I, 1);
      end if;
   end Print;

   procedure Add(A: in LongInt; B: LongInt; Res: in out LongInt;
                 Carry: in Integer := 0) is
   begin
      if A = null and B = null and (carry /= 0) then
         Res := new Digit'(Carry, Res);
      elsif (A = null) and (B /= null) then
         Res := new Digit'(B.Val + Carry, Res);
         if (Res.Val > 9) and (Res.Val < 20) then
            Res.Val := Res.Val - 10;
            Add(null, B.Ptr, Res.Ptr, 1);
         else
            Add(null, B.Ptr, Res.Ptr);
         end if;
      elsif (B = null) and (A /= null) then
         Res := new Digit'(A.Val + Carry, Res);
         if (Res.Val > 9) and (Res.Val < 20) then
            Res.Val := Res.Val - 10;
            Add(A.Ptr, null, Res.Ptr, 1);
         else
            Add(A.Ptr, null, Res.Ptr, Carry);
         end if;
      elsif A /= null and B /= null then
         Res := new Digit'(A.Val + B.Val + Carry, Res);
         if (Res.Val > 9) and (Res.Val < 20) then
            Res.Val := Res.Val - 10;
            Add(A.Ptr, B.Ptr, Res.Ptr, 1);
         else
            Add(A.Ptr, B.Ptr, Res.Ptr);
         end if;
      end if;
   end Add;

end libLongInt;
