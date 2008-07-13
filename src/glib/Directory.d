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
 * inFile  = 
 * outPack = glib
 * outFile = Directory
 * strct   = GDir
 * realStrct=
 * ctorStrct=
 * clss    = Directory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dir_
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

module glib.Directory;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * There is a group of functions which wrap the common POSIX functions
 * dealing with filenames (g_open(), g_rename(), g_mkdir(), g_stat(),
 * g_unlink(), g_remove(), g_fopen(), g_freopen()). The point of these
 * wrappers is to make it possible to handle file names with any Unicode
 * characters in them on Windows without having to use ifdefs and the
 * wide character API in the application code.
 * The pathname argument should be in the GLib file name encoding. On
 * POSIX this is the actual on-disk encoding which might correspond to
 * the locale settings of the process (or the
 * G_FILENAME_ENCODING environment variable), or not.
 * On Windows the GLib file name encoding is UTF-8. Note that the
 * Microsoft C library does not use UTF-8, but has separate APIs for
 * current system code page and wide characters (UTF-16). The GLib
 * wrappers call the wide character API if present (on modern Windows
 * systems), otherwise convert to/from the system code page.
 * Another group of functions allows to open and read directories
 * in the GLib file name encoding. These are g_dir_open(),
 * g_dir_read_name(), g_dir_rewind(), g_dir_close().
 */
public class Directory
{
	
	/** the main Gtk struct */
	protected GDir* gDir;
	
	
	public GDir* getDirectoryStruct()
	{
		return gDir;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDir;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDir* gDir)
	{
		if(gDir is null)
		{
			this = null;
			return;
		}
		this.gDir = gDir;
	}
	
	/**
	 */
	
	/**
	 * Opens a directory for reading. The names of the files in the
	 * directory can then be retrieved using g_dir_read_name().
	 * Params:
	 * path =  the path to the directory you are interested in. On Unix
	 *  in the on-disk encoding. On Windows in UTF-8
	 * flags =  Currently must be set to 0. Reserved for future use.
	 * error =  return location for a GError, or NULL.
	 *  If non-NULL, an error will be set if and only if
	 *  g_dir_open() fails.
	 * Returns: a newly allocated GDir on success, NULL on failure. If non-NULL, you must free the result with g_dir_close() when you are finished with it.
	 */
	public static GDir* open(string path, uint flags, GError** error)
	{
		// GDir* g_dir_open (const gchar *path,  guint flags,  GError **error);
		return g_dir_open(Str.toStringz(path), flags, error);
	}
	
	/**
	 * Retrieves the name of the next entry in the directory. The '.' and
	 * '..' entries are omitted. On Windows, the returned name is in
	 * UTF-8. On Unix, it is in the on-disk encoding.
	 * Returns: The entry's name or NULL if there are no  more entries. The return value is owned by GLib and must not be modified or freed.
	 */
	public string readName()
	{
		// const gchar* g_dir_read_name (GDir *dir);
		return Str.toString(g_dir_read_name(gDir));
	}
	
	/**
	 * Resets the given directory. The next call to g_dir_read_name()
	 * will return the first entry again.
	 */
	public void rewind()
	{
		// void g_dir_rewind (GDir *dir);
		g_dir_rewind(gDir);
	}
	
	/**
	 * Closes the directory and deallocates all related resources.
	 */
	public void close()
	{
		// void g_dir_close (GDir *dir);
		g_dir_close(gDir);
	}
}
