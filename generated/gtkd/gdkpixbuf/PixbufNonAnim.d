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


module gdkpixbuf.PixbufNonAnim;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.PixbufAnimation;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class PixbufNonAnim : PixbufAnimation
{
	/** the main Gtk struct */
	protected GdkPixbufNonAnim* gdkPixbufNonAnim;

	/** Get the main Gtk struct */
	public GdkPixbufNonAnim* getPixbufNonAnimStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbufNonAnim;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufNonAnim;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufNonAnim* gdkPixbufNonAnim, bool ownedRef = false)
	{
		this.gdkPixbufNonAnim = gdkPixbufNonAnim;
		super(cast(GdkPixbufAnimation*)gdkPixbufNonAnim, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_pixbuf_non_anim_get_type();
	}

	/** */
	public this(Pixbuf pixbuf)
	{
		auto __p = gdk_pixbuf_non_anim_new((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPixbufNonAnim*) __p, true);
	}
}
