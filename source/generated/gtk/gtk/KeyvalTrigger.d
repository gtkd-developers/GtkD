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


module gtk.KeyvalTrigger;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ShortcutTrigger;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
 */
public class KeyvalTrigger : ShortcutTrigger
{
	/** the main Gtk struct */
	protected GtkKeyvalTrigger* gtkKeyvalTrigger;

	/** Get the main Gtk struct */
	public GtkKeyvalTrigger* getKeyvalTriggerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkKeyvalTrigger;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkKeyvalTrigger;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkKeyvalTrigger* gtkKeyvalTrigger, bool ownedRef = false)
	{
		this.gtkKeyvalTrigger = gtkKeyvalTrigger;
		super(cast(GtkShortcutTrigger*)gtkKeyvalTrigger, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_keyval_trigger_get_type();
	}

	/**
	 * Creates a `GtkShortcutTrigger` that will trigger whenever
	 * the key with the given @keyval and @modifiers is pressed.
	 *
	 * Params:
	 *     keyval = The keyval to trigger for
	 *     modifiers = the modifiers that need to be present
	 *
	 * Returns: A new `GtkShortcutTrigger`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint keyval, GdkModifierType modifiers)
	{
		auto __p = gtk_keyval_trigger_new(keyval, modifiers);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkKeyvalTrigger*) __p, true);
	}

	/**
	 * Gets the keyval that must be pressed to succeed
	 * triggering @self.
	 *
	 * Returns: the keyval
	 */
	public uint getKeyval()
	{
		return gtk_keyval_trigger_get_keyval(gtkKeyvalTrigger);
	}

	/**
	 * Gets the modifiers that must be present to succeed
	 * triggering @self.
	 *
	 * Returns: the modifiers
	 */
	public GdkModifierType getModifiers()
	{
		return gtk_keyval_trigger_get_modifiers(gtkKeyvalTrigger);
	}
}
