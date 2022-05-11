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


module gtk.SignalAction;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.ShortcutAction;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcut`Action that emits a signal.
 * 
 * Signals that are used in this way are referred to as keybinding signals,
 * and they are expected to be defined with the %G_SIGNAL_ACTION flag.
 */
public class SignalAction : ShortcutAction
{
	/** the main Gtk struct */
	protected GtkSignalAction* gtkSignalAction;

	/** Get the main Gtk struct */
	public GtkSignalAction* getSignalActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSignalAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSignalAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSignalAction* gtkSignalAction, bool ownedRef = false)
	{
		this.gtkSignalAction = gtkSignalAction;
		super(cast(GtkShortcutAction*)gtkSignalAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_signal_action_get_type();
	}

	/**
	 * Creates an action that when activated, emits the given action signal
	 * on the provided widget.
	 *
	 * It will also unpack the args into arguments passed to the signal.
	 *
	 * Params:
	 *     signalName = name of the signal to emit
	 *
	 * Returns: a new `GtkShortcutAction`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string signalName)
	{
		auto __p = gtk_signal_action_new(Str.toStringz(signalName));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSignalAction*) __p, true);
	}

	/**
	 * Returns the name of the signal that will be emitted.
	 *
	 * Returns: the name of the signal to emit
	 */
	public string getSignalName()
	{
		return Str.toString(gtk_signal_action_get_signal_name(gtkSignalAction));
	}
}
