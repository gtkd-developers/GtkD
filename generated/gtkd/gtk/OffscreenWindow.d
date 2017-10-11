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


module gtk.OffscreenWindow;

private import cairo.Surface;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkOffscreenWindow is strictly intended to be used for obtaining
 * snapshots of widgets that are not part of a normal widget hierarchy.
 * Since #GtkOffscreenWindow is a toplevel widget you cannot obtain
 * snapshots of a full window with it since you cannot pack a toplevel
 * widget in another toplevel.
 * 
 * The idea is to take a widget and manually set the state of it,
 * add it to a GtkOffscreenWindow and then retrieve the snapshot
 * as a #cairo_surface_t or #GdkPixbuf.
 * 
 * GtkOffscreenWindow derives from #GtkWindow only as an implementation
 * detail.  Applications should not use any API specific to #GtkWindow
 * to operate on this object.  It should be treated as a #GtkBin that
 * has no parent widget.
 * 
 * When contained offscreen widgets are redrawn, GtkOffscreenWindow
 * will emit a #GtkWidget::damage-event signal.
 */
public class OffscreenWindow : Window
{
	/** the main Gtk struct */
	protected GtkOffscreenWindow* gtkOffscreenWindow;

	/** Get the main Gtk struct */
	public GtkOffscreenWindow* getOffscreenWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkOffscreenWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOffscreenWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkOffscreenWindow* gtkOffscreenWindow, bool ownedRef = false)
	{
		this.gtkOffscreenWindow = gtkOffscreenWindow;
		super(cast(GtkWindow*)gtkOffscreenWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_offscreen_window_get_type();
	}

	/**
	 * Creates a toplevel container widget that is used to retrieve
	 * snapshots of widgets without showing them on the screen.
	 *
	 * Returns: A pointer to a #GtkWidget
	 *
	 * Since: 2.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_offscreen_window_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkOffscreenWindow*) p);
	}

	/**
	 * Retrieves a snapshot of the contained widget in the form of
	 * a #GdkPixbuf.  This is a new pixbuf with a reference count of 1,
	 * and the application should unreference it once it is no longer
	 * needed.
	 *
	 * Returns: A #GdkPixbuf pointer, or %NULL.
	 *
	 * Since: 2.20
	 */
	public Pixbuf getPixbuf()
	{
		auto p = gtk_offscreen_window_get_pixbuf(gtkOffscreenWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Retrieves a snapshot of the contained widget in the form of
	 * a #cairo_surface_t.  If you need to keep this around over window
	 * resizes then you should add a reference to it.
	 *
	 * Returns: A #cairo_surface_t pointer to the offscreen
	 *     surface, or %NULL.
	 *
	 * Since: 2.20
	 */
	public Surface getSurface()
	{
		auto p = gtk_offscreen_window_get_surface(gtkOffscreenWindow);

		if(p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) p);
	}
}
