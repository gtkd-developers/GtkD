/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * 	- gdk.Pixmap
 * 	- gdk.Pixbuf
 * 	- gtk.Widget
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.OffscreenWindow;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gdk.Pixmap;
private import gdk.Pixbuf;
private import gtk.Widget;



private import gtk.Window;

/**
 * Description
 * GtkOffscreenWindow is strictly intended to be used for obtaining
 * snapshots of widgets that are not part of a normal widget hierarchy.
 * It differs from gtk_widget_get_snapshot() in that the widget you
 * want to get a snapshot of need not be displayed on the user's screen
 * as a part of a widget hierarchy. However, since GtkOffscreenWindow
 * is a toplevel widget you cannot obtain snapshots of a full window
 * with it since you cannot pack a toplevel widget in another toplevel.
 * The idea is to take a widget and manually set the state of it,
 * add it to a GtkOffscreenWindow and then retrieve the snapshot
 * as a GdkPixmap or GdkPixbuf.
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
		if(gtkOffscreenWindow is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkOffscreenWindow);
		if( ptr !is null )
		{
			this = cast(OffscreenWindow)ptr;
			return;
		}
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
	 * snapshots of widgets without showing them on the screen. For
	 * widgets that are on the screen and part of a normal widget
	 * hierarchy, gtk_widget_get_snapshot() can be used instead.
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
	 * a GdkPixmap. If you need to keep this around over window
	 * resizes then you should add a reference to it.
	 * Since 2.20
	 * Returns: A GdkPixmap pointer to the offscreen pixmap, or NULL.
	 */
	public Pixmap getPixmap()
	{
		// GdkPixmap * gtk_offscreen_window_get_pixmap (GtkOffscreenWindow *offscreen);
		auto p = gtk_offscreen_window_get_pixmap(gtkOffscreenWindow);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Retrieves a snapshot of the contained widget in the form of
	 * a GdkPixbuf. This is a new pixbuf with a reference count of 1,
	 * and the application should unreference it once it is no longer
	 * needed.
	 * Since 2.20
	 * Returns: A GdkPixbuf pointer, or NULL.
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_offscreen_window_get_pixbuf (GtkOffscreenWindow *offscreen);
		auto p = gtk_offscreen_window_get_pixbuf(gtkOffscreenWindow);
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
}
