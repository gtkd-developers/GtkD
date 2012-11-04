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
 * inFile  = glib-Memory-Chunks.html
 * outPack = glib
 * outFile = MemoryChunk
 * strct   = GMemChunk
 * realStrct=
 * ctorStrct=
 * clss    = MemoryChunk
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_mem_chunk_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_mem_chunk_print
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.MemoryChunk;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * Memory chunks provide an space-efficient way to allocate equal-sized
 * pieces of memory, called atoms. However, due to the administrative
 * overhead (in particular for G_ALLOC_AND_FREE, and when used from
 * multiple threads), they are in practise often slower than direct use
 * of g_malloc(). Therefore, memory chunks have been deprecated in
 * favor of the slice
 * allocator, which has been added in 2.10. All internal uses of
 * memory chunks in GLib have been converted to the
 * g_slice API.
 * There are two types of memory chunks, G_ALLOC_ONLY, and
 * G_ALLOC_AND_FREE.
 *  G_ALLOC_ONLY
 * chunks only allow allocation of atoms. The atoms can never be freed
 * individually. The memory chunk can only be free in its entirety.
 *  G_ALLOC_AND_FREE chunks do
 * allow atoms to be freed individually. The disadvantage of this is
 * that the memory chunk has to keep track of which atoms have been
 * freed. This results in more memory being used and a slight
 * degradation in performance.
 * To create a memory chunk use g_mem_chunk_new() or the convenience
 * macro g_mem_chunk_create().
 * To allocate a new atom use g_mem_chunk_alloc(),
 * g_mem_chunk_alloc0(), or the convenience macros g_chunk_new() or
 * g_chunk_new0().
 * To free an atom use g_mem_chunk_free(), or the convenience macro
 * g_chunk_free(). (Atoms can only be freed if the memory chunk is
 * created with the type set to G_ALLOC_AND_FREE.)
 * To free any blocks of memory which are no longer being used, use
 * g_mem_chunk_clean(). To clean all memory chunks, use g_blow_chunks().
 * To reset the memory chunk, freeing all of the atoms, use
 * g_mem_chunk_reset().
 * To destroy a memory chunk, use g_mem_chunk_destroy().
 * To help debug memory chunks, use g_mem_chunk_info() and
 * g_mem_chunk_print().
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 */
public class MemoryChunk
{
	
	/** the main Gtk struct */
	protected GMemChunk* gMemChunk;
	
	
	public GMemChunk* getMemoryChunkStruct()
	{
		return gMemChunk;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMemChunk;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMemChunk* gMemChunk)
	{
		this.gMemChunk = gMemChunk;
	}
	
	/**
	 * Warning
	 * g_mem_chunk_print has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Outputs debugging information for a GMemChunk.
	 * It outputs the name of the GMemChunk (set with g_mem_chunk_new()),
	 * the number of bytes used, and the number of blocks of memory allocated.
	 */
	version(Tango)
	{
		public void print()
		{
			// void g_mem_chunk_print (GMemChunk *mem_chunk);
			g_mem_chunk_print(gMemChunk);
		}
	}
	else version(D_Version2)
	{
		public void print()
		{
			// void g_mem_chunk_print (GMemChunk *mem_chunk);
			g_mem_chunk_print(gMemChunk);
		}
	}
	else
	{
		public override void print()
		{
			// void g_mem_chunk_print (GMemChunk *mem_chunk);
			g_mem_chunk_print(gMemChunk);
		}
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * g_mem_chunk_new has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Creates a new GMemChunk.
	 * Params:
	 * name = a string to identify the GMemChunk. It is not copied so it
	 * should be valid for the lifetime of the GMemChunk. It is
	 * only used in g_mem_chunk_print(), which is used for debugging.
	 * atomSize = the size, in bytes, of each element in the GMemChunk.
	 * areaSize = the size, in bytes, of each block of memory allocated to
	 * contain the atoms.
	 * type = the type of the GMemChunk. G_ALLOC_AND_FREE is used if the
	 * atoms will be freed individually. G_ALLOC_ONLY should be
	 * used if atoms will never be freed individually.
	 * G_ALLOC_ONLY is quicker, since it does not need to track
	 * free atoms, but it obviously wastes memory if you no longer
	 * need many of the atoms.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, int atomSize, gsize areaSize, int type)
	{
		// GMemChunk * g_mem_chunk_new (const gchar *name,  gint atom_size,  gsize area_size,  gint type);
		auto p = g_mem_chunk_new(Str.toStringz(name), atomSize, areaSize, type);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_mem_chunk_new(Str.toStringz(name), atomSize, areaSize, type)");
		}
		this(cast(GMemChunk*) p);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_alloc has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_alloc() instead
	 * Allocates an atom of memory from a GMemChunk.
	 * Returns: a pointer to the allocated atom.
	 */
	public void* alloc()
	{
		// gpointer g_mem_chunk_alloc (GMemChunk *mem_chunk);
		return g_mem_chunk_alloc(gMemChunk);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_alloc0 has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_alloc0() instead
	 * Allocates an atom of memory from a GMemChunk, setting the memory to
	 * 0.
	 * Returns: a pointer to the allocated atom.
	 */
	public void* alloc0()
	{
		// gpointer g_mem_chunk_alloc0 (GMemChunk *mem_chunk);
		return g_mem_chunk_alloc0(gMemChunk);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_free has been deprecated since version 2.10 and should not be used in newly-written code. Use g_slice_free1() instead
	 * Frees an atom in a GMemChunk. This should only be called if the
	 * GMemChunk was created with G_ALLOC_AND_FREE. Otherwise it will
	 * simply return.
	 * Params:
	 * mem = a pointer to the atom to free.
	 */
	public void free(void* mem)
	{
		// void g_mem_chunk_free (GMemChunk *mem_chunk,  gpointer mem);
		g_mem_chunk_free(gMemChunk, mem);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_destroy has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Frees all of the memory allocated for a GMemChunk.
	 */
	public void destroy()
	{
		// void g_mem_chunk_destroy (GMemChunk *mem_chunk);
		g_mem_chunk_destroy(gMemChunk);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_reset has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Resets a GMemChunk to its initial state. It frees all of the
	 * currently allocated blocks of memory.
	 */
	public void reset()
	{
		// void g_mem_chunk_reset (GMemChunk *mem_chunk);
		g_mem_chunk_reset(gMemChunk);
	}
	
	/**
	 * Warning
	 * g_mem_chunk_clean has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Frees any blocks in a GMemChunk which are no longer being used.
	 */
	public void clean()
	{
		// void g_mem_chunk_clean (GMemChunk *mem_chunk);
		g_mem_chunk_clean(gMemChunk);
	}
	
	/**
	 * Warning
	 * g_blow_chunks has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Calls g_mem_chunk_clean() on all GMemChunk objects.
	 */
	public static void blowChunks()
	{
		// void g_blow_chunks (void);
		g_blow_chunks();
	}
	
	/**
	 * Warning
	 * g_mem_chunk_info has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice
	 *  allocator instead
	 * Outputs debugging information for all GMemChunk objects currently
	 * in use. It outputs the number of GMemChunk objects currently
	 * allocated, and calls g_mem_chunk_print() to output information on
	 * each one.
	 */
	public static void info()
	{
		// void g_mem_chunk_info (void);
		g_mem_chunk_info();
	}
}
