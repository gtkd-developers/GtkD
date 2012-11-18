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

/*
 * Conversion parameters:
 * inFile  = GtkOffscreenWindow.html
 * outPack = gtk
 * outFile = OffscreenWindow
 * strct   = GtkOffscreenWindow
 * realStrct=
 * ctorStrct=
 * clss    = OffscreenWindow
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_offscreen_window_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Surface
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.OffscreenWindow;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import cairo.Surface;
private import gdk.Pixbuf;



private import gtk.Window;

/**
 * Description
 * GtkOffscreenWindow is strictly intended to be used for obtaining
 * snapshots of widgets that are not part of a normal widget hierarchy.
 * Since GtkOffscreenWindow is a toplevel widget you cannot obtain
 * snapshots of a full window with it since you cannot pack a toplevel
 * widget in another toplevel.
 * The idea is to take a widget and manually set the state of it,
 * add it to a GtkOffscreenWindow and then retrieve the snapshot
 * as a cairo_surface_t or GdkPixbuf.
 * GtkOffscreenWindow derives from GtkWindow only as an implementation
 * detail. Applications should not use any API specific to GtkWindow
 * to operate on this object. It should be treated as a GtkBin that
 * has no parent widget.
 * When contained offscreen widgets are redrawn, GtkOffscreenWindow
 * will emit a "damage-event" signal.
 */
public class OffscreenWindow : Window
{
	
	/** the main Gtk struct */
	protected GtkOffscreenWindow* gtkOffscreenWindow;
	
	
	public GtkOffscreenWindow* getOffscreenWindowStruct()
	{
		return gtkOffscreenWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOffscreenWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkOffscreenWindow* gtkOffscreenWindow)
	{
		super(cast(GtkWindow*)gtkOffscreenWindow);
		this.gtkOffscreenWindow = gtkOffscreenWindow;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkOffscreenWindow = cast(GtkOffscreenWindow*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a toplevel container widget that is used to retrieve
	 * snapshots of widgets without showing them on the screen.
	 * Since 2.20
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_offscreen_window_new (void);
		auto p = gtk_offscreen_window_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_offscreen_window_new()");
		}
		this(cast(GtkOffscreenWindow*) p);
	}
	
	/**
	 * Retrieves a snapshot of the contained widget in the form of
	 * a cairo_surface_t. If you need to keep this around over window
	 * resizes then you should add a reference to it.
	 * Since 2.20
	 * Returns: A cairo_surface_t pointer to the offscreen surface, or NULL. [transfer none]
	 */
	public Surface getSurface()
	{
		// cairo_surface_t * gtk_offscreen_window_get_surface (GtkOffscreenWindow *offscreen);
		auto p = gtk_offscreen_window_get_surface(gtkOffscreenWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Surface)(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Retrieves a snapshot of the contained widget in the form of
	 * a GdkPixbuf. This is a new pixbuf with a reference count of 1,
	 * and the application should unreference it once it is no longer
	 * needed.
	 * Since 2.20
	 * Returns: A GdkPixbuf pointer, or NULL. [transfer full]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_offscreen_window_get_pixbuf (GtkOffscreenWindow *offscreen);
		auto p = gtk_offscreen_window_get_pixbuf(gtkOffscreenWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
}
