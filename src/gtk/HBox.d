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
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkHBox.html
 * outPack = gtk
 * outFile = HBox
 * strct   = GtkHBox
 * realStrct=
 * ctorStrct=
 * clss    = HBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hbox_
 * 	- gtk_
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

module gtk.HBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;





private import gtk.Box;

/**
 * Description
 * GtkHBox is a container that organizes child widgets into a single row.
 * Use the GtkBox packing interface to determine the arrangement,
 * spacing, width, and alignment of GtkHBox children.
 * All children are allocated the same height.
 */
public class HBox : Box
{
	
	/** the main Gtk struct */
	protected GtkHBox* gtkHBox;
	
	
	public GtkHBox* getHBoxStruct()
	{
		return gtkHBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHBox* gtkHBox)
	{
		if(gtkHBox is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkHBox);
		if( ptr !is null )
		{
			this = cast(HBox)ptr;
			return;
		}
		super(cast(GtkBox*)gtkHBox);
		this.gtkHBox = gtkHBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHBox = cast(GtkHBox*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkHBox.
	 * Params:
	 * homogeneous = TRUE if all children are to be given equal space allotments.
	 * spacing = the number of pixels to place by default between children.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int homogeneous, int spacing)
	{
		// GtkWidget * gtk_hbox_new (gboolean homogeneous,  gint spacing);
		auto p = gtk_hbox_new(homogeneous, spacing);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_hbox_new(homogeneous, spacing)");
		}
		this(cast(GtkHBox*) p);
	}
}
