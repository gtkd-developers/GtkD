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
 * inFile  = GtkHSeparator.html
 * outPack = gtk
 * outFile = HSeparator
 * strct   = GtkHSeparator
 * realStrct=
 * ctorStrct=
 * clss    = HSeparator
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_hseparator_
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

module gtk.HSeparator;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Separator;

/**
 * Description
 * The GtkHSeparator widget is a horizontal separator, used to group the
 * widgets within a window. It displays a horizontal line with a shadow to
 * make it appear sunken into the interface.
 * Note
 * The GtkHSeparator widget is not used as a separator within menus.
 * To create a separator in a menu create an empty GtkSeparatorMenuItem
 * widget using gtk_separator_menu_item_new() and add it to the menu with
 * gtk_menu_shell_append().
 */
public class HSeparator : Separator, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkHSeparator* gtkHSeparator;
	
	
	public GtkHSeparator* getHSeparatorStruct()
	{
		return gtkHSeparator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHSeparator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHSeparator* gtkHSeparator)
	{
		if(gtkHSeparator is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkHSeparator passed to constructor.");
			else return;
		}
		super(cast(GtkSeparator*)gtkHSeparator);
		this.gtkHSeparator = gtkHSeparator;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkHSeparator);
	
	/**
	 */
	
	/**
	 * Creates a new GtkHSeparator.
	 */
	public this ()
	{
		// GtkWidget* gtk_hseparator_new (void);
		auto p = gtk_hseparator_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkHSeparator*) p);
	}
}
