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


module gdl.PreviewWindow;

private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import gtk.Window;


/**
 * The GdlDockLayout struct contains only private fields
 * and should not be directly accessed.
 */
public class PreviewWindow : Window
{
	/** the main Gtk struct */
	protected GdlPreviewWindow* gdlPreviewWindow;

	/** Get the main Gtk struct */
	public GdlPreviewWindow* getPreviewWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlPreviewWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlPreviewWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlPreviewWindow* gdlPreviewWindow, bool ownedRef = false)
	{
		this.gdlPreviewWindow = gdlPreviewWindow;
		super(cast(GtkWindow*)gdlPreviewWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_preview_window_get_type();
	}

	/**
	 * Creates a new #GdlPreviewWindow
	 *
	 * Returns: New #GdlPreviewWindow item.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdl_preview_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlPreviewWindow*) __p);
	}

	/**
	 * Update the size and position of the preview window. This function is
	 * called on drag_motion event to update the representation of the docking site
	 * in real time.
	 *
	 * Params:
	 *     rect = the new position and size of the window
	 */
	public void update(GdkRectangle* rect)
	{
		gdl_preview_window_update(gdlPreviewWindow, rect);
	}
}
