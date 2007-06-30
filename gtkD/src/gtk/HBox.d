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
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.HBox;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;






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
		version(noAssert)
		{
			if ( gtkHBox is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkHBox is null on constructor").newline;
				}
				else
				{
					printf("struct gtkHBox is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkHBox !is null, "struct gtkHBox is null on constructor");
		}
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
