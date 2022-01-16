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


module gtk.ShortcutAction;

private import glib.ConstructionException;
private import glib.Str;
private import glib.StringG;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkShortcutAction` encodes an action that can be triggered by a
 * keyboard shortcut.
 * 
 * `GtkShortcutActions` contain functions that allow easy presentation
 * to end users as well as being printed for debugging.
 * 
 * All `GtkShortcutActions` are immutable, you can only specify their
 * properties during construction. If you want to change a action, you
 * have to replace it with a new one. If you need to pass arguments to
 * an action, these are specified by the higher-level `GtkShortcut` object.
 * 
 * To activate a `GtkShortcutAction` manually, [method@Gtk.ShortcutAction.activate]
 * can be called.
 * 
 * GTK provides various actions:
 * 
 * - [class@Gtk.MnemonicAction]: a shortcut action that calls
 * gtk_widget_mnemonic_activate()
 * - [class@Gtk.CallbackAction]: a shortcut action that invokes
 * a given callback
 * - [class@Gtk.SignalAction]: a shortcut action that emits a
 * given signal
 * - [class@Gtk.ActivateAction]: a shortcut action that calls
 * gtk_widget_activate()
 * - [class@Gtk.NamedAction]: a shortcut action that calls
 * gtk_widget_activate_action()
 * - [class@Gtk.NothingAction]: a shortcut action that does nothing
 */
public class ShortcutAction : ObjectG
{
	/** the main Gtk struct */
	protected GtkShortcutAction* gtkShortcutAction;

	/** Get the main Gtk struct */
	public GtkShortcutAction* getShortcutActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutAction* gtkShortcutAction, bool ownedRef = false)
	{
		this.gtkShortcutAction = gtkShortcutAction;
		super(cast(GObject*)gtkShortcutAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcut_action_get_type();
	}

	/**
	 * Tries to parse the given string into an action.
	 *
	 * On success, the parsed action is returned. When parsing
	 * failed, %NULL is returned.
	 *
	 * The accepted strings are:
	 *
	 * - `nothing`, for `GtkNothingAction`
	 * - `activate`, for `GtkActivateAction`
	 * - `mnemonic-activate`, for `GtkMnemonicAction`
	 * - `action(NAME)`, for a `GtkNamedAction` for the action named `NAME`
	 * - `signal(NAME)`, for a `GtkSignalAction` for the signal `NAME`
	 *
	 * Params:
	 *     string_ = the string to parse
	 *
	 * Returns: a new `GtkShortcutAction`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = gtk_shortcut_action_parse_string(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by parse_string");
		}

		this(cast(GtkShortcutAction*) __p, true);
	}

	/**
	 * Activates the action on the @widget with the given @args.
	 *
	 * Note that some actions ignore the passed in @flags, @widget or @args.
	 *
	 * Activation of an action can fail for various reasons. If the action
	 * is not supported by the @widget, if the @args don't match the action
	 * or if the activation otherwise had no effect, %FALSE will be returned.
	 *
	 * Params:
	 *     flags = flags to activate with
	 *     widget = Target of the activation
	 *     args = arguments to pass
	 *
	 * Returns: %TRUE if this action was activated successfully
	 */
	public bool activate(GtkShortcutActionFlags flags, Widget widget, Variant args)
	{
		return gtk_shortcut_action_activate(gtkShortcutAction, flags, (widget is null) ? null : widget.getWidgetStruct(), (args is null) ? null : args.getVariantStruct()) != 0;
	}

	/**
	 * Prints the given action into a string for the developer.
	 *
	 * This is meant for debugging and logging.
	 *
	 * The form of the representation may change at any time and is
	 * not guaranteed to stay identical.
	 *
	 * Params:
	 *     string_ = a `GString` to print into
	 */
	public void print(StringG string_)
	{
		gtk_shortcut_action_print(gtkShortcutAction, (string_ is null) ? null : string_.getStringGStruct());
	}

	/**
	 * Prints the given action into a human-readable string.
	 *
	 * This is a small wrapper around [method@Gtk.ShortcutAction.print]
	 * to help when debugging.
	 *
	 * Returns: a new string
	 */
	public override string toString()
	{
		auto retStr = gtk_shortcut_action_to_string(gtkShortcutAction);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
