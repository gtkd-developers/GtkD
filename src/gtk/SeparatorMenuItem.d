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
 * inFile  = GtkSeparatorMenuItem.html
 * outPack = gtk
 * outFile = SeparatorMenuItem
 * strct   = GtkSeparatorMenuItem
 * realStrct=
 * ctorStrct=
 * clss    = SeparatorMenuItem
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_separator_menu_item_
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

module gtk.SeparatorMenuItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;





private import gtk.MenuItem;

/**
 * Description
 * The GtkSeparatorMenuItem is a separator used to group
 * items within a menu. It displays a horizontal line with a shadow to
 * make it appear sunken into the interface.
 */
public class SeparatorMenuItem : MenuItem
{
	
	/** the main Gtk struct */
	protected GtkSeparatorMenuItem* gtkSeparatorMenuItem;
	
	
	public GtkSeparatorMenuItem* getSeparatorMenuItemStruct()
	{
		return gtkSeparatorMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSeparatorMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSeparatorMenuItem* gtkSeparatorMenuItem)
	{
		if(gtkSeparatorMenuItem is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSeparatorMenuItem);
		if( ptr !is null )
		{
			this = cast(SeparatorMenuItem)ptr;
			return;
		}
		super(cast(GtkMenuItem*)gtkSeparatorMenuItem);
		this.gtkSeparatorMenuItem = gtkSeparatorMenuItem;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkSeparatorMenuItem.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_separator_menu_item_new (void);
		auto p = gtk_separator_menu_item_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_separator_menu_item_new()");
		}
		this(cast(GtkSeparatorMenuItem*) p);
	}
}
