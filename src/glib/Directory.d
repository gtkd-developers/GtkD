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
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GDir* -> Directory
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Directory;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;




/**
 * There is a group of functions which wrap the common POSIX functions
 * dealing with filenames (g_open(), g_rename(), g_mkdir(), g_stat(),
 * g_unlink(), g_remove(), g_fopen(), g_freopen()). The point of these
 * wrappers is to make it possible to handle file names with any Unicode
 * characters in them on Windows without having to use ifdefs and the
 * wide character API in the application code.
 *
 * The pathname argument should be in the GLib file name encoding.
 * On POSIX this is the actual on-disk encoding which might correspond
 * to the locale settings of the process (or the
 * G_FILENAME_ENCODING environment variable), or not.
 *
 * On Windows the GLib file name encoding is UTF-8. Note that the
 * Microsoft C library does not use UTF-8, but has separate APIs for
 * current system code page and wide characters (UTF-16). The GLib
 * wrappers call the wide character API if present (on modern Windows
 * systems), otherwise convert to/from the system code page.
 *
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
		this.gDir = gDir;
	}
	
	/**
	 */
	
	/**
	 * Creates a subdirectory in the preferred directory for temporary
	 * files (as returned by g_get_tmp_dir()).
	 * tmpl should be a string in the GLib file name encoding containing
	 * a sequence of six 'X' characters, as the parameter to g_mkstemp().
	 * However, unlike these functions, the template should only be a
	 * basename, no directory components are allowed. If template is
	 * NULL, a default template is used.
	 * Note that in contrast to g_mkdtemp() (and mkdtemp()) tmpl is not
	 * modified, and might thus be a read-only literal string.
	 * Since 2.30
	 * Params:
	 * tmpl = Template for directory name,
	 * as in g_mkdtemp(), basename only, or NULL for a default template. [type filename][allow-none]
	 * Returns: The actual name used. This string should be freed with g_free() when not needed any longer and is is in the GLib file name encoding. In case of errors, NULL is returned and error will be set. [type filename]
	 * Throws: GException on failure.
	 */
	public static string makeTmp(string tmpl)
	{
		// gchar * g_dir_make_tmp (const gchar *tmpl,  GError **error);
		GError* err = null;
		
		auto p = g_dir_make_tmp(Str.toStringz(tmpl), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Opens a directory for reading. The names of the files in the
	 * directory can then be retrieved using g_dir_read_name(). Note
	 * that the ordering is not defined.
	 * Params:
	 * path = the path to the directory you are interested in. On Unix
	 * in the on-disk encoding. On Windows in UTF-8
	 * flags = Currently must be set to 0. Reserved for future use.
	 * Returns: a newly allocated GDir on success, NULL on failure. If non-NULL, you must free the result with g_dir_close() when you are finished with it.
	 * Throws: GException on failure.
	 */
	public static Directory open(string path, uint flags)
	{
		// GDir * g_dir_open (const gchar *path,  guint flags,  GError **error);
		GError* err = null;
		
		auto p = g_dir_open(Str.toStringz(path), flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return new Directory(cast(GDir*) p);
	}
	
	/**
	 * Retrieves the name of another entry in the directory, or NULL.
	 * The order of entries returned from this function is not defined,
	 * and may vary by file system or other operating-system dependent
	 * factors.
	 * NULL may also be returned in case of errors. On Unix, you can
	 * check errno to find out if NULL was returned
	 * because of an error.
	 * On Unix, the '.' and '..' entries are omitted, and the returned
	 * name is in the on-disk encoding.
	 * On Windows, as is true of all GLib functions which operate on
	 * filenames, the returned name is in UTF-8.
	 * Returns: The entry's name or NULL if there are no more entries. The return value is owned by GLib and must not be modified or freed.
	 */
	public string readName()
	{
		// const gchar * g_dir_read_name (GDir *dir);
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
