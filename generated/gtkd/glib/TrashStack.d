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


module glib.TrashStack;

private import glib.MemorySlice;
private import glib.c.functions;
public  import glib.c.types;


/**
 * Each piece of memory that is pushed onto the stack
 * is cast to a GTrashStack*.
 * 
 * Deprecated: #GTrashStack is deprecated without replacement
 */
public struct TrashStack
{

	/**
	 * Returns the height of a #GTrashStack.
	 *
	 * Note that execution of this function is of O(N) complexity
	 * where N denotes the number of items on the stack.
	 *
	 * Deprecated: #GTrashStack is deprecated without replacement
	 *
	 * Params:
	 *     stackP = a #GTrashStack
	 *
	 * Returns: the height of the stack
	 */
	public static uint height(GTrashStack** stackP)
	{
		return g_trash_stack_height(stackP);
	}

	/**
	 * Returns the element at the top of a #GTrashStack
	 * which may be %NULL.
	 *
	 * Deprecated: #GTrashStack is deprecated without replacement
	 *
	 * Params:
	 *     stackP = a #GTrashStack
	 *
	 * Returns: the element at the top of the stack
	 */
	public static void* peek(GTrashStack** stackP)
	{
		return g_trash_stack_peek(stackP);
	}

	/**
	 * Pops a piece of memory off a #GTrashStack.
	 *
	 * Deprecated: #GTrashStack is deprecated without replacement
	 *
	 * Params:
	 *     stackP = a #GTrashStack
	 *
	 * Returns: the element at the top of the stack
	 */
	public static void* pop(GTrashStack** stackP)
	{
		return g_trash_stack_pop(stackP);
	}

	/**
	 * Pushes a piece of memory onto a #GTrashStack.
	 *
	 * Deprecated: #GTrashStack is deprecated without replacement
	 *
	 * Params:
	 *     stackP = a #GTrashStack
	 *     dataP = the piece of memory to push on the stack
	 */
	public static void push(GTrashStack** stackP, void* dataP)
	{
		g_trash_stack_push(stackP, dataP);
	}
}
