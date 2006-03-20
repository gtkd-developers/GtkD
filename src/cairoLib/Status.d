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
 * outPack = cairoLib
 * outFile = Status
 * strct   = cairo_status_t
 * realStrct=
 * clss    = Status
 * extend  = 
 * prefixes:
 * 	- cairo_status_t
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module cairoLib.Status;

private import cairoLib.typedefs;

private import lib.cairoLib;

private import glib.Str;

/**
 * Description
 */
public class Status
{
	
	/** the main Gtk struct */
	protected cairo_status_t* cairo_status;
	
	
	public cairo_status_t* getStatusStruct()
	{
		return cairo_status;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_status;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_status_t* cairo_status)
	{
		this.cairo_status = cairo_status;
	}
	
	/**
	 */
	
	
	/**
	 * Provides a human-readable description of a cairo_status_t.
	 * status:
	 *  a cairo status
	 * Returns:
	 * a string representation of the status
	 */
	public static char[] oString(cairo_status_t status)
	{
		// const char* cairo_status_to_string (cairo_status_t status);
		return Str.toString(cairo_status_to_string(status) );
	}
	
	/**
	 * Resets all static data within cairo to its original state,
	 * (ie. identical to the state at the time of program invocation). For
	 * example, all caches within cairo will be flushed empty.
	 * This function is intended to be useful when using memory-checking
	 * tools such as valgrind. When valgrind's memcheck analyzes a
	 * cairo-using program without a call to cairo_debug_reset_static_data,
	 * it will report all data reachable via cairo's static objects as
	 * "still reachable". Calling cairo_debug_reset_static_data just prior
	 * to program termination will make it easier to get squeaky clean
	 * reports from valgrind.
	 * WARNING: It is only safe to call this function when there are no
	 * active cairo objects remaining, (ie. the appropriate destroy
	 * functions have been called as necessary). If there are active cairo
	 * objects, this call is likely to cause a crash, (eg. an assertion
	 * failure due to a hash table being destroyed when non-empty).
	 * <<cairo_matrix_t
	 * Version Information>>
	 */
	public static void cairoDebugResetStaticData()
	{
		// void cairo_debug_reset_static_data (void);
		cairo_debug_reset_static_data();
	}
}
