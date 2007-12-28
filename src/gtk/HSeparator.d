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
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hseparator_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.HSeparator;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;





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
		version(noAssert)
		{
			if ( gtkHSeparator is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkHSeparator is null on constructor").newline;
				}
				else
				{
					printf("struct gtkHSeparator is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkHSeparator !is null, "struct gtkHSeparator is null on constructor");
		}
		super(cast(GtkSeparator*)gtkHSeparator);
		this.gtkHSeparator = gtkHSeparator;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkHSeparator.
	 */
	public this ()
	{
		// GtkWidget* gtk_hseparator_new (void);
		this(cast(GtkHSeparator*)gtk_hseparator_new() );
	}
}
