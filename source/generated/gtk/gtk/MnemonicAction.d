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


module gtk.MnemonicAction;

private import gobject.ObjectG;
private import gtk.ShortcutAction;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcutAction` that calls gtk_widget_mnemonic_activate().
 */
public class MnemonicAction : ShortcutAction
{
	/** the main Gtk struct */
	protected GtkMnemonicAction* gtkMnemonicAction;

	/** Get the main Gtk struct */
	public GtkMnemonicAction* getMnemonicActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMnemonicAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMnemonicAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMnemonicAction* gtkMnemonicAction, bool ownedRef = false)
	{
		this.gtkMnemonicAction = gtkMnemonicAction;
		super(cast(GtkShortcutAction*)gtkMnemonicAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_mnemonic_action_get_type();
	}

	/**
	 * Gets the mnemonic action.
	 *
	 * This is an action that calls gtk_widget_mnemonic_activate()
	 * on the given widget upon activation.
	 *
	 * Returns: The mnemonic action
	 */
	public static MnemonicAction get()
	{
		auto __p = gtk_mnemonic_action_get();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MnemonicAction)(cast(GtkMnemonicAction*) __p);
	}
}
