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


module gtk.IconPaintable;

private import gdk.PaintableIF;
private import gdk.PaintableT;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.SymbolicPaintableIF;
private import gtk.SymbolicPaintableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * Contains information found when looking up an icon in `GtkIconTheme`.
 * 
 * `GtkIconPaintable` implements `GdkPaintable`.
 */
public class IconPaintable : ObjectG, PaintableIF, SymbolicPaintableIF
{
	/** the main Gtk struct */
	protected GtkIconPaintable* gtkIconPaintable;

	/** Get the main Gtk struct */
	public GtkIconPaintable* getIconPaintableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconPaintable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIconPaintable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconPaintable* gtkIconPaintable, bool ownedRef = false)
	{
		this.gtkIconPaintable = gtkIconPaintable;
		super(cast(GObject*)gtkIconPaintable, ownedRef);
	}

	// add the Paintable capabilities
	mixin PaintableT!(GtkIconPaintable);

	// add the SymbolicPaintable capabilities
	mixin SymbolicPaintableT!(GtkIconPaintable);


	/** */
	public static GType getType()
	{
		return gtk_icon_paintable_get_type();
	}

	/**
	 * Creates a `GtkIconPaintable` for a file with a given size and scale.
	 *
	 * The icon can then be rendered by using it as a `GdkPaintable`.
	 *
	 * Params:
	 *     file = a `GFile`
	 *     size = desired icon size
	 *     scale = the desired scale
	 *
	 * Returns: a `GtkIconPaintable` containing
	 *     for the icon. Unref with g_object_unref()
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file, int size, int scale)
	{
		auto __p = gtk_icon_paintable_new_for_file((file is null) ? null : file.getFileStruct(), size, scale);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_file");
		}

		this(cast(GtkIconPaintable*) __p, true);
	}

	/**
	 * Gets the `GFile` that was used to load the icon.
	 *
	 * Returns %NULL if the icon was not loaded from a file.
	 *
	 * Returns: the `GFile` for the icon
	 */
	public FileIF getFile()
	{
		auto __p = gtk_icon_paintable_get_file(gtkIconPaintable);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/**
	 * Get the icon name being used for this icon.
	 *
	 * When an icon looked up in the icon theme was not available, the
	 * icon theme may use fallback icons - either those specified to
	 * gtk_icon_theme_lookup_icon() or the always-available
	 * "image-missing". The icon chosen is returned by this function.
	 *
	 * If the icon was created without an icon theme, this function
	 * returns %NULL.
	 *
	 * Returns: the themed icon-name for the
	 *     icon, or %NULL if its not a themed icon.
	 */
	public string getIconName()
	{
		return Str.toString(gtk_icon_paintable_get_icon_name(gtkIconPaintable));
	}

	/**
	 * Checks if the icon is symbolic or not.
	 *
	 * This currently uses only the file name and not the file contents
	 * for determining this. This behaviour may change in the future.
	 *
	 * Note that to render a symbolic `GtkIconPaintable` properly (with
	 * recoloring), you have to set its icon name on a `GtkImage`.
	 *
	 * Returns: %TRUE if the icon is symbolic, %FALSE otherwise
	 */
	public bool isSymbolic()
	{
		return gtk_icon_paintable_is_symbolic(gtkIconPaintable) != 0;
	}
}
