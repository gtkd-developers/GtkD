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


module gtk.NativeIF;

private import gdk.Surface;
private import gobject.ObjectG;
private import gsk.Renderer;
private import gtk.NativeIF;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkNative` is the interface implemented by all widgets that have
 * their own `GdkSurface`.
 * 
 * The obvious example of a `GtkNative` is `GtkWindow`.
 * 
 * Every widget that is not itself a `GtkNative` is contained in one,
 * and you can get it with [method@Gtk.Widget.get_native].
 * 
 * To get the surface of a `GtkNative`, use [method@Gtk.Native.get_surface].
 * It is also possible to find the `GtkNative` to which a surface
 * belongs, with [func@Gtk.Native.get_for_surface].
 * 
 * In addition to a [class@Gdk.Surface], a `GtkNative` also provides
 * a [class@Gsk.Renderer] for rendering on that surface. To get the
 * renderer, use [method@Gtk.Native.get_renderer].
 */
public interface NativeIF{
	/** Get the main Gtk struct */
	public GtkNative* getNativeStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_native_get_type();
	}

	/**
	 * Finds the `GtkNative` associated with the surface.
	 *
	 * Params:
	 *     surface = a `GdkSurface`
	 *
	 * Returns: the `GtkNative` that is associated with @surface
	 */
	public static NativeIF getForSurface(Surface surface)
	{
		auto __p = gtk_native_get_for_surface((surface is null) ? null : surface.getSurfaceStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NativeIF)(cast(GtkNative*) __p);
	}

	/**
	 * Returns the renderer that is used for this `GtkNative`.
	 *
	 * Returns: the renderer for @self
	 */
	public Renderer getRenderer();

	/**
	 * Returns the surface of this `GtkNative`.
	 *
	 * Returns: the surface of @self
	 */
	public Surface getSurface();

	/**
	 * Retrieves the surface transform of @self.
	 *
	 * This is the translation from @self's surface coordinates into
	 * @self's widget coordinates.
	 *
	 * Params:
	 *     x = return location for the x coordinate
	 *     y = return location for the y coordinate
	 */
	public void getSurfaceTransform(out double x, out double y);

	/**
	 * Realizes a `GtkNative`.
	 *
	 * This should only be used by subclasses.
	 */
	public void realizeNative();

	/**
	 * Unrealizes a `GtkNative`.
	 *
	 * This should only be used by subclasses.
	 */
	public void unrealizeNative();
}
