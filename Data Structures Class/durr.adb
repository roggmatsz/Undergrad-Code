with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Durr is
   type Node;
   type Lista is access Node;
   type Node is record
      Val: Integer;
      Ptr: Lista;
   end record;
   X: Integer;
   List: Lista;
   procedure Insert(X : in Integer; List: in out Lista) is
   begin
      if List = null or else X < List.Val then
         List := new Node'(X, List);
      else
         Insert(X, List.Ptr);
      end if;
   end Insert;

   procedure Print(List: in Lista) is
   begin
      if list /= null then
         Put(List.Val, 0);
         Print(List.Ptr);
      end if;
   end Print;

begin
   Put("Enter a list of numbers. Enter 's' to stop");
   New_Line(2);
   loop
      begin
         Put("number: :");
         Get(X);
         New_Line;
         exception
         when Data_Error =>
            exit;
      end;
      Insert(X, List);
   end loop;
   Put("List: ");
   Print(List);
end Durr;



