/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
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
 * overrides:
 * 	- getScreen
 */

module gtk.Invisible;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Screen;



private import gtk.Widget;

/**
 * The GtkInvisible widget is used internally in GTK+, and is probably not
 * very useful for application developers.
 *
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
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkInvisible = cast(GtkInvisible*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkInvisible.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_invisible_new (void);
		auto p = gtk_invisible_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_invisible_new()");
		}
		this(cast(GtkInvisible*) p);
	}
	
	/**
	 * Creates a new GtkInvisible object for a specified screen
	 * Since 2.2
	 * Params:
	 * screen = a GdkScreen which identifies on which
	 * the new GtkInvisible will be created.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Screen screen)
	{
		// GtkWidget * gtk_invisible_new_for_screen (GdkScreen *screen);
		auto p = gtk_invisible_new_for_screen((screen is null) ? null : screen.getScreenStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_invisible_new_for_screen((screen is null) ? null : screen.getScreenStruct())");
		}
		this(cast(GtkInvisible*) p);
	}
	
	/**
	 * Sets the GdkScreen where the GtkInvisible object will be displayed.
	 * Since 2.2
	 * Params:
	 * screen = a GdkScreen.
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_invisible_set_screen (GtkInvisible *invisible,  GdkScreen *screen);
		gtk_invisible_set_screen(gtkInvisible, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen object associated with invisible
	 * Since 2.2
	 * Returns: the associated GdkScreen. [transfer none]
	 */
	public override Screen getScreen()
	{
		// GdkScreen * gtk_invisible_get_screen (GtkInvisible *invisible);
		auto p = gtk_invisible_get_screen(gtkInvisible);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
}
