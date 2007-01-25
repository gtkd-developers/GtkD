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
 * inFile  = GtkBin.html
 * outPack = gtk
 * outFile = Bin
 * strct   = GtkBin
 * realStrct=
 * ctorStrct=
 * clss    = Bin
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_bin_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Bin;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.Widget;

/**
 * Description
 * The GtkBin widget is a container with just one child.
 * It is not very useful itself, but it is useful for deriving subclasses,
 * since it provides common code needed for handling a single child widget.
 * Many GTK+ widgets are subclasses of GtkBin, including GtkWindow, GtkButton,
 * GtkFrame, GtkHandleBox, and GtkScrolledWindow.
 */
private import gtk.Container;
public class Bin : Container
{
	
	/** the main Gtk struct */
	protected GtkBin* gtkBin;
	
	
	public GtkBin* getBinStruct()
	{
		return gtkBin;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBin;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBin* gtkBin)
	{
		super(cast(GtkContainer*)gtkBin);
		this.gtkBin = gtkBin;
	}
	
	/**
	 */
	
	
	/**
	 * Gets the child of the GtkBin, or NULL if the bin contains
	 * no child widget. The returned widget does not have a reference
	 * added, so you do not need to unref it.
	 * bin:
	 *  a GtkBin
	 * Returns:
	 *  pointer to child of the GtkBin
	 */
	public Widget getChild()
	{
		// GtkWidget* gtk_bin_get_child (GtkBin *bin);
		return new Widget( gtk_bin_get_child(gtkBin) );
	}
}
