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


module gtk.CallbackAction;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ShortcutAction;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcutAction` that invokes a callback.
 */
public class CallbackAction : ShortcutAction
{
	/** the main Gtk struct */
	protected GtkCallbackAction* gtkCallbackAction;

	/** Get the main Gtk struct */
	public GtkCallbackAction* getCallbackActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCallbackAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCallbackAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCallbackAction* gtkCallbackAction, bool ownedRef = false)
	{
		this.gtkCallbackAction = gtkCallbackAction;
		super(cast(GtkShortcutAction*)gtkCallbackAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_callback_action_get_type();
	}

	/**
	 * Create a custom action that calls the given @callback when
	 * activated.
	 *
	 * Params:
	 *     callback = the callback to call
	 *     data = the data to be passed to @callback
	 *     destroy = the function to be called when the
	 *         callback action is finalized
	 *
	 * Returns: A new shortcut action
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkShortcutFunc callback, void* data, GDestroyNotify destroy)
	{
		auto __p = gtk_callback_action_new(callback, data, destroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCallbackAction*) __p, true);
	}
}
