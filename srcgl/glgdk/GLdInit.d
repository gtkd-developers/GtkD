/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtkglext-gdkglinit.html
 * outPack = glgdk
 * outFile = GLdInit
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLdInit
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLdInit;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;






/**
 * Description
 */
public class GLdInit
{
	
	/**
	 */
	
	/**
	 * Call this function before using any other GdkGLExt functions in your
	 * applications. It will initialize everything needed to operate the library
	 * and parses some standard command line options. argc and
	 * argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 * Note
	 * This function will terminate your program if it was unable to initialize
	 * the library for some reason. If you want your program to fall back to a
	 * textual interface you want to call gdk_gl_init_check() instead.
	 * Params:
	 * argc =  Address of the argc parameter of your
	 *  main() function. Changed if any arguments
	 *  were handled.
	 * argv =  Address of the argv parameter of
	 *  main(). Any parameters understood by
	 *  gdk_gl_init() are stripped before return.
	 */
	public static void init(int* argc, char*** argv)
	{
		// void gdk_gl_init (int *argc,  char ***argv);
		gdk_gl_init(argc, argv);
	}
	
	/**
	 * This function does the same work as gdk_gl_init() with only
	 * a single change: It does not terminate the program if the library can't be
	 * initialized. Instead it returns FALSE on failure.
	 * This way the application can fall back to some other means of communication
	 * with the user - for example a curses or command line interface.
	 * Params:
	 * argc =  Address of the argc parameter of your
	 *  main() function. Changed if any arguments
	 *  were handled.
	 * argv =  Address of the argv parameter of
	 *  main(). Any parameters understood by
	 *  gdk_gl_init() are stripped before return.
	 * Returns: TRUE if the GUI has been successfully initialized,  FALSE otherwise.
	 */
	public static int initCheck(int* argc, char*** argv)
	{
		// gboolean gdk_gl_init_check (int *argc,  char ***argv);
		return gdk_gl_init_check(argc, argv);
	}
	
	/**
	 * Parses command line arguments, and initializes global
	 * attributes of GdkGLExt.
	 * Any arguments used by GdkGLExt are removed from the array and
	 * argc and argv are updated accordingly.
	 * You shouldn't call this function explicitely if you are using
	 * gdk_gl_init(), or gdk_gl_init_check().
	 * Params:
	 * argc =  the number of command line arguments.
	 * argv =  the array of command line arguments.
	 * Returns: TRUE if initialization succeeded, otherwise FALSE.<<PartII.GdkGLExt API ReferenceQuery>>
	 */
	public static int parseArgs(int* argc, char*** argv)
	{
		// gboolean gdk_gl_parse_args (int *argc,  char ***argv);
		return gdk_gl_parse_args(argc, argv);
	}
}
