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
private import gobject.ObjectG;





private import gtk.Box;

/**
 * GtkHBox is a container that organizes child widgets into a single row.
 *
 * Use the GtkBox packing interface to determine the arrangement,
 * spacing, width, and alignment of GtkHBox children.
 *
 * All children are allocated the same height.
 *
 * GtkHBox has been deprecated. You can use GtkBox instead, which is a
 * very quick and easy change. If you have derived your own classes from
 * GtkHBox, you can simply change the inheritance to derive directly
 * from GtkBox. No further changes are needed, since the default
 * value of the "orientation" property is
 * GTK_ORIENTATION_HORIZONTAL.
 * If you want your code to be future-proof, the recommendation is to
 * switch to GtkGrid, since GtkBox is going to be deprecated in favor
 * of the more flexible grid widget eventually. For more information
 * about migrating to GtkGrid, see Migrating from other containers to GtkGrid
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
	 * Warning
	 * gtk_hbox_new has been deprecated since version 3.2 and should not be used in newly-written code. You can use gtk_box_new() with GTK_ORIENTATION_HORIZONTAL instead,
	 *  which is a quick and easy change. But the recommendation is to switch to
	 *  GtkGrid, since GtkBox is going to go away eventually.
	 *  See Migrating from other containers to GtkGrid.
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
