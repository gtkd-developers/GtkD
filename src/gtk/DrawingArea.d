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
 * inFile  = GtkDrawingArea.html
 * outPack = gtk
 * outFile = DrawingArea
 * strct   = GtkDrawingArea
 * realStrct=
 * ctorStrct=
 * clss    = DrawingArea
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_drawing_area_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.DrawingArea;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.Widget;

/**
 * The GtkDrawingArea widget is used for creating custom user interface
 * elements. It's essentially a blank widget; you can draw on it. After
 * creating a drawing area, the application may want to connect to:
 *
 *  Mouse and button press signals to respond to input from
 *  the user. (Use gtk_widget_add_events() to enable events
 *  you wish to receive.)
 *
 *  The "realize" signal to take any necessary actions
 *  when the widget is instantiated on a particular display.
 *  (Create GDK resources in response to this signal.)
 *
 *  The "configure-event" signal to take any necessary
 *  actions when the widget changes size.
 *
 *  The "draw" signal to handle redrawing the
 *  contents of the widget.
 *
 * The following code portion demonstrates using a drawing
 * area to display a circle in the normal widget foreground
 * color.
 *
 * Note that GDK automatically clears the exposed area to the
 * background color before sending the expose event, and that
 * drawing is implicitly clipped to the exposed area.
 *
 * $(DDOC_COMMENT example)
 *
 * Draw signals are normally delivered when a drawing area first comes
 * onscreen, or when it's covered by another window and then uncovered.
 * You can also force an expose event by adding to the "damage region"
 * of the drawing area's window; gtk_widget_queue_draw_area() and
 * gdk_window_invalidate_rect() are equally good ways to do this.
 * You'll then get a draw signal for the invalid region.
 *
 * The available routines for drawing are documented on the GDK Drawing Primitives page
 * and the cairo documentation.
 *
 * To receive mouse events on a drawing area, you will need to enable
 * them with gtk_widget_add_events(). To receive keyboard events, you
 * will need to set the "can-focus" property on the drawing area, and you
 * should probably draw some user-visible indication that the drawing
 * area is focused. Use gtk_widget_has_focus() in your expose event
 * handler to decide whether to draw the focus indicator. See
 * gtk_render_focus() for one way to draw focus.
 */
public class DrawingArea : Widget
{
	
	/** the main Gtk struct */
	protected GtkDrawingArea* gtkDrawingArea;
	
	
	public GtkDrawingArea* getDrawingAreaStruct()
	{
		return gtkDrawingArea;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDrawingArea;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkDrawingArea* gtkDrawingArea)
	{
		super(cast(GtkWidget*)gtkDrawingArea);
		this.gtkDrawingArea = gtkDrawingArea;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkDrawingArea = cast(GtkDrawingArea*)obj;
	}
	
	/**
	 * Create a new DrawingArea and sets the SizeRequest
	 * Params:
	 *    	width =
	 *    	height =
	 */
	this(int width, int height)
	{
		this();
		setSizeRequest(width, height);
	}
	
	/**
	 */
	
	/**
	 * Creates a new drawing area.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_drawing_area_new (void);
		auto p = gtk_drawing_area_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_drawing_area_new()");
		}
		this(cast(GtkDrawingArea*) p);
	}
}
