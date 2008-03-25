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
 * outFile = MappedFile
 * strct   = GMappedFile
 * realStrct=
 * ctorStrct=
 * clss    = MappedFile
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_mapped_file_
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

module glib.MappedFile;

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
public class MappedFile
{
	
	/** the main Gtk struct */
	protected GMappedFile* gMappedFile;
	
	
	public GMappedFile* getMappedFileStruct()
	{
		return gMappedFile;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMappedFile;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMappedFile* gMappedFile)
	{
		if(gMappedFile is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gMappedFile passed to constructor.");
			else return;
		}
		this.gMappedFile = gMappedFile;
	}
	
	/**
	 */
	
	/**
	 * Maps a file into memory. On UNIX, this is using the mmap() function.
	 * If writable is TRUE, the mapped buffer may be modified, otherwise
	 * it is an error to modify the mapped buffer. Modifications to the buffer
	 * are not visible to other processes mapping the same file, and are not
	 * written back to the file.
	 * Note that modifications of the underlying file might affect the contents
	 * of the GMappedFile. Therefore, mapping should only be used if the file
	 * will not be modified, or if all modifications of the file are done
	 * atomically (e.g. using g_file_set_contents()).
	 * Since 2.8
	 * Params:
	 * filename =  The path of the file to load, in the GLib filename encoding
	 * writable =  whether the mapping should be writable
	 * error =  return location for a GError, or NULL
	 */
	public this (string filename, int writable, GError** error)
	{
		// GMappedFile* g_mapped_file_new (const gchar *filename,  gboolean writable,  GError **error);
		auto p = g_mapped_file_new(Str.toStringz(filename), writable, error);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GMappedFile*) p);
	}
	
	/**
	 * Unmaps the buffer of file and frees it.
	 * Since 2.8
	 */
	public void free()
	{
		// void g_mapped_file_free (GMappedFile *file);
		g_mapped_file_free(gMappedFile);
	}
	
	/**
	 * Returns the length of the contents of a GMappedFile.
	 * Since 2.8
	 * Returns: the length of the contents of file.
	 */
	public uint getLength()
	{
		// gsize g_mapped_file_get_length (GMappedFile *file);
		return g_mapped_file_get_length(gMappedFile);
	}
	
	/**
	 * Returns the contents of a GMappedFile.
	 * Note that the contents may not be zero-terminated,
	 * even if the GMappedFile is backed by a text file.
	 * Since 2.8
	 * Returns: the contents of file.
	 */
	public string getContents()
	{
		// gchar* g_mapped_file_get_contents (GMappedFile *file);
		return Str.toString(g_mapped_file_get_contents(gMappedFile));
	}
}
