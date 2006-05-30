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
 * outFile = VBox
 * strct   = GtkVBox
 * realStrct=
 * ctorStrct=
 * clss    = VBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vbox_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.VBox;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * GtkVBox is a container that organizes child widgets into a single column.
 * Use the GtkBox packing interface to determine the arrangement,
 * spacing, height, and alignment of GtkVBox children.
 * All children are allocated the same width.
 */
private import gtk.Box;
public class VBox : Box
{
	
	/** the main Gtk struct */
	protected GtkVBox* gtkVBox;
	
	
	public GtkVBox* getVBoxStruct()
	{
		return gtkVBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkVBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVBox* gtkVBox)
	{
		super(cast(GtkBox*)gtkVBox);
		this.gtkVBox = gtkVBox;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkVBox.
	 * homogeneous:
	 * TRUE if all children are to be given equal space allotments.
	 * spacing:
	 * the number of pixels to place by default between children.
	 * Returns:
	 * a new GtkVBox.
	 * See Also
	 * GtkHBox
	 * a sister class that organizes widgets into a row.
	 */
	public this (int homogeneous, int spacing)
	{
		// GtkWidget* gtk_vbox_new (gboolean homogeneous,  gint spacing);
		this(cast(GtkVBox*)gtk_vbox_new(homogeneous, spacing) );
	}
}
