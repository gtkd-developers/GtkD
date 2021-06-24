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


module gtk.WindowHandle;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkWindowHandle` is a titlebar area widget.
 * 
 * When added into a window, it can be dragged to move the window, and handles
 * right click, double click and middle click as expected of a titlebar.
 * 
 * # CSS nodes
 * 
 * `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
 * 
 * # Accessibility
 * 
 * `GtkWindowHandle` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class WindowHandle : Widget
{
	/** the main Gtk struct */
	protected GtkWindowHandle* gtkWindowHandle;

	/** Get the main Gtk struct */
	public GtkWindowHandle* getWindowHandleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWindowHandle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWindowHandle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWindowHandle* gtkWindowHandle, bool ownedRef = false)
	{
		this.gtkWindowHandle = gtkWindowHandle;
		super(cast(GtkWidget*)gtkWindowHandle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_window_handle_get_type();
	}

	/**
	 * Creates a new `GtkWindowHandle`.
	 *
	 * Returns: a new `GtkWindowHandle`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_window_handle_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindowHandle*) __p);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self
	 */
	public Widget getChild()
	{
		auto __p = gtk_window_handle_get_child(gtkWindowHandle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_window_handle_set_child(gtkWindowHandle, (child is null) ? null : child.getWidgetStruct());
	}
}
