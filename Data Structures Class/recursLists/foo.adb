--------------------------------------------------------------------------------
--  *  Prog name foo.adb
--  *  Project name 
--  *
--  *  Version 1.0
--  *  Last update 10/2/11
--  *
--  *  Created by Rogger Matamoros on 10/2/11.
--  *  Copyright (c) 2011 __MyCompanyName__.
--  *  All rights reserved.
--  *    or (keep only one line or write your own)
--  *  GNAT modified GNU General Public License
--  *
--------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

procedure foo is
	c: character;
	isEOL: boolean;
	e: integer;
	type arr is array(1..10) of character;
	d: arr;
begin
	e := 1;
	while (not End_Of_Line) loop
		get(c);
		d(e):= c;
		put(c);
		e:= e + 1;
		if End_Of_Line then
			new_line;
			for i in 1..10 loop
				put(d(i));
			end loop;
			new_line;
		end if;
	end loop;
end foo;
