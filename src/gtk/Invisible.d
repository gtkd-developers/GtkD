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
 * omit signals:
 * imports:
 * 	- gdk.Screen
 * structWrap:
 * 	- GdkScreen* -> Screen
 * module aliases:
 * local aliases:
 */

module gtk.Invisible;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import gdk.Screen;



private import gtk.Widget;

/**
 * Description
 * The GtkInvisible widget is used internally in GTK+, and is probably not
 * very useful for application developers.
 * It is used for reliable pointer grabs and selection handling in the code
 * for drag-and-drop.
 */
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
		if(gtkInvisible is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkInvisible passed to constructor.");
			else return;
		}
		super(cast(GtkWidget*)gtkInvisible);
		this.gtkInvisible = gtkInvisible;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkInvisible.
	 */
	public this ()
	{
		// GtkWidget* gtk_invisible_new (void);
		auto p = gtk_invisible_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkInvisible*) p);
	}
	
	/**
	 * Creates a new GtkInvisible object for a specified screen
	 * Since 2.2
	 * Params:
	 * screen =  a GdkScreen which identifies on which
	 *  the new GtkInvisible will be created.
	 */
	public this (Screen screen)
	{
		// GtkWidget* gtk_invisible_new_for_screen (GdkScreen *screen);
		auto p = gtk_invisible_new_for_screen((screen is null) ? null : screen.getScreenStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkInvisible*) p);
	}
	
	/**
	 * Sets the GdkScreen where the GtkInvisible object will be displayed.
	 * Since 2.2
	 * Params:
	 * screen =  a GdkScreen.
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_invisible_set_screen (GtkInvisible *invisible,  GdkScreen *screen);
		gtk_invisible_set_screen(gtkInvisible, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen object associated with invisible
	 * Since 2.2
	 * Returns: the associated GdkScreen.
	 */
	public Screen getScreen()
	{
		// GdkScreen* gtk_invisible_get_screen (GtkInvisible *invisible);
		auto p = gtk_invisible_get_screen(gtkInvisible);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
}
