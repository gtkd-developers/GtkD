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


module gtk.NothingAction;

private import gobject.ObjectG;
private import gtk.ShortcutAction;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcutAction` that does nothing.
 */
public class NothingAction : ShortcutAction
{
	/** the main Gtk struct */
	protected GtkNothingAction* gtkNothingAction;

	/** Get the main Gtk struct */
	public GtkNothingAction* getNothingActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNothingAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNothingAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNothingAction* gtkNothingAction, bool ownedRef = false)
	{
		this.gtkNothingAction = gtkNothingAction;
		super(cast(GtkShortcutAction*)gtkNothingAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_nothing_action_get_type();
	}

	/**
	 * Gets the nothing action.
	 *
	 * This is an action that does nothing and where
	 * activating it always fails.
	 *
	 * Returns: The nothing action
	 */
	public static NothingAction get()
	{
		auto __p = gtk_nothing_action_get();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NothingAction)(cast(GtkNothingAction*) __p);
	}
}
