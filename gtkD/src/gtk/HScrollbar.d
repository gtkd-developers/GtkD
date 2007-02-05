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
 * inFile  = GtkHScrollbar.html
 * outPack = gtk
 * outFile = HScrollbar
 * strct   = GtkHScrollbar
 * realStrct=
 * ctorStrct=
 * clss    = HScrollbar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hscrollbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 */

module gtk.HScrollbar;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.Adjustment;



/**
 * Description
 * The GtkHScrollbar widget is a widget arranged horizontally creating a
 * scrollbar. See GtkScrollbar for details on
 * scrollbars. GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left NULL in which case one
 * will be created for you. See GtkAdjustment for details.
 */
private import gtk.Scrollbar;
public class HScrollbar : Scrollbar
{
	
	/** the main Gtk struct */
	protected GtkHScrollbar* gtkHScrollbar;
	
	
	public GtkHScrollbar* getHScrollbarStruct()
	{
		return gtkHScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHScrollbar* gtkHScrollbar)
	{
		super(cast(GtkScrollbar*)gtkHScrollbar);
		this.gtkHScrollbar = gtkHScrollbar;
	}
	/**
	 * Allows constructors from Widget - needed for Glade support
	 */
	private import gtk.Widget;
	public this (Widget  parent)
	{
		this(cast(GtkHScrollbar*) parent.getWidgetStruct());
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new horizontal scrollbar.
	 * adjustment:
	 * the GtkAdjustment to use, or NULL to create a new adjustment.
	 * Returns:
	 * the new GtkHScrollbar.
	 * See Also
	 * GtkScrollbar, GtkScrolledWindow
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget* gtk_hscrollbar_new (GtkAdjustment *adjustment);
		this(cast(GtkHScrollbar*)gtk_hscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct()) );
	}
}
