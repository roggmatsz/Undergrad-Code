package body Bounded_Stack_ADT is

   procedure Clear (The_Stack : in out Stack_Type) is
   begin
      The_Stack.Top := 0;
   end Clear;

   function Is_Empty (The_Stack : in Stack_Type) return Boolean is
   begin
      return The_Stack.Top = 0;
   end Is_Empty;

   function Is_Full (The_Stack : in Stack_Type) return Boolean is
   begin
      return The_Stack.Top = The_Stack.Max_Size;
   end Is_Full;

  procedure Push (The_Element  : in     Element_Type;
                  On_The_Stack : in out Stack_Type) is
   begin
      if Is_Full (On_The_Stack) then
         raise OVERFLOW;
      else
         On_The_Stack.Top := On_The_Stack.Top + 1;
         On_The_Stack.Elements (On_The_Stack.Top) := The_Element;
      end if;
   end Push;

   procedure Pop (The_Stack : in out Stack_Type) is
   begin
      if Is_Empty (The_Stack) then
         raise UNDERFLOW;
      else
         The_Stack.Top := The_Stack.Top - 1;
      end if;
   end Pop;

   function Top_Of (The_Stack : in Stack_Type) return Element_Type is
   begin
      if Is_Empty (The_Stack) then
         raise UNDERFLOW;
      else
         return The_Stack.Elements (The_Stack.Top);
      end if;
   end Top_Of;

  function Depth_Of (The_Stack : Stack_Type) return Natural is
  begin
    return The_Stack.Top;
  end Depth_Of;

  procedure Copy (The_Stack    : in     Stack_Type;
                  To_The_Stack : in out Stack_Type) is
  begin
    To_The_Stack := The_Stack;
  end Copy;

  function Is_Equal (Left  : Stack_Type;
                     Right : Stack_Type) return Boolean is
  begin
    if Left.Top /= Right.Top then
      return false;
    else
      for i in 1..Left.Top loop
        if Left.Elements(i) /= Right.Elements(i) then
          return false;
        end if;
      end loop;
      return true;
    end if;
  end Is_Equal;

end Bounded_Stack_ADT;
