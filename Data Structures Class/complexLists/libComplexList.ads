with Ada.Text_IO; use Ada.Text_IO;

package LibComplexLists is
   type Element;
   type List is access Element;
   subtype Name is String (1..15);
   subtype IdNumber is Positive range 100..999;
	--Arbitrary values. Nothing to see here, move along.
   procedure Read(Db: in out List; StudName: out Name; Id: out IdNumber;
                  C: out Character; D: out Character);
	-- Uses child package enumeration to read data values from file.txt
	-- Stores them in the list access variable.
   procedure Insert(StudName: in Name; Id: in IdNumber; Db: in out  List);
	-- Creates new element objects with id and name provided, sorts them by
	-- both name and later id number in two respective loops.
	procedure delete(db: in out complexList; id: integer; studName: name;
						  c: character)
	-- takes in a char variable to determine the type of delete (by name
	-- or by id), finds it by duplicating the main db list, and then 
	-- rebuilds the list.
   procedure Print(C: in Char; Db: in List);
	-- Takes a character to determine what type of print is needed (by name
	-- or by id number), prints it by duplicating the main db and printing 
	-- by destroying the duplicate into a text file called 'outfile.txt'
private -- TOP SECRET
   type Element is record
      StudName: Name;
      Id: idNumber;
      PrevName: List;
      NextName: List;
      PrevId: List;
      NextId: List;
      start: list;
      endL: list;
   end record;
end LibComplexLists;
