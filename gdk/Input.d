/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gdk
 * outFile = Input
 * strct   = 
 * clss    = Input
 * prefixes:
 * 	- gdk_input_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gdk.Input;

private import gdk.typedefs;

private import lib.gdk;


/**
 * Description
 * The functions in this section are used to establish
 * callbacks when some condition becomes true for
 * a file descriptor. They are currently just wrappers around
 * the IO Channel
 * facility.
 */
public class Input
{
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_input_add_full is deprecated and should not be used in newly-written code.
	 * Establish a callback when a condition becomes true on
	 * a file descriptor.
	 * source:
	 * a file descriptor.
	 * condition:
	 * the condition.
	 * function:
	 * the callback function.
	 * data:
	 * callback data passed to function.
	 * destroy:
	 * callback function to call with data when the input
	 *  handler is removed.
	 * Returns:
	 * a tag that can later be used as an argument to
	 *  gdk_input_remove().
	 */
	public static int addFull(int source, GdkInputCondition condition, GdkInputFunction funct, void* data, GdkDestroyNotify destroy)
	{
		// gint gdk_input_add_full (gint source,  GdkInputCondition condition,  GdkInputFunction function,  gpointer data,  GdkDestroyNotify destroy);
		return gdk_input_add_full(source, condition, funct, data, destroy);
	}
	
	
	
	
	/**
	 * Warning
	 * gdk_input_add is deprecated and should not be used in newly-written code.
	 * Establish a callback when a condition becomes true on
	 * a file descriptor.
	 * source:
	 * a file descriptor.
	 * condition:
	 * the condition.
	 * function:
	 * the callback function.
	 * data:
	 * callback data passed to function.
	 * Returns:
	 * a tag that can later be used as an argument to
	 *  gdk_input_remove().
	 */
	public static int add(int source, GdkInputCondition condition, GdkInputFunction funct, void* data)
	{
		// gint gdk_input_add (gint source,  GdkInputCondition condition,  GdkInputFunction function,  gpointer data);
		return gdk_input_add(source, condition, funct, data);
	}
	
	/**
	 * Warning
	 * gdk_input_remove is deprecated and should not be used in newly-written code.
	 * Remove a callback added with gdk_input_add() or
	 * gdk_input_add_full().
	 * tag:
	 * the tag returned when the callback was set up.
	 * See Also
	 * GLib Main Loop
	 * The main loop in which input callbacks run.
	 * IO Channels
	 * A newer and more flexible way of doing IO
	 * callbacks.
	 */
	public static void remove(int tag)
	{
		// void gdk_input_remove (gint tag);
		gdk_input_remove(tag);
	}
}
