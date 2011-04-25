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
 * 	- gtk_
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
 * The GtkSeparator widget is an abstract class, used only for deriving the
 * subclasses GtkHSeparator and GtkVSeparator.
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
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSeparator = cast(GtkSeparator*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkSeparator);
	
	/**
	 */
}
