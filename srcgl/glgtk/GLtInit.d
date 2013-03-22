/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtkglext-gtkglinit.html
 * outPack = glgtk
 * outFile = GLtInit
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLtInit
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_gl_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgtk.GLtInit;

public  import gtkglc.glgtktypes;

private import gtkglc.glgtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 */
public class GLtInit
{
	
	/**
	 */
	
	/**
	 * Call this function before using any other GtkGLExt functions in your
	 * applications. It will initialize everything needed to operate the library
	 * and parses some standard command line options. argc and
	 * argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 * Note
	 * This function will terminate your program if it was unable to initialize
	 * the library for some reason. If you want your program to fall back to a
	 * textual interface you want to call gtk_gl_init_check() instead.
	 * Params:
	 * argv = Address of the argv parameter of
	 * main(). Any parameters understood by
	 * gtk_gl_init() are stripped before return.
	 */
	public static void init(ref string[] argv)
	{
		// void gtk_gl_init (int *argc,  char ***argv);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		gtk_gl_init(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
	}
	
	/**
	 * This function does the same work as gtk_gl_init() with only
	 * a single change: It does not terminate the program if the library can't be
	 * initialized. Instead it returns FALSE on failure.
	 * This way the application can fall back to some other means of communication
	 * with the user - for example a curses or command line interface.
	 * Params:
	 * argv = Address of the argv parameter of
	 * main(). Any parameters understood by
	 * gtk_gl_init() are stripped before return.
	 * Returns: TRUE if the GUI has been successfully initialized, FALSE otherwise.
	 */
	public static int initCheck(ref string[] argv)
	{
		// gboolean gtk_gl_init_check (int *argc,  char ***argv);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		auto p = gtk_gl_init_check(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
}
