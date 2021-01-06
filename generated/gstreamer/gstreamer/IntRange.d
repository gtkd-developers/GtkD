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


module gstreamer.IntRange;

private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * A fundamental type that describes a #gint range
 */
public class IntRange
{
	/** the main Gtk struct */
	protected GstIntRange* gstIntRange;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstIntRange* getIntRangeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstIntRange;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstIntRange;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstIntRange* gstIntRange, bool ownedRef = false)
	{
		this.gstIntRange = gstIntRange;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_int_range_get_type();
	}
}
