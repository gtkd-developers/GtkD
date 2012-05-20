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
 * inFile  = GtkSeparator.html
 * outPack = gtk
 * outFile = Separator
 * strct   = GtkSeparator
 * realStrct=
 * ctorStrct=
 * clss    = Separator
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_separator
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Separator;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Widget;

/**
 * Description
 * The GtkSeparator widget is the base class for GtkHSeparator and
 * GtkVSeparator. It can be used in the same way as these, by setting
 * the "orientation" property suitably.
 */
public class Separator : Widget, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkSeparator* gtkSeparator;
	
	
	public GtkSeparator* getSeparatorStruct()
	{
		return gtkSeparator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSeparator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSeparator* gtkSeparator)
	{
		if(gtkSeparator is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSeparator);
		if( ptr !is null )
		{
			this = cast(Separator)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkSeparator);
		this.gtkSeparator = gtkSeparator;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSeparator = cast(GtkSeparator*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkSeparator);
	
	/**
	 */
	
	/**
	 * Creates a new GtkSeparator with the given orientation.
	 * Params:
	 * orientation = the separator's orientation.
	 * Returns: a new GtkSeparator. Since 3.0
	 */
	public static GtkWidget* _New(GtkOrientation orientation)
	{
		// GtkWidget * gtk_separator_new (GtkOrientation orientation);
		return gtk_separator_new(orientation);
	}
}
