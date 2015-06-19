with Ada.Text_IO; use Ada.Text_IO;

package body LibComplexLists is
begin
   procedure read(Db: in out List; File: File_Type, StudName: out Name;
                  Id: out IdNumber; C: out Character; D: out character) is
   begin
      --Open(infile, In_File, "file.txt");
      --Open(Outfile, Out_File, "outfile.txt");
      --while not End_Of_File loop
         Get(File, C);
         case C
            when 'p' | 'P' =>
              Get(File, d);
            when 'a' | 'A' =>
              Get(File, StudName);
              Get(File, Id);
            when 'd' | 'D' =>
              Get(File, D);
              case D
                 when '1' =>
                   Get(File, StudName);
                 when '2' =>
                    Get(File, Id);
                 when others =>
                    null;
              end case;
            when others =>
               null;
         end case;
      --end loop;
      --Close(Infile);
      --Close(Outfile);
   end Read;

   procedure Insert(studName: in Name; Id: in IdNumber; Db: in out List) is
      pointer: complexList;
      idPointer: complexList;
   begin
      pointer := ComplexList;
      while pointer != null loop
         if pointer.studName'val(1) > stud.studName'val(1) and
           pointer.next.studName'Val(1) < stud.studName'val(1) then
            db := new element'(stud.studName, stud.studId,
                               pointer.previousName, pointer.nextName,
                               pointer.previousId, pointer.NextId, null,
                               null);
         else
            pointer := pointer.nextName;
         end if;
      end loop;
      while idPointer != null loop
         if idPointer.id > stud.id and idPointer.nextId.id < stud.id then
            e.id := stud.id;
         else
            idPointer := idPointer.nextId;
         end if;
      end loop;;
   end insert;

   procedure delete(db: in out complexList; id: integer; studName: name) is
      pointer: complexList;
   begin
      pointer := db;
      if id != 000 then
         while pointer != null loop
            if id = pointer.id then
            end if;
         end loop;
      end if;
   end Delete;

   procedure Print(C: in Char; Db: in List) is
   begin
      case C
         when 'p' =>

