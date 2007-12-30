/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.DrawingArea;

private import gtkc.gtktypes;

private import gtkc.gtk;





private import gtk.Widget;

/**
 * Description
 * The GtkDrawingArea widget is used for creating custom user interface
 * elements. It's essentially a blank widget; you can draw on
 * widget->window. After creating a drawing area,
 * the application may want to connect to:
 *  Mouse and button press signals to respond to input from
 *  the user. (Use gtk_widget_add_events() to enable events
 *  you wish to receive.)
 *  The "realize" signal to take any necessary actions
 *  when the widget is instantiated on a particular display.
 *  (Create GDK resources in response to this signal.)
 *  The "configure_event" signal to take any necessary actions
 *  when the widget changes size.
 *  The "expose_event" signal to handle redrawing the
 *  contents of the widget.
 * The following code portion demonstrates using a drawing
 * area to display a circle in the normal widget foreground
 * color.
 * Note that GDK automatically clears the exposed area
 * to the background color before sending the expose event, and
 * that drawing is implicitly clipped to the exposed area.
 * Example43.Simple GtkDrawingArea usage.
 * gboolean
 * expose_event_callback (GtkWidget *widget, GdkEventExpose *event, gpointer data)
 * {
	 *  gdk_draw_arc (widget->window,
	 *  widget->style->fg_gc[GTK_WIDGET_STATE (widget)],
	 *  TRUE,
	 *  0, 0, widget->allocation.width, widget->allocation.height,
	 *  0, 64 * 360);
	 *  return TRUE;
 * }
 * [...]
 *  GtkWidget *drawing_area = gtk_drawing_area_new ();
 *  gtk_widget_set_size_request (drawing_area, 100, 100);
 *  g_signal_connect (G_OBJECT (drawing_area), "expose_event",
 *  G_CALLBACK (expose_event_callback), NULL);
 * Expose events are normally delivered when a drawing area first comes
 * onscreen, or when it's covered by another window and then uncovered
 * (exposed). You can also force an expose event by adding to the "damage
 * region" of the drawing area's window; gtk_widget_queue_draw_area() and
 * gdk_window_invalidate_rect() are equally good ways to do this. You'll
 * then get an expose event for the invalid region.
 * The available routines for drawing are documented on the GDK Drawing Primitives page.
 * See also gdk_draw_pixbuf() for drawing a GdkPixbuf.
 * To receive mouse events on a drawing area, you will need to enable
 * them with gtk_widget_add_events(). To receive keyboard events, you
 * will need to set the GTK_CAN_FOCUS flag on the drawing area, and
 * should probably draw some user-visible indication that the drawing
 * area is focused. Use the GTK_HAS_FOCUS() macro in your expose event
 * handler to decide whether to draw the focus indicator. See
 * gtk_paint_focus() for one way to draw focus.
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
	protected void* getStruct()
	{
		return cast(void*)gtkDrawingArea;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkDrawingArea* gtkDrawingArea)
	{
		if(gtkDrawingArea is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkDrawingArea passed to constructor.");
			else return;
		}
		super(cast(GtkWidget*)gtkDrawingArea);
		this.gtkDrawingArea = gtkDrawingArea;
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
	 */
	public this ()
	{
		// GtkWidget* gtk_drawing_area_new (void);
		this(cast(GtkDrawingArea*)gtk_drawing_area_new() );
	}
	
	/**
	 * Warning
	 * gtk_drawing_area_size is deprecated and should not be used in newly-written code.
	 * (Use gtk_widget_set_size_request() instead.)
	 * Sets the size that the drawing area will request
	 * in response to a "size_request" signal. The
	 * drawing area may actually be allocated a size
	 * larger than this depending on how it is packed
	 * within the enclosing containers.
	 * Params:
	 * width = the width to request.
	 * height = the height to request.
	 */
	public void size(int width, int height)
	{
		// void gtk_drawing_area_size (GtkDrawingArea *darea,  gint width,  gint height);
		gtk_drawing_area_size(gtkDrawingArea, width, height);
	}
}
