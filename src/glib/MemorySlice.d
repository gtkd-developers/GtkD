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


module glib.MemorySlice;

private import gtkc.glib;
public  import gtkc.glibtypes;


/** */
public struct MemorySlice
{
	T* mewSlice(T)()
	{
		return cast(T*)g_slice_alloc(T.sizeof);
	}
	
	T* mewSlice0(T)()
	{
		return cast(T*)g_slice_alloc0(T.sizeof);
	}
	
	T* dup(T)(T* memBlock)
	{
		return cast(T*)g_slice_copy(T.sizeof, memBlock);
	}
	
	void free(T)(T* memBlock)
	{
		g_slice_free1(T.sizeof, memBlock);
	}

	/**
	 */

	/**
	 * Allocates a block of memory from the slice allocator.
	 * The block adress handed out can be expected to be aligned
	 * to at least 1 * sizeof (void*),
	 * though in general slices are 2 * sizeof (void*) bytes aligned,
	 * if a malloc() fallback implementation is used instead,
	 * the alignment may be reduced in a libc dependent fashion.
	 * Note that the underlying slice allocation mechanism can
	 * be changed with the [`G_SLICE=always-malloc`][G_SLICE]
	 * environment variable.
	 *
	 * Params:
	 *     blockSize = the number of bytes to allocate
	 *
	 * Return: a pointer to the allocated memory block
	 *
	 * Since: 2.10
	 */
	public static void* sliceAlloc(size_t blockSize)
	{
		return g_slice_alloc(blockSize);
	}

	/**
	 * Allocates a block of memory via g_slice_alloc() and initializes
	 * the returned memory to 0. Note that the underlying slice allocation
	 * mechanism can be changed with the [`G_SLICE=always-malloc`][G_SLICE]
	 * environment variable.
	 *
	 * Params:
	 *     blockSize = the number of bytes to allocate
	 *
	 * Return: a pointer to the allocated block
	 *
	 * Since: 2.10
	 */
	public static void* sliceAlloc0(size_t blockSize)
	{
		return g_slice_alloc0(blockSize);
	}

	/**
	 * Allocates a block of memory from the slice allocator
	 * and copies @block_size bytes into it from @mem_block.
	 *
	 * Params:
	 *     blockSize = the number of bytes to allocate
	 *     memBlock = the memory to copy
	 *
	 * Return: a pointer to the allocated memory block
	 *
	 * Since: 2.14
	 */
	public static void* sliceCopy(size_t blockSize, void* memBlock)
	{
		return g_slice_copy(blockSize, memBlock);
	}

	/**
	 * Frees a block of memory.
	 *
	 * The memory must have been allocated via g_slice_alloc() or
	 * g_slice_alloc0() and the @block_size has to match the size
	 * specified upon allocation. Note that the exact release behaviour
	 * can be changed with the [`G_DEBUG=gc-friendly`][G_DEBUG] environment
	 * variable, also see [`G_SLICE`][G_SLICE] for related debugging options.
	 *
	 * Params:
	 *     blockSize = the size of the block
	 *     memBlock = a pointer to the block to free
	 *
	 * Since: 2.10
	 */
	public static void sliceFree1(size_t blockSize, void* memBlock)
	{
		g_slice_free1(blockSize, memBlock);
	}

	/**
	 * Frees a linked list of memory blocks of structure type @type.
	 *
	 * The memory blocks must be equal-sized, allocated via
	 * g_slice_alloc() or g_slice_alloc0() and linked together by a
	 * @next pointer (similar to #GSList). The offset of the @next
	 * field in each block is passed as third argument.
	 * Note that the exact release behaviour can be changed with the
	 * [`G_DEBUG=gc-friendly`][G_DEBUG] environment variable, also see
	 * [`G_SLICE`][G_SLICE] for related debugging options.
	 *
	 * Params:
	 *     blockSize = the size of the blocks
	 *     memChain = a pointer to the first block of the chain
	 *     nextOffset = the offset of the @next field in the blocks
	 *
	 * Since: 2.10
	 */
	public static void sliceFreeChainWithOffset(size_t blockSize, void* memChain, size_t nextOffset)
	{
		g_slice_free_chain_with_offset(blockSize, memChain, nextOffset);
	}

	/** */
	public static long sliceGetConfig(GSliceConfig ckey)
	{
		return g_slice_get_config(ckey);
	}

	/** */
	public static long* sliceGetConfigState(GSliceConfig ckey, long address, uint* nValues)
	{
		return g_slice_get_config_state(ckey, address, nValues);
	}

	/** */
	public static void sliceSetConfig(GSliceConfig ckey, long value)
	{
		g_slice_set_config(ckey, value);
	}
}
