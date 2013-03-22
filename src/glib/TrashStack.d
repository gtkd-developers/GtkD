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
 * inFile  = glib-Trash-Stacks.html
 * outPack = glib
 * outFile = TrashStack
 * strct   = GTrashStack
 * realStrct=
 * ctorStrct=
 * clss    = TrashStack
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_trash_stack_
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

module glib.TrashStack;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * A GTrashStack is an efficient way to keep a stack of unused allocated
 * memory chunks. Each memory chunk is required to be large enough to hold
 * a gpointer. This allows the stack to be maintained without any space
 * overhead, since the stack pointers can be stored inside the memory chunks.
 *
 * There is no function to create a GTrashStack. A NULL GTrashStack*
 * is a perfectly valid empty stack.
 */
public class TrashStack
{
	
	/** the main Gtk struct */
	protected GTrashStack* gTrashStack;
	
	
	public GTrashStack* getTrashStackStruct()
	{
		return gTrashStack;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTrashStack;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTrashStack* gTrashStack)
	{
		this.gTrashStack = gTrashStack;
	}
	
	/**
	 */
	
	/**
	 * Pushes a piece of memory onto a GTrashStack.
	 * Params:
	 * stackP = a GTrashStack
	 * dataP = the piece of memory to push on the stack
	 */
	public static void push(GTrashStack** stackP, void* dataP)
	{
		// void g_trash_stack_push (GTrashStack **stack_p,  gpointer data_p);
		g_trash_stack_push(stackP, dataP);
	}
	
	/**
	 * Pops a piece of memory off a GTrashStack.
	 * Params:
	 * stackP = a GTrashStack
	 * Returns: the element at the top of the stack
	 */
	public static void* pop(GTrashStack** stackP)
	{
		// gpointer g_trash_stack_pop (GTrashStack **stack_p);
		return g_trash_stack_pop(stackP);
	}
	
	/**
	 * Returns the element at the top of a GTrashStack
	 * which may be NULL.
	 * Params:
	 * stackP = a GTrashStack
	 * Returns: the element at the top of the stack
	 */
	public static void* peek(GTrashStack** stackP)
	{
		// gpointer g_trash_stack_peek (GTrashStack **stack_p);
		return g_trash_stack_peek(stackP);
	}
	
	/**
	 * Returns the height of a GTrashStack.
	 * Note that execution of this function is of O(N) complexity
	 * where N denotes the number of items on the stack.
	 * Params:
	 * stackP = a GTrashStack
	 * Returns: the height of the stack
	 */
	public static uint height(GTrashStack** stackP)
	{
		// guint g_trash_stack_height (GTrashStack **stack_p);
		return g_trash_stack_height(stackP);
	}
}
