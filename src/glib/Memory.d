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
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Memory;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * These functions provide support for allocating and freeing memory.
 *
 * Note
 *
 * If any call to allocate memory fails, the application is terminated.
 * This also means that there is no need to check if the call succeeded.
 *
 * Note
 *
 * It's important to match g_malloc() with g_free(), plain malloc() with free(),
 * and (if you're using C++) new with delete and new[] with delete[]. Otherwise
 * bad things can happen, since these allocators may use different memory
 * pools (and new/delete call constructors and destructors). See also
 * g_mem_set_vtable().
 */
public class Memory
{
	
	/**
	 */
	
	/**
	 * Allocates n_bytes bytes of memory.
	 * If n_bytes is 0 it returns NULL.
	 * Params:
	 * nBytes = the number of bytes to allocate
	 * Returns: a pointer to the allocated memory
	 */
	public static void* malloc(gsize nBytes)
	{
		// gpointer g_malloc (gsize n_bytes);
		return g_malloc(nBytes);
	}
	
	/**
	 * Allocates n_bytes bytes of memory, initialized to 0's.
	 * If n_bytes is 0 it returns NULL.
	 * Params:
	 * nBytes = the number of bytes to allocate
	 * Returns: a pointer to the allocated memory
	 */
	public static void* malloc0(gsize nBytes)
	{
		// gpointer g_malloc0 (gsize n_bytes);
		return g_malloc0(nBytes);
	}
	
	/**
	 * Reallocates the memory pointed to by mem, so that it now has space for
	 * n_bytes bytes of memory. It returns the new address of the memory, which may
	 * have been moved. mem may be NULL, in which case it's considered to
	 * have zero-length. n_bytes may be 0, in which case NULL will be returned
	 * and mem will be freed unless it is NULL.
	 * Params:
	 * mem = the memory to reallocate
	 * nBytes = new size of the memory in bytes
	 * Returns: the new address of the allocated memory
	 */
	public static void* realloc(void* mem, gsize nBytes)
	{
		// gpointer g_realloc (gpointer mem,  gsize n_bytes);
		return g_realloc(mem, nBytes);
	}
	
	/**
	 * Attempts to allocate n_bytes, and returns NULL on failure.
	 * Contrast with g_malloc(), which aborts the program on failure.
	 * Params:
	 * nBytes = number of bytes to allocate.
	 * Returns: the allocated memory, or NULL.
	 */
	public static void* tryMalloc(gsize nBytes)
	{
		// gpointer g_try_malloc (gsize n_bytes);
		return g_try_malloc(nBytes);
	}
	
	/**
	 * Attempts to allocate n_bytes, initialized to 0's, and returns NULL on
	 * failure. Contrast with g_malloc0(), which aborts the program on failure.
	 * Since 2.8
	 * Params:
	 * nBytes = number of bytes to allocate
	 * Returns: the allocated memory, or NULL
	 */
	public static void* tryMalloc0(gsize nBytes)
	{
		// gpointer g_try_malloc0 (gsize n_bytes);
		return g_try_malloc0(nBytes);
	}
	
	/**
	 * Attempts to realloc mem to a new size, n_bytes, and returns NULL
	 * on failure. Contrast with g_realloc(), which aborts the program
	 * on failure. If mem is NULL, behaves the same as g_try_malloc().
	 * Params:
	 * mem = previously-allocated memory, or NULL. [allow-none]
	 * nBytes = number of bytes to allocate.
	 * Returns: the allocated memory, or NULL.
	 */
	public static void* tryRealloc(void* mem, gsize nBytes)
	{
		// gpointer g_try_realloc (gpointer mem,  gsize n_bytes);
		return g_try_realloc(mem, nBytes);
	}
	
	/**
	 * This function is similar to g_malloc(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: a pointer to the allocated memory
	 */
	public static void* mallocN(gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_malloc_n (gsize n_blocks,  gsize n_block_bytes);
		return g_malloc_n(nBlocks, nBlockBytes);
	}
	
	/**
	 * This function is similar to g_malloc0(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: a pointer to the allocated memory
	 */
	public static void* malloc0_N(gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_malloc0_n (gsize n_blocks,  gsize n_block_bytes);
		return g_malloc0_n(nBlocks, nBlockBytes);
	}
	
	/**
	 * This function is similar to g_realloc(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * mem = the memory to reallocate
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: the new address of the allocated memory
	 */
	public static void* reallocN(void* mem, gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_realloc_n (gpointer mem,  gsize n_blocks,  gsize n_block_bytes);
		return g_realloc_n(mem, nBlocks, nBlockBytes);
	}
	
	/**
	 * This function is similar to g_try_malloc(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: the allocated memory, or NULL.
	 */
	public static void* tryMallocN(gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_try_malloc_n (gsize n_blocks,  gsize n_block_bytes);
		return g_try_malloc_n(nBlocks, nBlockBytes);
	}
	
	/**
	 * This function is similar to g_try_malloc0(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: the allocated memory, or NULL
	 */
	public static void* tryMalloc0_N(gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_try_malloc0_n (gsize n_blocks,  gsize n_block_bytes);
		return g_try_malloc0_n(nBlocks, nBlockBytes);
	}
	
	/**
	 * This function is similar to g_try_realloc(), allocating (n_blocks * n_block_bytes) bytes,
	 * but care is taken to detect possible overflow during multiplication.
	 * Since 2.24
	 * Params:
	 * mem = previously-allocated memory, or NULL. [allow-none]
	 * nBlocks = the number of blocks to allocate
	 * nBlockBytes = the size of each block in bytes
	 * Returns: the allocated memory, or NULL.
	 */
	public static void* tryReallocN(void* mem, gsize nBlocks, gsize nBlockBytes)
	{
		// gpointer g_try_realloc_n (gpointer mem,  gsize n_blocks,  gsize n_block_bytes);
		return g_try_realloc_n(mem, nBlocks, nBlockBytes);
	}
	
	/**
	 * Frees the memory pointed to by mem.
	 * If mem is NULL it simply returns.
	 * Params:
	 * mem = the memory to free
	 */
	public static void free(void* mem)
	{
		// void g_free (gpointer mem);
		g_free(mem);
	}
	
	/**
	 * Clears a reference to a variable.
	 * pp must not be NULL.
	 * If the reference is NULL then this function does nothing.
	 * Otherwise, the variable is destroyed using destroy and the
	 * pointer is set to NULL.
	 * This function is threadsafe and modifies the pointer atomically,
	 * using memory barriers where needed.
	 * A macro is also included that allows this function to be used without
	 * pointer casts.
	 * Since 2.34
	 * Params:
	 * pp = a pointer to a variable, struct member etc. holding a pointer
	 * destroy = a function to which a gpointer can be passed, to destroy *pp
	 */
	public static void clearPointer(void** pp, GDestroyNotify destroy)
	{
		// void g_clear_pointer (gpointer *pp,  GDestroyNotify destroy);
		g_clear_pointer(pp, destroy);
	}
	
	/**
	 * Allocates byte_size bytes of memory, and copies byte_size bytes into it
	 * from mem. If mem is NULL it returns NULL.
	 * Params:
	 * mem = the memory to copy.
	 * byteSize = the number of bytes to copy.
	 * Returns: a pointer to the newly-allocated copy of the memory, or NULL if mem is NULL.
	 */
	public static void* memdup(void* mem, uint byteSize)
	{
		// gpointer g_memdup (gconstpointer mem,  guint byte_size);
		return g_memdup(mem, byteSize);
	}
	
	/**
	 * Sets the GMemVTable to use for memory allocation. You can use this to provide
	 * custom memory allocation routines. This function must be called
	 * before using any other GLib functions. The vtable only needs to
	 * provide malloc(), realloc(), and free() functions; GLib can provide default
	 * implementations of the others. The malloc() and realloc() implementations
	 * should return NULL on failure, GLib will handle error-checking for you.
	 * vtable is copied, so need not persist after this function has been called.
	 * Params:
	 * vtable = table of memory allocation routines.
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
	 * Returns: if TRUE, malloc() and g_malloc() can be mixed.
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
