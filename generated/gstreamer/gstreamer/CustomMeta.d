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


module gstreamer.CustomMeta;

private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * Simple typing wrapper around #GstMeta
 *
 * Since: 1.20
 */
public class CustomMeta
{
	/** the main Gtk struct */
	protected GstCustomMeta* gstCustomMeta;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstCustomMeta* getCustomMetaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstCustomMeta;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstCustomMeta;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstCustomMeta* gstCustomMeta, bool ownedRef = false)
	{
		this.gstCustomMeta = gstCustomMeta;
		this.ownedRef = ownedRef;
	}


	/**
	 * Retrieve the #GstStructure backing a custom meta, the structure's mutability
	 * is conditioned to the writability of the #GstBuffer @meta is attached to.
	 *
	 * Returns: the #GstStructure backing @meta
	 *
	 * Since: 1.20
	 */
	public Structure getStructure()
	{
		auto __p = gst_custom_meta_get_structure(gstCustomMeta);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p);
	}

	/**
	 * Checks whether the name of the custom meta is @name
	 *
	 * Returns: Whether @name is the name of the custom meta
	 *
	 * Since: 1.20
	 */
	public bool hasName(string name)
	{
		return gst_custom_meta_has_name(gstCustomMeta, Str.toStringz(name)) != 0;
	}
}
