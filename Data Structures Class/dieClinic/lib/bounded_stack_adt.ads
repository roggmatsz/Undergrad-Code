generic
  type Element_Type is private;
package Bounded_Stack_ADT is

  type Stack_Type (Max_Size : Positive) is limited private;

  UNDERFLOW : exception;
  OVERFLOW  : exception;

  procedure Clear (The_Stack : in out Stack_Type);
  -- This procedure sets the The_Stack to empty
  -- Preconditions:  None
  -- Postconditions: The_Stack is empty

  function Is_Empty (The_Stack : Stack_Type) return Boolean;
  -- Tests whether or not The_Stack is empty
  -- Preconditions:  None
  -- Postconditions: Empty = (The_Stack is empty)

  function Is_Full (The_Stack : Stack_Type) return Boolean;
  -- Tests whether or not The_Stack is full (no more elements can be pushed on it)
  -- Preconditions:  None
  -- Postconditions: Full = (The_Stack is full)

  procedure Push (The_Element  : in     Element_Type;
                  On_The_Stack : in out Stack_Type);
  -- Adds New_Element to the top of On_The_Stack
  -- Preconditions:  None
  -- Postconditions: On_The_Stack = original On_The_Stack with New_Element added on top
  -- Exceptions:     OVERFLOW is raised if On_The_Stack is full.
  --                 On_The_Stack is unchanged

  procedure Pop (The_Stack : in out Stack_Type);
  -- Removes the top element from The_Stack
  -- Preconditions:  None
  -- Postconditions: The_Stack = original The_Stack with the top element removed.
  -- Exceptions:     UNDERFLOW  Raised if the The_Stack is empty.
  --                 The_Stack remains empty.

  function  Top_Of (The_Stack : Stack_Type) return Element_Type;
  -- Returns the top element of The_Stack
  -- Preconditions:  None
  -- Postconditions: The_Stack is unchanged
  -- Exceptions:     UNDERFLOW  Raised when The_Stack is empty.
  --                 Return value undefined.

  function Depth_Of (The_Stack : Stack_Type) return Natural;
  -- Returns the number of elements on The_Stack
  -- Preconditions:  None
  -- Postconditions: The_Stack is unchanged
  -- Exceptions:     None

  procedure Copy (The_Stack    : in     Stack_Type;
                  To_The_Stack : in out Stack_Type);
  -- Makes a copy of The_Stack
  -- Preconditions:  None
  -- Postconditions: To_The_Stack is a copy of The_Stack
  -- Exceptions:     None

  function Is_Equal (Left  : Stack_Type;
                     Right : Stack_Type) return Boolean;
  -- Test whether or not the two stacks have the same elements in the same order.
  -- Preconditions:  None
  -- Postconditions: Is_Equal = (Left = Right)
  -- Exceptions:     None

private
  type Stack_Array is array (Positive range <>) of Element_Type;
  type Stack_type (Max_Size : Positive) is
    record
      Top      : Natural := 0;
      Elements : Stack_Array (1..Max_Size);
    end record;
end Bounded_Stack_ADT;
