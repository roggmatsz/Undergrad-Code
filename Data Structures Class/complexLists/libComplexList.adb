with Ada.Text_IO; use Ada.Text_IO;

package body LibComplexLists is
begin
   procedure read(Db: in out List; studName: name; id: in IdNumber; 
					   c: out character; d: out character) is
		package Name_IO is new Ada.Text_IO.Enumeration_IO(Name); use Name_IO;
		package Id_IO is new Ada.Text_IO.Enumeration_IO(Id); use Id_IO;
	begin
      while not End_Of_File loop
         Get(File, C);
         case C
            when 'p' | 'P' =>
              Get(File, d);
            when 'a' | 'A' =>
              Get(File, Stud);
              Get(File, Id);
              Insert(Stud, Id, Db);
            when 'd' | 'D' =>
              Get(File, D);
					case d is
						when '1' =>
							Get(File, StudName);
						when '2' =>
							get(file, id);
						when others =>
							null;
					end case;
				 when others =>
					null;
          end case;
      end loop;
   end Read;

   procedure Insert(studName: in Name; Id: in IdNumber; Db: in out List) is
      pointer: complexList;
      idPointer: complexList;
   begin
      pointer := list;
		while pointer != null loop
			if pointer.studName'val(1) > stud.studName'val(1) and
				pointer.next.studName'Val(1) < stud.studName'val(1) then
				db := new element'(stud.studName, stud.studId,
										 pointer, pointer.nextName,
										 null, null, null, null);
			else
				pointer := pointer.nextName;
			end if;
		end loop;
		while idPointer.nextId != null loop
			if id > idPointer.id and id < idPointer.nextId.id then
				db.nextId := idPointer.nextId;
				db.prevId := idPointer;
			else
				idPointer := idPointer.nextId;
			end if;
		end loop;
   end insert;

   procedure delete(db: in out complexList; id: integer; studName: name;
						  c: character) is
      newDb: list;
   begin
		newDb := db;
		db := null;
		case c is
			when '1' =>
				while newDb != null loop
					if studName = newDb.studName then
						newDb := newDb.nextName;
					end if;
					Db := new element'(newDb.studName, newDb.id, newDb.prevName,
											 newDb.nextName, newDb.nextId,
											 db.prevId, null, null);
					newDb := newDb.nextName;
				end loop;
			when '2' =>
				while newDb != null loop
					if id = newDb.id then
						newDb.nextId;
					end if;
					Db := new element'(newDb.studName, newDb.id, newDb.prevName,
											 newDb.nextName, newDb.nextId, 
											 newDb.prevId, null, null);
					newDb := newDb.nextId;
				end loop;
			when others =>
				null;
		end case;
	end delete;
	
	procedure print(c: in character; db: in list) is
		db2: list;
	begin
		db2 := db;
		case c is
			when '1' =>
				while db2 != null loop
					put(outfile, "Name: ");
					put(outfile, db2.studName);
					put(outfile, "ID: ");
					put(outfile, db2.id);
					new_line(outfile);
					db2 := db2.nextName;
				end loop;
			when '2' =>
				while db2 != null loop
					put(outfile, "ID: ");
					put(outfile, db2.id);
					put(outfile, " ");
					put(outfile, "Name: ");
					put(outfile, db2.studName);
					new_line(outfile);
					db2 := db2.nextId;
				end loop;
			when others =>
				null;
		end case;
	end print;			
end libcomplexlists;