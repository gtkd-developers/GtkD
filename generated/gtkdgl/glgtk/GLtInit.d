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


module glgtk.GLtInit;

private import glib.Str;
private import gtkglc.glgtk;
public  import gtkglc.glgtktypes;


/** */
public struct GLtInit
{

	/**
	 * Call this function before using any other GtkGLExt functions in your
	 * applications.  It will initialize everything needed to operate the library
	 * and parses some standard command line options. @argc and
	 * @argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 *
	 * <note><para>
	 * This function will terminate your program if it was unable to initialize
	 * the library for some reason. If you want your program to fall back to a
	 * textual interface you want to call gtk_gl_init_check() instead.
	 * </para></note>
	 *
	 * Params:
	 *     argc = Address of the <parameter>argc</parameter> parameter of your <function>main()</function> function. Changed if any arguments were handled.
	 *     argv = Address of the <parameter>argv</parameter> parameter of <function>main()</function>. Any parameters understood by gtk_gl_init() are stripped before return.
	 */
	public static void init(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);
		
		gtk_gl_init(&argc, &outargv);
		
		argv = Str.toStringArray(outargv, argc);
	}

	/**
	 * This function does the same work as gtk_gl_init() with only
	 * a single change: It does not terminate the program if the library can't be
	 * initialized. Instead it returns %FALSE on failure.
	 *
	 * This way the application can fall back to some other means of communication
	 * with the user - for example a curses or command line interface.
	 *
	 * Params:
	 *     argc = Address of the <parameter>argc</parameter> parameter of your <function>main()</function> function. Changed if any arguments were handled.
	 *     argv = Address of the <parameter>argv</parameter> parameter of <function>main()</function>. Any parameters understood by gtk_gl_init() are stripped before return.
	 *
	 * Return: %TRUE if the GUI has been successfully initialized, %FALSE otherwise.
	 */
	public static bool initCheck(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);
		
		auto p = gtk_gl_init_check(&argc, &outargv) != 0;
		
		argv = Str.toStringArray(outargv, argc);
		
		return p;
	}
}
