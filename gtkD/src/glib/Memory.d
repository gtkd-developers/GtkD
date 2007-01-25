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
 * inFile  = glib-Memory-Allocation.html
 * outPack = glib
 * outFile = Memory
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Memory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module glib.Memory;

private import gtkc.glibtypes;

private import gtkc.glib;


/**
 * Description
 * These functions provide support for allocating and freeing memory.
 * Note
 * If any call to allocate memory fails, the application is terminated.
 * This also means that there is no need to check if the call succeeded.
 */
public class Memory
{
	
	/**
	 */
	
	
	
	
	
	
	
	/**
	 * Allocates n_bytes bytes of memory.
	 * If n_bytes is 0 it returns NULL.
	 * n_bytes:
	 * the number of bytes to allocate.
	 * Returns:
	 * a pointer to the allocated memory.
	 */
	public static void* malloc(uint nBytes)
	{
		// gpointer g_malloc (gulong n_bytes);
		return g_malloc(nBytes);
	}
	
	/**
	 * Allocates n_bytes bytes of memory, initialized to 0's.
	 * If n_bytes is 0 it returns NULL.
	 * n_bytes:
	 * the number of bytes to allocate.
	 * Returns:
	 * a pointer to the allocated memory.
	 */
	public static void* malloc0(uint nBytes)
	{
		// gpointer g_malloc0 (gulong n_bytes);
		return g_malloc0(nBytes);
	}
	
	/**
	 * Reallocates the memory pointed to by mem, so that it now has space for
	 * n_bytes bytes of memory. It returns the new address of the memory, which may
	 * have been moved. mem may be NULL, in which case it's considered to
	 * have zero-length. n_bytes may be 0, in which case NULL will be returned.
	 * mem:
	 * the memory to reallocate.
	 * n_bytes:
	 * new size of the memory in bytes.
	 * Returns:
	 * the new address of the allocated memory.
	 */
	public static void* realloc(void* mem, uint nBytes)
	{
		// gpointer g_realloc (gpointer mem,  gulong n_bytes);
		return g_realloc(mem, nBytes);
	}
	
	/**
	 * Attempts to allocate n_bytes, and returns NULL on failure.
	 * Contrast with g_malloc(), which aborts the program on failure.
	 * n_bytes:
	 * number of bytes to allocate.
	 * Returns:
	 * the allocated memory, or NULL.
	 */
	public static void* tryMalloc(uint nBytes)
	{
		// gpointer g_try_malloc (gulong n_bytes);
		return g_try_malloc(nBytes);
	}
	
	/**
	 * Attempts to allocate n_bytes, initialized to 0's, and returns NULL on
	 * failure. Contrast with g_malloc0(), which aborts the program on failure.
	 * n_bytes:
	 * number of bytes to allocate.
	 * Returns:
	 * the allocated memory, or NULL.
	 * Since 2.8
	 */
	public static void* tryMalloc0(uint nBytes)
	{
		// gpointer g_try_malloc0 (gulong n_bytes);
		return g_try_malloc0(nBytes);
	}
	
	/**
	 * Attempts to realloc mem to a new size, n_bytes, and returns NULL
	 * on failure. Contrast with g_realloc(), which aborts the program
	 * on failure. If mem is NULL, behaves the same as g_try_malloc().
	 * mem:
	 * previously-allocated memory, or NULL.
	 * n_bytes:
	 * number of bytes to allocate.
	 * Returns:
	 * the allocated memory, or NULL.
	 */
	public static void* tryRealloc(void* mem, uint nBytes)
	{
		// gpointer g_try_realloc (gpointer mem,  gulong n_bytes);
		return g_try_realloc(mem, nBytes);
	}
	
	/**
	 * Frees the memory pointed to by mem.
	 * If mem is NULL it simply returns.
	 * mem:
	 * the memory to free.
	 */
	public static void free(void* mem)
	{
		// void g_free (gpointer mem);
		g_free(mem);
	}
	
	
	
	
	
	/**
	 * Allocates byte_size bytes of memory, and copies byte_size bytes into it
	 * from mem. If mem is NULL it returns NULL.
	 * mem:
	 * the memory to copy.
	 * byte_size:
	 * the number of bytes to copy.
	 * Returns:
	 * a pointer to the newly-allocated copy of the memory, or NULL if mem
	 * is NULL.
	 */
	public static void* memdup(void* mem, uint byteSize)
	{
		// gpointer g_memdup (gconstpointer mem,  guint byte_size);
		return g_memdup(mem, byteSize);
	}
	
	
	/**
	 * Sets the GMemVTable to use for memory allocation. You can use this to provide
	 * custom memory allocation routines. This function must be called before using any other GLib functions. The vtable only needs to provide malloc(), realloc(), and free()
	 * functions; GLib can provide default implementations of the others. The malloc()
	 * and realloc() implementations should return NULL on failure, GLib will handle
	 * error-checking for you. vtable is copied, so need not persist after this
	 * function has been called.
	 * vtable:
	 * table of memory allocation routines.
	 */
	public static void memSetVtable(GMemVTable* vtable)
	{
		// void g_mem_set_vtable (GMemVTable *vtable);
		g_mem_set_vtable(vtable);
	}
	
	/**
	 * Checks whether the allocator used by g_malloc() is the system's
	 * malloc implementation. If it returns TRUE memory allocated with
	 * malloc() can be used interchangeable with memory allocated using g_malloc().
	 * This function is useful for avoiding an extra copy of allocated memory returned
	 * by a non-GLib-based API.
	 * A different allocator can be set using g_mem_set_vtable().
	 * Returns:
	 *  if TRUE, malloc() and g_malloc() can be mixed.
	 */
	public static int memIsSystemMalloc()
	{
		// gboolean g_mem_is_system_malloc (void);
		return g_mem_is_system_malloc();
	}
	
	
	/**
	 * Outputs a summary of memory usage.
	 * It outputs the frequency of allocations of different sizes,
	 * the total number of bytes which have been allocated,
	 * the total number of bytes which have been freed,
	 * and the difference between the previous two values, i.e. the number of bytes
	 * still in use.
	 * Note that this function will not output anything unless you have
	 * previously installed the glib_mem_profiler_table with g_mem_set_vtable().
	 */
	public static void memProfile()
	{
		// void g_mem_profile (void);
		g_mem_profile();
	}
}
