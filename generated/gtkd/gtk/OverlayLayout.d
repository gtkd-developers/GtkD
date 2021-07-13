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


module gtk.OverlayLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkOverlayLayout` is the layout manager used by `GtkOverlay`.
 * 
 * It places widgets as overlays on top of the main child.
 * 
 * This is not a reusable layout manager, since it expects its widget
 * to be a `GtkOverlay`. It only listed here so that its layout
 * properties get documented.
 */
public class OverlayLayout : LayoutManager
{
	/** the main Gtk struct */
	protected GtkOverlayLayout* gtkOverlayLayout;

	/** Get the main Gtk struct */
	public GtkOverlayLayout* getOverlayLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkOverlayLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOverlayLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkOverlayLayout* gtkOverlayLayout, bool ownedRef = false)
	{
		this.gtkOverlayLayout = gtkOverlayLayout;
		super(cast(GtkLayoutManager*)gtkOverlayLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_overlay_layout_get_type();
	}

	/**
	 * Creates a new `GtkOverlayLayout` instance.
	 *
	 * Returns: the newly created instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_overlay_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkOverlayLayout*) __p, true);
	}
}
