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
 * imports:
 * 	- gtk.Adjustment
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.Layout;

private import gtkc.gtktypes;

private import gtkc.gtk;


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
	protected void* getStruct()
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
			version(Exceptions) throw new Exception("Null gtkLayout passed to constructor.");
			else return;
		}
		super(cast(GtkContainer*)gtkLayout);
		this.gtkLayout = gtkLayout;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Adjustment, Adjustment, Layout)[] onSetScrollAdjustmentsListeners;
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
	extern(C) static void callBackSetScrollAdjustments(GtkLayout* layoutStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, Layout layout)
	{
		bool consumed = false;
		
		foreach ( void delegate(Adjustment, Adjustment, Layout) dlg ; layout.onSetScrollAdjustmentsListeners )
		{
			dlg(new Adjustment(arg1), new Adjustment(arg2), layout);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkLayout. Unless you have a specific adjustment
	 * you'd like the layout to use for scrolling, pass NULL for
	 * hadjustment and vadjustment.
	 * Params:
	 * hadjustment =  horizontal scroll adjustment, or NULL
	 * vadjustment =  vertical scroll adjustment, or NULL
	 */
	public this (Adjustment hadjustment, Adjustment vadjustment)
	{
		// GtkWidget* gtk_layout_new (GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		this(cast(GtkLayout*)gtk_layout_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct()) );
	}
	
	/**
	 * Adds child_widget to layout, at position (x,y).
	 * layout becomes the new parent container of child_widget.
	 * Params:
	 * childWidget =  child widget
	 * x =  X position of child widget
	 * y =  Y position of child widget
	 */
	public void put(Widget childWidget, int x, int y)
	{
		// void gtk_layout_put (GtkLayout *layout,  GtkWidget *child_widget,  gint x,  gint y);
		gtk_layout_put(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}
	
	/**
	 * Moves a current child of layout to a new position.
	 * Params:
	 * childWidget =  a current child of layout
	 * x =  X position to move to
	 * y =  Y position to move to
	 */
	public void move(Widget childWidget, int x, int y)
	{
		// void gtk_layout_move (GtkLayout *layout,  GtkWidget *child_widget,  gint x,  gint y);
		gtk_layout_move(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}
	
	/**
	 * Sets the size of the scrollable area of the layout.
	 * Params:
	 * width =  width of entire scrollable area
	 * height =  height of entire scrollable area
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
	 * width =  location to store the width set on layout, or NULL
	 * height =  location to store the height set on layout, or NULL
	 */
	public void getSize(uint* width, uint* height)
	{
		// void gtk_layout_get_size (GtkLayout *layout,  guint *width,  guint *height);
		gtk_layout_get_size(gtkLayout, width, height);
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
	 * Returns: horizontal scroll adjustment
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment* gtk_layout_get_hadjustment (GtkLayout *layout);
		return new Adjustment( gtk_layout_get_hadjustment(gtkLayout) );
	}
	
	/**
	 * This function should only be called after the layout has been
	 * placed in a GtkScrolledWindow or otherwise configured for
	 * scrolling. It returns the GtkAdjustment used for communication
	 * between the vertical scrollbar and layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Returns: vertical scroll adjustment
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment* gtk_layout_get_vadjustment (GtkLayout *layout);
		return new Adjustment( gtk_layout_get_vadjustment(gtkLayout) );
	}
	
	/**
	 * Sets the horizontal scroll adjustment for the layout.
	 * See GtkScrolledWindow, GtkScrollbar, GtkAdjustment for details.
	 * Params:
	 * adjustment =  new scroll adjustment
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
	 * adjustment =  new scroll adjustment
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		// void gtk_layout_set_vadjustment (GtkLayout *layout,  GtkAdjustment *adjustment);
		gtk_layout_set_vadjustment(gtkLayout, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	
	
	
}
