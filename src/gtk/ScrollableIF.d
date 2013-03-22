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
 * inFile  = GtkScrollable.html
 * outPack = gtk
 * outFile = ScrollableIF
 * strct   = GtkScrollable
 * realStrct=
 * ctorStrct=
 * clss    = ScrollableT
 * interf  = ScrollableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scrollable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ScrollableIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Adjustment;




/**
 * GtkScrollable is an interface that is implemented by widgets with native
 * scrolling ability.
 *
 * To implement this interface you should override the
 * "hadjustment" and "vadjustment" properties.
 *
 * Creating a scrollable widget
 *
 * All scrollable widgets should do the following.
 *
 *  When a parent widget sets the scrollable child widget's adjustments, the widget should populate the adjustments'
 *  "lower", "upper",
 *  "step-increment", "page-increment" and
 *  "page-size" properties and connect to the
 *  "value-changed" signal.
 *
 *  Because its preferred size is the size for a fully expanded widget,
 *  the scrollable widget must be able to cope with underallocations.
 *  This means that it must accept any value passed to its
 *  GtkWidgetClass.size_allocate() function.
 *
 *  When the parent allocates space to the scrollable child widget, the widget should update
 *  the adjustments' properties with new values.
 *
 *  When any of the adjustments emits the "value-changed" signal,
 *  the scrollable widget should scroll its contents.
 */
public interface ScrollableIF
{
	
	
	public GtkScrollable* getScrollableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Retrieves the GtkAdjustment used for horizontal scrolling.
	 * Returns: horizontal GtkAdjustment. [transfer none] Since 3.0
	 */
	public Adjustment getHadjustment();
	
	/**
	 * Sets the horizontal adjustment of the GtkScrollable.
	 * Params:
	 * hadjustment = a GtkAdjustment. [allow-none]
	 * Since 3.0
	 */
	public void setHadjustment(Adjustment hadjustment);
	
	/**
	 * Retrieves the GtkAdjustment used for vertical scrolling.
	 * Returns: vertical GtkAdjustment. [transfer none] Since 3.0
	 */
	public Adjustment getVadjustment();
	
	/**
	 * Sets the vertical adjustment of the GtkScrollable.
	 * Params:
	 * vadjustment = a GtkAdjustment. [allow-none]
	 * Since 3.0
	 */
	public void setVadjustment(Adjustment vadjustment);
	
	/**
	 * Gets the horizontal GtkScrollablePolicy.
	 * Returns: The horizontal GtkScrollablePolicy. Since 3.0
	 */
	public GtkScrollablePolicy getHscrollPolicy();
	
	/**
	 * Sets the GtkScrollablePolicy to determine whether
	 * horizontal scrolling should start below the minimum width or
	 * below the natural width.
	 * Params:
	 * policy = the horizontal GtkScrollablePolicy
	 * Since 3.0
	 */
	public void setHscrollPolicy(GtkScrollablePolicy policy);
	
	/**
	 * Gets the vertical GtkScrollablePolicy.
	 * Returns: The vertical GtkScrollablePolicy. Since 3.0
	 */
	public GtkScrollablePolicy getVscrollPolicy();
	
	/**
	 * Sets the GtkScrollablePolicy to determine whether
	 * vertical scrolling should start below the minimum height or
	 * below the natural height.
	 * Params:
	 * policy = the vertical GtkScrollablePolicy
	 * Since 3.0
	 */
	public void setVscrollPolicy(GtkScrollablePolicy policy);
}
