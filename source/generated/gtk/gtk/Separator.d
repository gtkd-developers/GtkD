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


module gtk.Separator;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSeparator` is a horizontal or vertical separator widget.
 * 
 * ![An example GtkSeparator](separators.png)
 * 
 * A `GtkSeparator` can be used to group the widgets within a window.
 * It displays a line with a shadow to make it appear sunken into the
 * interface.
 * 
 * # CSS nodes
 * 
 * `GtkSeparator` has a single CSS node with name separator. The node
 * gets one of the .horizontal or .vertical style classes.
 * 
 * # Accessibility
 * 
 * `GtkSeparator` uses the %GTK_ACCESSIBLE_ROLE_SEPARATOR role.
 */
public class Separator : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkSeparator* gtkSeparator;

	/** Get the main Gtk struct */
	public GtkSeparator* getSeparatorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSeparator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSeparator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSeparator* gtkSeparator, bool ownedRef = false)
	{
		this.gtkSeparator = gtkSeparator;
		super(cast(GtkWidget*)gtkSeparator, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkSeparator);


	/** */
	public static GType getType()
	{
		return gtk_separator_get_type();
	}

	/**
	 * Creates a new `GtkSeparator` with the given orientation.
	 *
	 * Params:
	 *     orientation = the separator’s orientation.
	 *
	 * Returns: a new `GtkSeparator`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto __p = gtk_separator_new(orientation);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSeparator*) __p);
	}
}
