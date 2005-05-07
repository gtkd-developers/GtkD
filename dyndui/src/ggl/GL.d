/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ggl.GL;

private import ggl.Types;
private import lib.gdkglext;

/+
private:
extern(C)
{
	void gdk_gl_init(int * argc, char * **argv);
	gboolean gdk_gl_init_check(int * argc, char * **argv);
	gboolean gdk_gl_parse_args(int * argc, char * **argv);
	gboolean gdk_gl_query_extension();
	gboolean gdk_gl_query_extension_for_display(GdkDisplay * display);
	gboolean gdk_gl_query_version(int * major, int * minor);
	gboolean gdk_gl_query_version_for_display(GdkDisplay * display, int * major, int * minor);
	gboolean gdk_gl_query_gl_extension(char * extension);
	//GdkGLProc gdk_gl_get_proc_address(char * proc_name);
};
+/
/**
 * Library initialization functions<br>
 * Functions to query OpenGL support information<br>
 * Variables and macros to check the GdkGLExt version.
 */
public:
class GL
{

	this()
	{
	}

	public:

	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL GL";
	}

	//static void init(int * argc, char * **argv)
	//{
	//	gdk_gl_init(argc, argv);
	//}
	
	static void init(char[][] args)
	{

		int argc = args.length;
		
		// Walter version
		char** argv = new char*[args.length];
		int i = 0;
		foreach (char[] p; args)
		{
			argv[i++] = cast(char*)p;
		}
		
		gdk_gl_init(&argc,&argv);
		
	}

	//gboolean gdk_gl_init_check(int * argc, char * **argv);
	//gboolean gdk_gl_parse_args(int * argc, char * **argv);
	//gboolean gdk_gl_query_extension();
	//gboolean gdk_gl_query_extension_for_display(GdkDisplay * display);
	//gboolean gdk_gl_query_version(int * major, int * minor);
	//gboolean gdk_gl_query_version_for_display(GdkDisplay * display, int * major, int * minor);
	//gboolean gdk_gl_query_gl_extension(char * extension);

}
