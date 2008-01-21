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
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_separator_menu_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.SeparatorMenuItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.MenuItem;

/**
 * Description
 * The GtkSeparatorMenuItem is a separator used to group
 * items within a menu. It displays a horizontal line with a shadow to
 * make it appear sunken into the interface.
 */
public class SeparatorMenuItem : MenuItem, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkSeparatorMenuItem* gtkSeparatorMenuItem;
	
	
	public GtkSeparatorMenuItem* getSeparatorMenuItemStruct()
	{
		return gtkSeparatorMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
			version(Exceptions) throw new Exception("Null gtkSeparatorMenuItem passed to constructor.");
			else return;
		}
		super(cast(GtkMenuItem*)gtkSeparatorMenuItem);
		this.gtkSeparatorMenuItem = gtkSeparatorMenuItem;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkSeparatorMenuItem);
	
	/**
	 */
	
	/**
	 * Creates a new GtkSeparatorMenuItem.
	 */
	public this ()
	{
		// GtkWidget* gtk_separator_menu_item_new (void);
		auto p = gtk_separator_menu_item_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkSeparatorMenuItem*) p);
	}
}
