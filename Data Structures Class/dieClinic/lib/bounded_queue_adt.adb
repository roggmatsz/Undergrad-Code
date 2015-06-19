package body Bounded_Queue_ADT is

   procedure Clear (The_Queue : in out Queue_Type) is
   begin
      The_Queue.Count := 0;
      The_Queue.Front := 1;
      The_Queue.Rear  := The_Queue.Max_Size;
   end Clear;

   function Is_Empty (The_Queue : in Queue_Type) return Boolean is
   begin
      return The_Queue.Count = 0;
   end Is_Empty;

   function Is_Full (The_Queue : in Queue_Type) return Boolean is
   begin
      return The_Queue.Count = The_Queue.Max_Size;
   end Is_Full;

  procedure Enqueue (The_Element  : in     Element_Type;
                     In_The_Queue : in out Queue_Type) is
   begin
      if Is_Full (In_The_Queue) then
        raise OVERFLOW;
      else
        In_The_Queue.Rear := In_The_Queue.Rear rem In_The_Queue.Max_Size + 1;
        In_The_Queue.Elements(In_The_Queue.Rear) := The_Element;
        In_The_Queue.Count := In_The_Queue.Count + 1;
      end if;
   end Enqueue;

   procedure Dequeue (The_Queue : in out Queue_Type) is
   begin
      if Is_Empty (The_Queue) then
        raise UNDERFLOW;
      else
        The_Queue.Front := The_Queue.Front rem The_Queue.Max_Size + 1;
        The_Queue.Count := The_Queue.Count - 1;
      end if;
   end Dequeue;

   function Front_Of (The_Queue : Queue_Type) return Element_Type is
   begin
      if Is_Empty (The_Queue) then
         raise UNDERFLOW;
      else
         return The_Queue.Elements(The_Queue.Front);
      end if;
   end Front_Of;

  function Length_Of (The_Queue : Queue_Type) return Natural is
  begin
    return The_Queue.Count;
  end Length_Of;

  procedure Copy (The_Queue    : in     Queue_Type;
                  To_The_Queue : in out Queue_Type) is
  begin
    To_The_Queue := The_Queue;
  end Copy;

  function Is_Equal (Left  : Queue_Type;
                     Right : Queue_Type) return Boolean is
    i : Positive;
  begin
    if Left.Count /= Right.Count then
      return false;
    else
      i := Left.Front;
      while i /= Left.Rear loop
        if Left.Elements(i) /= Right.Elements(i) then
          return false;
        end if;
        i := i + 1 mod Left.Max_Size;
      end loop;
      return Left.Elements(Left.Rear) = Right.Elements(Right.Rear);
    end if;
  end Is_Equal;

end Bounded_Queue_ADT;
