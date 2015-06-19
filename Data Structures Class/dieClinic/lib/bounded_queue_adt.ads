generic
  type Element_Type is private;
package Bounded_Queue_ADT is

  type Queue_Type (Max_Size : Positive) is limited private;

  UNDERFLOW : exception;
  OVERFLOW  : exception;

  procedure Clear (The_Queue : in out Queue_Type);
  -- This procedure sets The_Queue to empty
  -- Preconditions:     None
  -- Postconditions:    The_Queue is empty

  function Is_Empty (The_Queue : Queue_Type) return Boolean;
  -- Tess whether or not The_Queue is empty
  -- Preconditions:     None
  -- Postconditions:    Empty = (The_Queue is empty)

  function Is_Full (The_Queue : Queue_Type) return Boolean;
  -- Tests whether or not Queue is full (no more elements can be enqueued on it)
  -- Preconditions:     None
  -- Postconditions:    Full = (The_Queue is full)

  procedure Enqueue (The_Element  : in     Element_Type;
                     In_The_Queue : in out Queue_Type);
  -- Adds New_Element to the rear of In_The_Queue
  -- Preconditions:     None
  -- Postconditions:    In_The_Queue = original In_The_Queue with New_Element added to rear
  -- Exceptions:        OVERFLOW is raised if In_The_Queue is full.
  --                    In_The_Queue is not changed

  procedure Dequeue (The_Queue : in out Queue_Type);
  -- Removes the first element from The_Queue
  -- Preconditions:     None
  -- Postconditions:    The_Queue = original The_Queue with the front element removed.
  -- Exceptions:        UNDERFLOW is raised if the The_Queue is empty.
  --                    The_Queue remains empty.

  function Front_Of (The_Queue : Queue_Type) return Element_Type;
  -- Returns the front element of The_Queue
  -- Preconditions:     None
  -- Postconditions:    The_Queue is unchanged
  -- Exceptions:        UNDERFLOW  Raised when The_Queue is empty.
  --                               Return value undefined.

 function Length_Of (The_Queue : Queue_Type) return Natural;
 -- Returns the number of elements in The_Queue
 -- Preconditions:  None
 -- Postconditions: The_Queue is unchanged
 -- Exceptions:     None

 procedure Copy (The_Queue    : in     Queue_Type;
                 To_The_Queue : in out Queue_Type);
 -- Makes a copy of The_Queue
 -- Preconditions:  None
 -- Postconditions: To_The_Queue is a copy of The_Queue
 -- Exceptions:     None

 function Is_Equal (Left  : Queue_Type;
                    Right : Queue_Type) return Boolean;
 -- Test whether or not the two queues have the same elements in the same order.
 -- Preconditions:  None
 -- Postconditions: Is_Equal = (Left = Right)
 -- Exceptions:     None

private
  type Queue_Array is array (Positive range <>) of Element_Type;
  type Queue_Type (Max_Size : Positive) is
    record
      Count    : Natural  := 0;               -- Number of items in the queue
      Front    : Positive := 1;               -- Pointer to first item in the queue
      Rear     : Positive := Max_Size;        -- Pointer to last item in the queue
      Elements : Queue_Array (1..Max_Size);   -- The element array
    end record;
end Bounded_Queue_ADT;
