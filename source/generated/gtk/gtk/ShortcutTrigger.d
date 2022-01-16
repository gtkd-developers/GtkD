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


module gtk.ShortcutTrigger;

private import gdk.Display;
private import gdk.Event;
private import glib.ConstructionException;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkShortcutTrigger` tracks how a `GtkShortcut` should be activated.
 * 
 * To find out if a `GtkShortcutTrigger` triggers, you can call
 * [method@Gtk.ShortcutTrigger.trigger] on a `GdkEvent`.
 * 
 * `GtkShortcutTriggers` contain functions that allow easy presentation
 * to end users as well as being printed for debugging.
 * 
 * All `GtkShortcutTriggers` are immutable, you can only specify their
 * properties during construction. If you want to change a trigger, you
 * have to replace it with a new one.
 */
public class ShortcutTrigger : ObjectG
{
	/** the main Gtk struct */
	protected GtkShortcutTrigger* gtkShortcutTrigger;

	/** Get the main Gtk struct */
	public GtkShortcutTrigger* getShortcutTriggerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutTrigger;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutTrigger;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutTrigger* gtkShortcutTrigger, bool ownedRef = false)
	{
		this.gtkShortcutTrigger = gtkShortcutTrigger;
		super(cast(GObject*)gtkShortcutTrigger, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcut_trigger_get_type();
	}

	/**
	 * Tries to parse the given string into a trigger.
	 *
	 * On success, the parsed trigger is returned.
	 * When parsing failed, %NULL is returned.
	 *
	 * The accepted strings are:
	 *
	 * - `never`, for `GtkNeverTrigger`
	 * - a string parsed by gtk_accelerator_parse(), for a `GtkKeyvalTrigger`, e.g. `<Control>C`
	 * - underscore, followed by a single character, for `GtkMnemonicTrigger`, e.g. `_l`
	 * - two valid trigger strings, separated by a `|` character, for a
	 * `GtkAlternativeTrigger`: `<Control>q|<Control>w`
	 *
	 * Note that you will have to escape the `<` and `>` characters when specifying
	 * triggers in XML files, such as GtkBuilder ui files. Use `&lt;` instead of
	 * `<` and `&gt;` instead of `>`.
	 *
	 * Params:
	 *     string_ = the string to parse
	 *
	 * Returns: a new `GtkShortcutTrigger`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = gtk_shortcut_trigger_parse_string(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by parse_string");
		}

		this(cast(GtkShortcutTrigger*) __p, true);
	}

	/**
	 * The types of @trigger1 and @trigger2 are `gconstpointer` only to allow
	 * use of this function as a `GCompareFunc`.
	 *
	 * They must each be a `GtkShortcutTrigger`.
	 *
	 * Params:
	 *     trigger2 = a `GtkShortcutTrigger`
	 *
	 * Returns: An integer less than, equal to, or greater than zero if
	 *     @trigger1 is found, respectively, to be less than, to match,
	 *     or be greater than @trigger2.
	 */
	public int compare(ShortcutTrigger trigger2)
	{
		return gtk_shortcut_trigger_compare(gtkShortcutTrigger, (trigger2 is null) ? null : trigger2.getShortcutTriggerStruct());
	}

	/**
	 * Checks if @trigger1 and @trigger2 trigger under the same conditions.
	 *
	 * The types of @one and @two are `gconstpointer` only to allow use of this
	 * function with `GHashTable`. They must each be a `GtkShortcutTrigger`.
	 *
	 * Params:
	 *     trigger2 = a `GtkShortcutTrigger`
	 *
	 * Returns: %TRUE if @trigger1 and @trigger2 are equal
	 */
	public bool equal(ShortcutTrigger trigger2)
	{
		return gtk_shortcut_trigger_equal(gtkShortcutTrigger, (trigger2 is null) ? null : trigger2.getShortcutTriggerStruct()) != 0;
	}

	/**
	 * Generates a hash value for a `GtkShortcutTrigger`.
	 *
	 * The output of this function is guaranteed to be the same for a given
	 * value only per-process. It may change between different processor
	 * architectures or even different versions of GTK. Do not use this
	 * function as a basis for building protocols or file formats.
	 *
	 * The types of @trigger is `gconstpointer` only to allow use of this
	 * function with `GHashTable`. They must each be a `GtkShortcutTrigger`.
	 *
	 * Returns: a hash value corresponding to @trigger
	 */
	public uint hash()
	{
		return gtk_shortcut_trigger_hash(gtkShortcutTrigger);
	}

	/**
	 * Prints the given trigger into a string for the developer.
	 * This is meant for debugging and logging.
	 *
	 * The form of the representation may change at any time
	 * and is not guaranteed to stay identical.
	 *
	 * Params:
	 *     string_ = a `GString` to print into
	 */
	public void print(StringG string_)
	{
		gtk_shortcut_trigger_print(gtkShortcutTrigger, (string_ is null) ? null : string_.getStringGStruct());
	}

	/**
	 * Prints the given trigger into a string.
	 *
	 * This function is returning a translated string for presentation
	 * to end users for example in menu items or in help texts.
	 *
	 * The @display in use may influence the resulting string in
	 * various forms, such as resolving hardware keycodes or by
	 * causing display-specific modifier names.
	 *
	 * The form of the representation may change at any time and is
	 * not guaranteed to stay identical.
	 *
	 * Params:
	 *     display = `GdkDisplay` to print for
	 *     string_ = a `GString` to print into
	 *
	 * Returns: %TRUE if something was printed or %FALSE if the
	 *     trigger did not have a textual representation suitable
	 *     for end users.
	 */
	public bool printLabel(Display display, StringG string_)
	{
		return gtk_shortcut_trigger_print_label(gtkShortcutTrigger, (display is null) ? null : display.getDisplayStruct(), (string_ is null) ? null : string_.getStringGStruct()) != 0;
	}

	/**
	 * Gets textual representation for the given trigger.
	 *
	 * This function is returning a translated string for
	 * presentation to end users for example in menu items
	 * or in help texts.
	 *
	 * The @display in use may influence the resulting string in
	 * various forms, such as resolving hardware keycodes or by
	 * causing display-specific modifier names.
	 *
	 * The form of the representation may change at any time and is
	 * not guaranteed to stay identical.
	 *
	 * Params:
	 *     display = `GdkDisplay` to print for
	 *
	 * Returns: a new string
	 */
	public string toLabel(Display display)
	{
		auto retStr = gtk_shortcut_trigger_to_label(gtkShortcutTrigger, (display is null) ? null : display.getDisplayStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Prints the given trigger into a human-readable string.
	 *
	 * This is a small wrapper around [method@Gtk.ShortcutTrigger.print]
	 * to help when debugging.
	 *
	 * Returns: a new string
	 */
	public override string toString()
	{
		auto retStr = gtk_shortcut_trigger_to_string(gtkShortcutTrigger);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks if the given @event triggers @self.
	 *
	 * Params:
	 *     event = the event to check
	 *     enableMnemonics = %TRUE if mnemonics should trigger. Usually the
	 *         value of this property is determined by checking that the passed
	 *         in @event is a Key event and has the right modifiers set.
	 *
	 * Returns: Whether the event triggered the shortcut
	 */
	public GdkKeyMatch trigger(Event event, bool enableMnemonics)
	{
		return gtk_shortcut_trigger_trigger(gtkShortcutTrigger, (event is null) ? null : event.getEventStruct(), enableMnemonics);
	}
}
