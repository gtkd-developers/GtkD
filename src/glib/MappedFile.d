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


module glib.MappedFile;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * The #GMappedFile represents a file mapping created with
 * g_mapped_file_new(). It has only private members and should
 * not be accessed directly.
 */
public class MappedFile
{
	/** the main Gtk struct */
	protected GMappedFile* gMappedFile;
	protected bool ownedRef;

	/** Get the main Gtk struct */
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
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMappedFile* gMappedFile, bool ownedRef = false)
	{
		this.gMappedFile = gMappedFile;
		this.ownedRef = ownedRef;
	}


	/**
	 * Maps a file into memory. On UNIX, this is using the mmap() function.
	 *
	 * If @writable is %TRUE, the mapped buffer may be modified, otherwise
	 * it is an error to modify the mapped buffer. Modifications to the buffer
	 * are not visible to other processes mapping the same file, and are not
	 * written back to the file.
	 *
	 * Note that modifications of the underlying file might affect the contents
	 * of the #GMappedFile. Therefore, mapping should only be used if the file
	 * will not be modified, or if all modifications of the file are done
	 * atomically (e.g. using g_file_set_contents()).
	 *
	 * If @filename is the name of an empty, regular file, the function
	 * will successfully return an empty #GMappedFile. In other cases of
	 * size 0 (e.g. device files such as /dev/null), @error will be set
	 * to the #GFileError value #G_FILE_ERROR_INVAL.
	 *
	 * Params:
	 *     filename = The path of the file to load, in the GLib filename encoding
	 *     writable = whether the mapping should be writable
	 *
	 * Return: a newly allocated #GMappedFile which must be unref'd
	 *     with g_mapped_file_unref(), or %NULL if the mapping failed.
	 *
	 * Since: 2.8
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, bool writable)
	{
		GError* err = null;
		
		auto p = g_mapped_file_new(Str.toStringz(filename), writable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GMappedFile*) p);
	}

	/**
	 * Maps a file into memory. On UNIX, this is using the mmap() function.
	 *
	 * If @writable is %TRUE, the mapped buffer may be modified, otherwise
	 * it is an error to modify the mapped buffer. Modifications to the buffer
	 * are not visible to other processes mapping the same file, and are not
	 * written back to the file.
	 *
	 * Note that modifications of the underlying file might affect the contents
	 * of the #GMappedFile. Therefore, mapping should only be used if the file
	 * will not be modified, or if all modifications of the file are done
	 * atomically (e.g. using g_file_set_contents()).
	 *
	 * Params:
	 *     fd = The file descriptor of the file to load
	 *     writable = whether the mapping should be writable
	 *
	 * Return: a newly allocated #GMappedFile which must be unref'd
	 *     with g_mapped_file_unref(), or %NULL if the mapping failed.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd, bool writable)
	{
		GError* err = null;
		
		auto p = g_mapped_file_new_from_fd(fd, writable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_fd");
		}
		
		this(cast(GMappedFile*) p);
	}

	/**
	 * This call existed before #GMappedFile had refcounting and is currently
	 * exactly the same as g_mapped_file_unref().
	 *
	 * Deprecated: Use g_mapped_file_unref() instead.
	 *
	 * Since: 2.8
	 */
	public void free()
	{
		g_mapped_file_free(gMappedFile);
	}

	/**
	 * Creates a new #GBytes which references the data mapped from @file.
	 * The mapped contents of the file must not be modified after creating this
	 * bytes object, because a #GBytes should be immutable.
	 *
	 * Return: A newly allocated #GBytes referencing data
	 *     from @file
	 *
	 * Since: 2.34
	 */
	public Bytes getBytes()
	{
		auto p = g_mapped_file_get_bytes(gMappedFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p, true);
	}

	/**
	 * Returns the contents of a #GMappedFile.
	 *
	 * Note that the contents may not be zero-terminated,
	 * even if the #GMappedFile is backed by a text file.
	 *
	 * If the file is empty then %NULL is returned.
	 *
	 * Return: the contents of @file, or %NULL.
	 *
	 * Since: 2.8
	 */
	public string getContents()
	{
		auto retStr = g_mapped_file_get_contents(gMappedFile);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the length of the contents of a #GMappedFile.
	 *
	 * Return: the length of the contents of @file.
	 *
	 * Since: 2.8
	 */
	public size_t getLength()
	{
		return g_mapped_file_get_length(gMappedFile);
	}

	/**
	 * Increments the reference count of @file by one.  It is safe to call
	 * this function from any thread.
	 *
	 * Return: the passed in #GMappedFile.
	 *
	 * Since: 2.22
	 */
	public MappedFile doref()
	{
		auto p = g_mapped_file_ref(gMappedFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new MappedFile(cast(GMappedFile*) p, true);
	}

	/**
	 * Decrements the reference count of @file by one.  If the reference count
	 * drops to 0, unmaps the buffer of @file and frees it.
	 *
	 * It is safe to call this function from any thread.
	 *
	 * Since 2.22
	 */
	public void unref()
	{
		g_mapped_file_unref(gMappedFile);
	}
}
