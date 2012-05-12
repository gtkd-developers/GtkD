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
 * inFile  = GtkLayout.html
 * outPack = gtk
 * outFile = Layout
 * strct   = GtkLayout
 * realStrct=
 * ctorStrct=
 * clss    = Layout
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_layout_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- gtk.Adjustment
 * 	- gtk.Widget
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Layout;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.Window;
private import gtk.Adjustment;
private import gtk.Widget;



private import gtk.Container;

/**
 * Description
 * GtkLayout is similar to GtkDrawingArea in that it's a "blank slate"
 * and doesn't do anything but paint a blank background by default. It's
 * different in that it supports scrolling natively (you can add it to a
 * GtkScrolledWindow), and it can contain child widgets, since it's a
 * GtkContainer. However if you're just going to draw, a GtkDrawingArea
 * is a better choice since it has lower overhead.
 * When handling expose events on a GtkLayout, you must draw to
 * GTK_LAYOUT (layout)->bin_window, rather than to
 * GTK_WIDGET (layout)->window, as you would for a drawing
 * area.
 */
public class Layout : Container
{
	
	/** the main Gtk struct */
	protected GtkLayout* gtkLayout;
	
	
	public GtkLayout* getLayoutStruct()
	{
		return gtkLayout;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLayout;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkLayout* gtkLayout)
	{
		if(gtkLayout is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkLayout);
		if( ptr !is null )
		{
			this = cast(Layout)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkLayout);
		this.gtkLayout = gtkLayout;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkLayout = cast(GtkLayout*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Adjustment, Adjustment, Layout)[] onSetScrollAdjustmentsListeners;
	/**
	 * Set the scroll adjustments for the layout. Usually scrolled containers
	 * like GtkScrolledWindow will emit this signal to connect two instances
	 * of GtkScrollbar to the scroll directions of the GtkLayout.
	 * See Also
	 * GtkDrawingArea, GtkScrolledWindow
	 */
	void addOnSetScrollAdjustments(void delegate(Adjustment, Adjustment, Layout) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkLayout* horizontalStruct, GtkAdjustment* vertical, GtkAdjustment* arg2, Layout layout)
	{
		foreach ( void delegate(Adjustment, Adjustment, Layout) dlg ; layout.onSetScrollAdjustmentsListeners )
		{
			dlg(new Adjustment(vertical), new Adjustment(arg2), layout);
		}
	}
	
	
	/**
	 * Creates a new GtkLayout. Unless you have a specific adjustment
	 * you'd like the layout to use for scrolling, pass NULL for
	 * hadjustment and vadjustment.
	 * Params:
	 * hadjustment = horizontal scroll adjustment, or NULL. [allow-none]
	 * vadjustment = vertical scroll adjustment, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment hadjustment, Adjustment vadjustment)
	{
		// GtkWidget * gtk_layout_new (GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		auto p = gtk_layout_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_layout_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct())");
		}
		this(cast(GtkLayout*) p);
	}
	
	/**
	 * Adds child_widget to layout, at position (x,y).
	 * layout becomes the new parent container of child_widget.
	 * Params:
	 * childWidget = child widget
	 * x = X position of child widget
	 * y = Y position of child widget
	 */
	public void put(Widget childWidget, int x, int y)
	{
		// void gtk_layout_put (GtkLayout *layout,  GtkWidget *child_widget,  gint x,  gint y);
		gtk_layout_put(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}
	
	/**
	 * Moves a current child of layout to a new position.
	 * Params:
	 * childWidget = a current child of layout
	 * x = X position to move to
	 * y = Y position to move to
	 */
	public void move(Widget childWidget, int x, int y)
	{
		// void gtk_layout_move (GtkLayout *layout,  GtkWidget *child_widget,  gint x,  gint y);
		gtk_layout_move(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}
	
	/**
	 * Sets the size of the scrollable area of the layout.
	 * Params:
	 * width = width of entire scrollable area
	 * height = height of entire scrollable area
	 */
	public void setSize(uint width, uint height)
	{
		// void gtk_layout_set_size (GtkLayout *layout,  guint width,  guint height);
		gtk_layout_set_size(gtkLayout, width, height);
	}
	
	/**
	 * Gets the size that has been set on the layout, and that determines
	 * the total extents of the layout's scrollbar area. See
	 * gtk_layout_set_size().
	 * Params:
	 * width = location to store the width set on
	 * layout, or NULL. [out][allow-none]
	 * height = location to store the height set on
	 * layout, or NULL. [out][allow-none]
	 */
	public void getSize(out uint width, out uint height)
	{
		// void gtk_layout_get_size (GtkLayout *layout,  guint *width,  guint *height);
		gtk_layout_get_size(gtkLayout, &width, &height);
	}
	
	/**
	 * Warning
	 * gtk_layout_freeze is deprecated and should not be used in newly-written code.
	 * This is a deprecated function, it doesn't do anything useful.
	 */
	public void freeze()
	{
		// void gtk_layout_freeze (GtkLayout *layout);
		gtk_layout_freeze(gtkLayout);
	}
	
	/**
	 * Warning
	 * gtk_layout_thaw is deprecated and should not be used in newly-written code.
	 * This is a deprecated function, it doesn't do anything useful.
	 */
	public void thaw()
	{
		// void gtk_layout_thaw (GtkLayout *layout);
		gtk_layout_thaw(gtkLayout);
	}
	
	/**
	 * This function should only be called after the layout has been
	 * placed in a GtkScrolledWindow or otherwise configured for
	 * scrolling. It returns the GtkAdjustment used for communication
	 * between the horizontal scrollbar and layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Returns: horizontal scroll adjustment. [transfer none]
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment * gtk_layout_get_hadjustment (GtkLayout *layout);
		auto p = gtk_layout_get_hadjustment(gtkLayout);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * This function should only be called after the layout has been
	 * placed in a GtkScrolledWindow or otherwise configured for
	 * scrolling. It returns the GtkAdjustment used for communication
	 * between the vertical scrollbar and layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Returns: vertical scroll adjustment. [transfer none]
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment * gtk_layout_get_vadjustment (GtkLayout *layout);
		auto p = gtk_layout_get_vadjustment(gtkLayout);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Sets the horizontal scroll adjustment for the layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Params:
	 * adjustment = new scroll adjustment. [allow-none]
	 */
	public void setHadjustment(Adjustment adjustment)
	{
		// void gtk_layout_set_hadjustment (GtkLayout *layout,  GtkAdjustment *adjustment);
		gtk_layout_set_hadjustment(gtkLayout, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the vertical scroll adjustment for the layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Params:
	 * adjustment = new scroll adjustment. [allow-none]
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		// void gtk_layout_set_vadjustment (GtkLayout *layout,  GtkAdjustment *adjustment);
		gtk_layout_set_vadjustment(gtkLayout, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Retrieve the bin window of the layout used for drawing operations.
	 * Since 2.14
	 * Returns: a GdkWindow. [transfer none]
	 */
	public Window getBinWindow()
	{
		// GdkWindow * gtk_layout_get_bin_window (GtkLayout *layout);
		auto p = gtk_layout_get_bin_window(gtkLayout);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
	}
}
