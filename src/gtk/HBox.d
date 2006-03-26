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
 * outFile = HBox
 * strct   = GtkHBox
 * realStrct=
 * clss    = HBox
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hbox_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.HBox;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * GtkHBox is a container that organizes child widgets into a single row.
 * Use the GtkBox packing interface to determine the arrangement,
 * spacing, width, and alignment of GtkHBox children.
 * All children are allocated the same height.
 */
private import gtk.Box;
public class HBox : Box
{
	
	/** the main Gtk struct */
	protected GtkHBox* gtkHBox;
	
	
	public GtkHBox* getHBoxStruct()
	{
		return gtkHBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHBox* gtkHBox)
	{
		super(cast(GtkBox*)gtkHBox);
		this.gtkHBox = gtkHBox;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkHBox.
	 * homogeneous:
	 * TRUE if all children are to be given equal space allotments.
	 * spacing:
	 * the number of pixels to place by default between children.
	 * Returns:
	 * a new GtkHBox.
	 * See Also
	 * GtkVBox
	 * a sister class that organizes widgets into a column.
	 */
	public this (int homogeneous, int spacing)
	{
		// GtkWidget* gtk_hbox_new (gboolean homogeneous,  gint spacing);
		this(cast(GtkHBox*)gtk_hbox_new(homogeneous, spacing) );
	}
}
