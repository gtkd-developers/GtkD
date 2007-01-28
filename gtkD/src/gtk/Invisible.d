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
 * inFile  = GtkInvisible.html
 * outPack = gtk
 * outFile = Invisible
 * strct   = GtkInvisible
 * realStrct=
 * ctorStrct=
 * clss    = Invisible
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_invisible_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gdk.Screen
 * structWrap:
 * 	- GdkScreen* -> Screen
 * module aliases:
 * local aliases:
 */

module gtk.Invisible;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gdk.Screen;



/**
 * Description
 * The GtkInvisible widget is used internally in GTK+, and is probably not
 * very useful for application developers.
 * It is used for reliable pointer grabs and selection handling in the code
 * for drag-and-drop.
 */
private import gtk.Widget;
public class Invisible : Widget
{
	
	/** the main Gtk struct */
	protected GtkInvisible* gtkInvisible;
	
	
	public GtkInvisible* getInvisibleStruct()
	{
		return gtkInvisible;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkInvisible;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkInvisible* gtkInvisible)
	{
		super(cast(GtkWidget*)gtkInvisible);
		this.gtkInvisible = gtkInvisible;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkInvisible.
	 * Returns:
	 *  a new GtkInvisible.
	 */
	public this ()
	{
		// GtkWidget* gtk_invisible_new (void);
		this(cast(GtkInvisible*)gtk_invisible_new() );
	}
	
	/**
	 * Creates a new GtkInvisible object for a specified screen
	 * screen:
	 *  a GdkScreen which identifies on which
	 *  the new GtkInvisible will be created.
	 * Returns:
	 *  a newly created GtkInvisible object
	 * Since 2.2
	 */
	public this (Screen screen)
	{
		// GtkWidget* gtk_invisible_new_for_screen (GdkScreen *screen);
		this(cast(GtkInvisible*)gtk_invisible_new_for_screen((screen is null) ? null : screen.getScreenStruct()) );
	}
	
	/**
	 * Sets the GdkScreen where the GtkInvisible object will be displayed.
	 * invisible:
	 *  a GtkInvisible.
	 * screen:
	 *  a GdkScreen.
	 * Since 2.2
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_invisible_set_screen (GtkInvisible *invisible,  GdkScreen *screen);
		gtk_invisible_set_screen(gtkInvisible, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen object associated with invisible
	 * invisible:
	 *  a GtkInvisible.
	 * Returns:
	 *  the associated GdkScreen.
	 * Since 2.2
	 * Property Details
	 * The "screen" property
	 *  "screen" GdkScreen : Read / Write
	 * The screen where this window will be displayed.
	 */
	public Screen getScreen()
	{
		// GdkScreen* gtk_invisible_get_screen (GtkInvisible *invisible);
		return new Screen( gtk_invisible_get_screen(gtkInvisible) );
	}
}
