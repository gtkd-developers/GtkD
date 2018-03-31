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


module gstreamer.StaticCaps;

private import gobject.ObjectG;
private import gstreamer.Caps;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * Datastructure to initialize #GstCaps from a string description usually
 * used in conjunction with GST_STATIC_CAPS() and gst_static_caps_get() to
 * instantiate a #GstCaps.
 */
public class StaticCaps
{
	/** the main Gtk struct */
	protected GstStaticCaps* gstStaticCaps;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstStaticCaps* getStaticCapsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstStaticCaps;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstStaticCaps;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstStaticCaps* gstStaticCaps, bool ownedRef = false)
	{
		this.gstStaticCaps = gstStaticCaps;
		this.ownedRef = ownedRef;
	}


	/**
	 * Clean up the cached caps contained in @static_caps.
	 */
	public void cleanup()
	{
		gst_static_caps_cleanup(gstStaticCaps);
	}

	/**
	 * Converts a #GstStaticCaps to a #GstCaps.
	 *
	 * Returns: a pointer to the #GstCaps. Unref
	 *     after usage. Since the core holds an additional ref to the
	 *     returned caps, use gst_caps_make_writable() on the returned caps
	 *     to modify it.
	 */
	public Caps get()
	{
		auto p = gst_static_caps_get(gstStaticCaps);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}
}
