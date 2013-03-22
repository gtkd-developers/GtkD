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
 * inFile  = gtk3-Orientable.html
 * outPack = gtk
 * outFile = OrientableT
 * strct   = GtkOrientable
 * realStrct=
 * ctorStrct=
 * clss    = OrientableT
 * interf  = OrientableIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_orientable_
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

module gtk.OrientableT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;






/**
 * The GtkOrientable interface is implemented by all widgets that can be
 * oriented horizontally or vertically. Historically, such widgets have been
 * realized as subclasses of a common base class (e.g GtkBox/GtkHBox/GtkVBox
 * or GtkScale/GtkHScale/GtkVScale). GtkOrientable is more flexible in that
 * it allows the orientation to be changed at runtime, allowing the widgets
 * to 'flip'.
 *
 * GtkOrientable was introduced in GTK+ 2.16.
 */
public template OrientableT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkOrientable* gtkOrientable;
	
	
	public GtkOrientable* getOrientableTStruct()
	{
		return cast(GtkOrientable*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Retrieves the orientation of the orientable.
	 * Since 2.16
	 * Returns: the orientation of the orientable.
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_orientable_get_orientation (GtkOrientable *orientable);
		return gtk_orientable_get_orientation(getOrientableTStruct());
	}
	
	/**
	 * Sets the orientation of the orientable.
	 * Since 2.16
	 * Params:
	 * orientation = the orientable's new orientation.
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		// void gtk_orientable_set_orientation (GtkOrientable *orientable,  GtkOrientation orientation);
		gtk_orientable_set_orientation(getOrientableTStruct(), orientation);
	}
}
