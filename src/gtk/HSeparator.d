/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = HSeparator
 * strct   = GtkHSeparator
 * realStrct=
 * clss    = HSeparator
 * extend  = 
 * prefixes:
 * 	- gtk_hseparator_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.HSeparator;

private import gtk.typedefs;

private import lib.gtk;


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
private import gtk.Separator;
public class HSeparator : Separator
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
		super(cast(GtkSeparator*)gtkHSeparator);
		this.gtkHSeparator = gtkHSeparator;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkHSeparator.
	 * Returns:
	 * a new GtkHSeparator.
	 * See Also
	 * GtkVSeparator
	 * a vertical separator.
	 */
	public this ()
	{
		// GtkWidget* gtk_hseparator_new (void);
		this(cast(GtkHSeparator*)gtk_hseparator_new() );
	}
}
