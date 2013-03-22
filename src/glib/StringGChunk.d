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
 * inFile  = glib-String-Chunks.html
 * outPack = glib
 * outFile = StringGChunk
 * strct   = GStringChunk
 * realStrct=
 * ctorStrct=
 * clss    = StringGChunk
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_string_chunk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.StringGChunk;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * String chunks are used to store groups of strings. Memory is
 * allocated in blocks, and as strings are added to the GStringChunk
 * they are copied into the next free position in a block. When a block
 * is full a new block is allocated.
 *
 * When storing a large number of strings, string chunks are more
 * efficient than using g_strdup() since fewer calls to malloc() are
 * needed, and less memory is wasted in memory allocation overheads.
 *
 * By adding strings with g_string_chunk_insert_const() it is also
 * possible to remove duplicates.
 *
 * To create a new GStringChunk use g_string_chunk_new().
 *
 * To add strings to a GStringChunk use g_string_chunk_insert().
 *
 * To add strings to a GStringChunk, but without duplicating strings
 * which are already in the GStringChunk, use
 * g_string_chunk_insert_const().
 *
 * To free the entire GStringChunk use g_string_chunk_free(). It is
 * not possible to free individual strings.
 */
public class StringGChunk
{
	
	/** the main Gtk struct */
	protected GStringChunk* gStringChunk;
	
	
	public GStringChunk* getStringGChunkStruct()
	{
		return gStringChunk;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gStringChunk;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GStringChunk* gStringChunk)
	{
		this.gStringChunk = gStringChunk;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gStringChunk !is null )
		{
			g_string_chunk_free(gStringChunk);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new GStringChunk.
	 * Params:
	 * size = the default size of the blocks of memory which are
	 * allocated to store the strings. If a particular string
	 * is larger than this default size, a larger block of
	 * memory will be allocated for it.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (gsize size)
	{
		// GStringChunk * g_string_chunk_new (gsize size);
		auto p = g_string_chunk_new(size);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_string_chunk_new(size)");
		}
		this(cast(GStringChunk*) p);
	}
	
	/**
	 * Adds a copy of string to the GStringChunk.
	 * It returns a pointer to the new copy of the string
	 * in the GStringChunk. The characters in the string
	 * can be changed, if necessary, though you should not
	 * change anything after the end of the string.
	 * Unlike g_string_chunk_insert_const(), this function
	 * does not check for duplicates. Also strings added
	 * with g_string_chunk_insert() will not be searched
	 * by g_string_chunk_insert_const() when looking for
	 * duplicates.
	 * Params:
	 * string = the string to add
	 * Returns: a pointer to the copy of string within the GStringChunk
	 */
	public string insert(string string)
	{
		// gchar * g_string_chunk_insert (GStringChunk *chunk,  const gchar *string);
		return Str.toString(g_string_chunk_insert(gStringChunk, Str.toStringz(string)));
	}
	
	/**
	 * Adds a copy of string to the GStringChunk, unless the same
	 * string has already been added to the GStringChunk with
	 * g_string_chunk_insert_const().
	 * This function is useful if you need to copy a large number
	 * of strings but do not want to waste space storing duplicates.
	 * But you must remember that there may be several pointers to
	 * the same string, and so any changes made to the strings
	 * should be done very carefully.
	 * Note that g_string_chunk_insert_const() will not return a
	 * pointer to a string added with g_string_chunk_insert(), even
	 * if they do match.
	 * Params:
	 * string = the string to add
	 * Returns: a pointer to the new or existing copy of string within the GStringChunk
	 */
	public string insertConst(string string)
	{
		// gchar * g_string_chunk_insert_const (GStringChunk *chunk,  const gchar *string);
		return Str.toString(g_string_chunk_insert_const(gStringChunk, Str.toStringz(string)));
	}
	
	/**
	 * Adds a copy of the first len bytes of string to the GStringChunk.
	 * The copy is nul-terminated.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that string has at least len addressable
	 * bytes.
	 * The characters in the returned string can be changed, if necessary,
	 * though you should not change anything after the end of the string.
	 * Since 2.4
	 * Params:
	 * string = bytes to insert
	 * len = number of bytes of string to insert, or -1 to insert a
	 * nul-terminated string
	 * Returns: a pointer to the copy of string within the GStringChunk
	 */
	public string insertLen(string string, gssize len)
	{
		// gchar * g_string_chunk_insert_len (GStringChunk *chunk,  const gchar *string,  gssize len);
		return Str.toString(g_string_chunk_insert_len(gStringChunk, Str.toStringz(string), len));
	}
	
	/**
	 * Frees all strings contained within the GStringChunk.
	 * After calling g_string_chunk_clear() it is not safe to
	 * access any of the strings which were contained within it.
	 * Since 2.14
	 */
	public void clear()
	{
		// void g_string_chunk_clear (GStringChunk *chunk);
		g_string_chunk_clear(gStringChunk);
	}
	
	/**
	 * Frees all memory allocated by the GStringChunk.
	 * After calling g_string_chunk_free() it is not safe to
	 * access any of the strings which were contained within it.
	 */
	public void free()
	{
		// void g_string_chunk_free (GStringChunk *chunk);
		g_string_chunk_free(gStringChunk);
	}
}
