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


module gtk.NativeT;

public  import gdk.Surface;
public  import gobject.ObjectG;
public  import gsk.Renderer;
public  import gtk.NativeIF;
public  import gtk.c.functions;
public  import gtk.c.types;


/**
 * #GtkNative is the interface implemented by all widgets that can provide
 * a GdkSurface for widgets to render on.
 * 
 * The obvious example of a #GtkNative is #GtkWindow.
 */
public template NativeT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkNative* getNativeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkNative*)getStruct();
	}


	/**
	 * Returns the renderer that is used for this #GtkNative.
	 *
	 * Returns: the renderer for @self
	 */
	public Renderer getRenderer()
	{
		auto __p = gtk_native_get_renderer(getNativeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Renderer)(cast(GskRenderer*) __p);
	}

	/**
	 * Returns the surface of this #GtkNative.
	 *
	 * Returns: the surface of @self
	 */
	public Surface getSurface()
	{
		auto __p = gtk_native_get_surface(getNativeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Retrieves the surface transform of @self. This is the translation
	 * from @self's surface coordinates into @self's widget coordinates.
	 *
	 * Params:
	 *     x = return location for the x coordinate
	 *     y = return location for the y coordinate
	 */
	public void getSurfaceTransform(out double x, out double y)
	{
		gtk_native_get_surface_transform(getNativeStruct(), &x, &y);
	}

	/**
	 * Realizes a #GtkNative.
	 */
	public void realizeNative()
	{
		gtk_native_realize(getNativeStruct());
	}

	/**
	 * Unrealizes a #GtkNative.
	 */
	public void unrealizeNative()
	{
		gtk_native_unrealize(getNativeStruct());
	}
}
