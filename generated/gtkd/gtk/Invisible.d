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


module gtk.Invisible;

private import gdk.Screen;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkInvisible widget is used internally in GTK+, and is probably not
 * very useful for application developers.
 * 
 * It is used for reliable pointer grabs and selection handling in the code
 * for drag-and-drop.
 */
public class Invisible : Widget
{
	/** the main Gtk struct */
	protected GtkInvisible* gtkInvisible;

	/** Get the main Gtk struct */
	public GtkInvisible* getInvisibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkInvisible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkInvisible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkInvisible* gtkInvisible, bool ownedRef = false)
	{
		this.gtkInvisible = gtkInvisible;
		super(cast(GtkWidget*)gtkInvisible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_invisible_get_type();
	}

	/**
	 * Creates a new #GtkInvisible.
	 *
	 * Returns: a new #GtkInvisible.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_invisible_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkInvisible*) p);
	}

	/**
	 * Creates a new #GtkInvisible object for a specified screen
	 *
	 * Params:
	 *     screen = a #GdkScreen which identifies on which
	 *         the new #GtkInvisible will be created.
	 *
	 * Returns: a newly created #GtkInvisible object
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Screen screen)
	{
		auto p = gtk_invisible_new_for_screen((screen is null) ? null : screen.getScreenStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_screen");
		}

		this(cast(GtkInvisible*) p);
	}

	/**
	 * Returns the #GdkScreen object associated with @invisible
	 *
	 * Returns: the associated #GdkScreen.
	 *
	 * Since: 2.2
	 */
	public override Screen getScreen()
	{
		auto p = gtk_invisible_get_screen(gtkInvisible);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Sets the #GdkScreen where the #GtkInvisible object will be displayed.
	 *
	 * Params:
	 *     screen = a #GdkScreen.
	 *
	 * Since: 2.2
	 */
	public void setScreen(Screen screen)
	{
		gtk_invisible_set_screen(gtkInvisible, (screen is null) ? null : screen.getScreenStruct());
	}
}
