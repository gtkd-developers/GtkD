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


module gio.BytesIcon;

private import gio.IconIF;
private import gio.IconT;
private import gio.LoadableIconIF;
private import gio.LoadableIconT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;
public  import gtkc.giotypes;


/**
 * #GBytesIcon specifies an image held in memory in a common format (usually
 * png) to be used as icon.
 *
 * Since: 2.38
 */
public class BytesIcon : ObjectG, IconIF, LoadableIconIF
{
	/** the main Gtk struct */
	protected GBytesIcon* gBytesIcon;

	/** Get the main Gtk struct */
	public GBytesIcon* getBytesIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gBytesIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBytesIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GBytesIcon* gBytesIcon, bool ownedRef = false)
	{
		this.gBytesIcon = gBytesIcon;
		super(cast(GObject*)gBytesIcon, ownedRef);
	}

	// add the Icon capabilities
	mixin IconT!(GBytesIcon);

	// add the LoadableIcon capabilities
	mixin LoadableIconT!(GBytesIcon);


	/** */
	public static GType getType()
	{
		return g_bytes_icon_get_type();
	}

	/**
	 * Creates a new icon for a bytes.
	 *
	 * This cannot fail, but loading and interpreting the bytes may fail later on
	 * (for example, if g_loadable_icon_load() is called) if the image is invalid.
	 *
	 * Params:
	 *     bytes = a #GBytes.
	 *
	 * Returns: a #GIcon for the given
	 *     @bytes.
	 *
	 * Since: 2.38
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes bytes)
	{
		auto __p = g_bytes_icon_new((bytes is null) ? null : bytes.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GBytesIcon*) __p, true);
	}

	/**
	 * Gets the #GBytes associated with the given @icon.
	 *
	 * Returns: a #GBytes.
	 *
	 * Since: 2.38
	 */
	public Bytes getBytes()
	{
		auto __p = g_bytes_icon_get_bytes(gBytesIcon);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p);
	}
}
