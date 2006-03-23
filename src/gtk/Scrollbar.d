/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Scrollbar
 * strct   = GtkScrollbar
 * realStrct=
 * clss    = Scrollbar
 * template for:
 * extend  = 
 * prefixes:
 * 	- gtk_scrollbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.Scrollbar;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * The GtkScrollbar widget is an abstract base class for GtkHScrollbar and
 * GtkVScrollbar. It is not very useful in itself.
 * The position of the thumb in a scrollbar is controlled by the scroll
 * adjustments. See GtkAdjustment for the fields in an adjustment - for
 * GtkScrollbar, the "value" field represents the position of the
 * scrollbar, which must be between the "lower" field and "upper -
 * page_size." The "page_size" field represents the size of the visible
 * scrollable area. The "step_increment" and "page_increment" fields are
 * used when the user asks to step down (using the small stepper arrows)
 * or page down (using for example the PageDown key).
 */
private import gtk.Range;
public class Scrollbar : Range
{
	
	/** the main Gtk struct */
	protected GtkScrollbar* gtkScrollbar;
	
	
	public GtkScrollbar* getScrollbarStruct()
	{
		return gtkScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkScrollbar* gtkScrollbar)
	{
		super(cast(GtkRange*)gtkScrollbar);
		this.gtkScrollbar = gtkScrollbar;
	}
	
	/**
	 */
	
	
	
	
	
	
}
