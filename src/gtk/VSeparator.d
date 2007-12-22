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
 * inFile  = GtkVSeparator.html
 * outPack = gtk
 * outFile = VSeparator
 * strct   = GtkVSeparator
 * realStrct=
 * ctorStrct=
 * clss    = VSeparator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vseparator_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.VSeparator;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;






/**
 * Description
 * The GtkVSeparator widget is a vertical separator, used to group the
 * widgets within a window. It displays a vertical line with a shadow to
 * make it appear sunken into the interface.
 */
private import gtk.Separator;
public class VSeparator : Separator
{
	
	/** the main Gtk struct */
	protected GtkVSeparator* gtkVSeparator;
	
	
	public GtkVSeparator* getVSeparatorStruct()
	{
		return gtkVSeparator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkVSeparator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVSeparator* gtkVSeparator)
	{
		version(noAssert)
		{
			if ( gtkVSeparator is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkVSeparator is null on constructor").newline;
				}
				else
				{
					printf("struct gtkVSeparator is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkVSeparator !is null, "struct gtkVSeparator is null on constructor");
		}
		super(cast(GtkSeparator*)gtkVSeparator);
		this.gtkVSeparator = gtkVSeparator;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkVSeparator.
	 * Returns:
	 * a new GtkVSeparator.
	 * See Also
	 * GtkHSeparator
	 * a horizontal separator.
	 */
	public this ()
	{
		// GtkWidget* gtk_vseparator_new (void);
		this(cast(GtkVSeparator*)gtk_vseparator_new() );
	}
}
