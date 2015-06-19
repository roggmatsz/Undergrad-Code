with Ada.Text_IO; use Ada.Text_IO;
with LibComplexList; use LibComplexList;

procedure Test is
   C, d: Char;
   Db: List;
   File: File_Type;
   StudName: Name;
   package Name_IO is new Ada.Text_IO.Enumeration_IO(Name); use Name_IO;
   package Id_IO is new Ada.Text_IO.Enumeration_IO(Id); use Id_IO;
begin
   Db := new Element'("aaaaaaaaaaaaaaa", 000, null, null, null, null,
                      null, null);
   Db := new Element'("zzzzzzzzzzzzzzz", 999, null, null, null, null,
                      Db, null);
   Db.Start.EndL := Db;
   Open(File, File_Type, "file.txt");
   Open(Outfile, Out_File, "outfile.txt");
   while not End_Of_File loop
      Read(Db, StudName, Id, C, D);
      case C is
         when 'p' | 'P' =>
           Print(D, Db);
           if D = '1' then
              Put("print in name order");
              New_Line(2);
           else
              Put("print in id order");
              New_Line(2);
           end if;
         when 'a' | 'A' =>
            Insert(StudName, Id, Db);
            Put("insert ");
            Put(StudName);
            Put(", id: ");
            Put(Id);
            New_Line(2);
         when 'd' | 'D' =>
            Delete(StudName, Id, Db, D);
            Put("delete");
            Put(StudName);
            Put(", id: ");
            Put(Id);
            New_Line(2);
         when others =>
            null;
      end case;
   end loop;
   Close(File);
   Close(Outfile);
end Test;
