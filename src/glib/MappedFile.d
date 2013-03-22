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
 * 	- glib.Bytes
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GBytes* -> Bytes
 * 	- GMappedFile* -> MappedFile
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.MappedFile;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.Bytes;
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
	 * If filename is the name of an empty, regular file, the function
	 * will successfully return an empty GMappedFile. In other cases of
	 * size 0 (e.g. device files such as /dev/null), error will be set
	 * to the GFileError value G_FILE_ERROR_INVAL.
	 * Since 2.8
	 * Params:
	 * filename = The path of the file to load, in the GLib filename encoding
	 * writable = whether the mapping should be writable
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename, int writable)
	{
		// GMappedFile * g_mapped_file_new (const gchar *filename,  gboolean writable,  GError **error);
		GError* err = null;
		
		auto p = g_mapped_file_new(Str.toStringz(filename), writable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_mapped_file_new(Str.toStringz(filename), writable, &err)");
		}
		this(cast(GMappedFile*) p);
	}
	
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
	 * Since 2.32
	 * Params:
	 * fd = The file descriptor of the file to load
	 * writable = whether the mapping should be writable
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int fd, int writable)
	{
		// GMappedFile * g_mapped_file_new_from_fd (gint fd,  gboolean writable,  GError **error);
		GError* err = null;
		
		auto p = g_mapped_file_new_from_fd(fd, writable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_mapped_file_new_from_fd(fd, writable, &err)");
		}
		this(cast(GMappedFile*) p);
	}
	
	/**
	 * Increments the reference count of file by one. It is safe to call
	 * this function from any thread.
	 * Since 2.22
	 * Returns: the passed in GMappedFile.
	 */
	public MappedFile doref()
	{
		// GMappedFile * g_mapped_file_ref (GMappedFile *file);
		auto p = g_mapped_file_ref(gMappedFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new MappedFile(cast(GMappedFile*) p);
	}
	
	/**
	 * Decrements the reference count of file by one. If the reference count
	 * drops to 0, unmaps the buffer of file and frees it.
	 * It is safe to call this function from any thread.
	 * Since 2.22
	 */
	public void unref()
	{
		// void g_mapped_file_unref (GMappedFile *file);
		g_mapped_file_unref(gMappedFile);
	}
	
	/**
	 * Warning
	 * g_mapped_file_free has been deprecated since version 2.22 and should not be used in newly-written code. Use g_mapped_file_unref() instead.
	 * This call existed before GMappedFile had refcounting and is currently
	 * exactly the same as g_mapped_file_unref().
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
	public gsize getLength()
	{
		// gsize g_mapped_file_get_length (GMappedFile *file);
		return g_mapped_file_get_length(gMappedFile);
	}
	
	/**
	 * Returns the contents of a GMappedFile.
	 * Note that the contents may not be zero-terminated,
	 * even if the GMappedFile is backed by a text file.
	 * If the file is empty then NULL is returned.
	 * Since 2.8
	 * Returns: the contents of file, or NULL.
	 */
	public string getContents()
	{
		// gchar * g_mapped_file_get_contents (GMappedFile *file);
		return Str.toString(g_mapped_file_get_contents(gMappedFile));
	}
	
	/**
	 * Creates a new GBytes which references the data mapped from file.
	 * The mapped contents of the file must not be modified after creating this
	 * bytes object, because a GBytes should be immutable.
	 * Since 2.34
	 * Returns: A newly allocated GBytes referencing data from file. [transfer full]
	 */
	public Bytes getBytes()
	{
		// GBytes * g_mapped_file_get_bytes (GMappedFile *file);
		auto p = g_mapped_file_get_bytes(gMappedFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p);
	}
}
