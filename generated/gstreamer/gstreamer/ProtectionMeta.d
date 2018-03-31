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


module gstreamer.ProtectionMeta;

private import glib.Str;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * Metadata type that holds information about a sample from a protection-protected
 * track, including the information needed to decrypt it (if it is encrypted).
 *
 * Since: 1.6
 */
public class ProtectionMeta
{
	/** the main Gtk struct */
	protected GstProtectionMeta* gstProtectionMeta;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstProtectionMeta* getProtectionMetaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstProtectionMeta;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstProtectionMeta;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstProtectionMeta* gstProtectionMeta, bool ownedRef = false)
	{
		this.gstProtectionMeta = gstProtectionMeta;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GstMetaInfo* getInfo()
	{
		return gst_protection_meta_get_info();
	}

	/** */
	public static GType getType()
	{
		return gst_protection_meta_api_get_type();
	}

	/**
	 * Iterates the supplied list of UUIDs and checks the GstRegistry for
	 * an element that supports one of the supplied UUIDs. If more than one
	 * element matches, the system ID of the highest ranked element is selected.
	 *
	 * Params:
	 *     systemIdentifiers = A null terminated array of strings
	 *         that contains the UUID values of each protection system that is to be
	 *         checked.
	 *
	 * Returns: One of the strings from
	 *     @system_identifiers that indicates the highest ranked element that
	 *     implements the protection system indicated by that system ID, or %NULL if no
	 *     element has been found.
	 *
	 * Since: 1.6
	 */
	public static string protectionSelectSystem(string[] systemIdentifiers)
	{
		return Str.toString(gst_protection_select_system(Str.toStringzArray(systemIdentifiers)));
	}
}
