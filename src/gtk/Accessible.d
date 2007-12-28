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
 * inFile  = GtkAccessible.html
 * outPack = gtk
 * outFile = Accessible
 * strct   = GtkAccessible
 * realStrct=
 * ctorStrct=
 * clss    = Accessible
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_accessible_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Accessible;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;





private import atk.ObjectAtk;

/**
 * Description
 */
public class Accessible : ObjectAtk
{
	
	/** the main Gtk struct */
	protected GtkAccessible* gtkAccessible;
	
	
	public GtkAccessible* getAccessibleStruct()
	{
		return gtkAccessible;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAccessible;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAccessible* gtkAccessible)
	{
		version(noAssert)
		{
			if ( gtkAccessible is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkAccessible is null on constructor").newline;
				}
				else
				{
					printf("struct gtkAccessible is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkAccessible !is null, "struct gtkAccessible is null on constructor");
		}
		super(cast(AtkObject*)gtkAccessible);
		this.gtkAccessible = gtkAccessible;
	}
	
	/**
	 */
	
	
	/**
	 * This function specifies the callback function to be called when the widget
	 * corresponding to a GtkAccessible is destroyed.
	 */
	public void connectWidgetDestroyed()
	{
		// void gtk_accessible_connect_widget_destroyed  (GtkAccessible *accessible);
		gtk_accessible_connect_widget_destroyed(gtkAccessible);
	}
}
