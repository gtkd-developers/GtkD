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


module gtk.ATContext;

private import gdk.Display;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkATContext` is an abstract class provided by GTK to communicate to
 * platform-specific assistive technologies API.
 * 
 * Each platform supported by GTK implements a `GtkATContext` subclass, and
 * is responsible for updating the accessible state in response to state
 * changes in `GtkAccessible`.
 */
public class ATContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkATContext* gtkATContext;

	/** Get the main Gtk struct */
	public GtkATContext* getATContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkATContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkATContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkATContext* gtkATContext, bool ownedRef = false)
	{
		this.gtkATContext = gtkATContext;
		super(cast(GObject*)gtkATContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_at_context_get_type();
	}

	/**
	 * Creates a new `GtkATContext` instance for the given accessible role,
	 * accessible instance, and display connection.
	 *
	 * The `GtkATContext` implementation being instantiated will depend on the
	 * platform.
	 *
	 * Params:
	 *     accessibleRole = the accessible role used by the `GtkATContext`
	 *     accessible = the `GtkAccessible` implementation using the `GtkATContext`
	 *     display = the `GdkDisplay` used by the `GtkATContext`
	 *
	 * Returns: the `GtkATContext`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkAccessibleRole accessibleRole, AccessibleIF accessible, Display display)
	{
		auto __p = gtk_at_context_create(accessibleRole, (accessible is null) ? null : accessible.getAccessibleStruct(), (display is null) ? null : display.getDisplayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by create");
		}

		this(cast(GtkATContext*) __p, true);
	}

	/**
	 * Retrieves the `GtkAccessible` using this context.
	 *
	 * Returns: a `GtkAccessible`
	 */
	public AccessibleIF getAccessible()
	{
		auto __p = gtk_at_context_get_accessible(gtkATContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AccessibleIF)(cast(GtkAccessible*) __p);
	}

	/**
	 * Retrieves the accessible role of this context.
	 *
	 * Returns: a `GtkAccessibleRole`
	 */
	public GtkAccessibleRole getAccessibleRole()
	{
		return gtk_at_context_get_accessible_role(gtkATContext);
	}

	/**
	 * Emitted when the attributes of the accessible for the
	 * `GtkATContext` instance change.
	 */
	gulong addOnStateChange(void delegate(ATContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "state-change", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
