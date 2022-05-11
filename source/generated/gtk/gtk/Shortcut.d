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


module gtk.Shortcut;

private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gtk.ShortcutAction;
private import gtk.ShortcutTrigger;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcut` describes a keyboard shortcut.
 * 
 * It contains a description of how to trigger the shortcut via a
 * [class@Gtk.ShortcutTrigger] and a way to activate the shortcut
 * on a widget via a [class@Gtk.ShortcutAction].
 * 
 * The actual work is usually done via [class@Gtk.ShortcutController],
 * which decides if and when to activate a shortcut. Using that controller
 * directly however is rarely necessary as various higher level
 * convenience APIs exist on `GtkWidget`s that make it easier to use
 * shortcuts in GTK.
 * 
 * `GtkShortcut` does provide functionality to make it easy for users
 * to work with shortcuts, either by providing informational strings
 * for display purposes or by allowing shortcuts to be configured.
 */
public class Shortcut : ObjectG
{
	/** the main Gtk struct */
	protected GtkShortcut* gtkShortcut;

	/** Get the main Gtk struct */
	public GtkShortcut* getShortcutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcut;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcut;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcut* gtkShortcut, bool ownedRef = false)
	{
		this.gtkShortcut = gtkShortcut;
		super(cast(GObject*)gtkShortcut, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcut_get_type();
	}

	/**
	 * Creates a new `GtkShortcut` that is triggered by
	 * @trigger and then activates @action.
	 *
	 * Params:
	 *     trigger = The trigger that will trigger the shortcut
	 *     action = The action that will be activated upon
	 *         triggering
	 *
	 * Returns: a new `GtkShortcut`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ShortcutTrigger trigger, ShortcutAction action)
	{
		auto __p = gtk_shortcut_new((trigger is null) ? null : trigger.getShortcutTriggerStruct(), (action is null) ? null : action.getShortcutActionStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkShortcut*) __p, true);
	}

	/**
	 * Gets the action that is activated by this shortcut.
	 *
	 * Returns: the action
	 */
	public ShortcutAction getAction()
	{
		auto __p = gtk_shortcut_get_action(gtkShortcut);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ShortcutAction)(cast(GtkShortcutAction*) __p);
	}

	/**
	 * Gets the arguments that are passed when activating the shortcut.
	 *
	 * Returns: the arguments
	 */
	public Variant getArguments()
	{
		auto __p = gtk_shortcut_get_arguments(gtkShortcut);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Gets the trigger used to trigger @self.
	 *
	 * Returns: the trigger used
	 */
	public ShortcutTrigger getTrigger()
	{
		auto __p = gtk_shortcut_get_trigger(gtkShortcut);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ShortcutTrigger)(cast(GtkShortcutTrigger*) __p);
	}

	/**
	 * Sets the new action for @self to be @action.
	 *
	 * Params:
	 *     action = The new action.
	 *         If the @action is %NULL, the nothing action will be used.
	 */
	public void setAction(ShortcutAction action)
	{
		gtk_shortcut_set_action(gtkShortcut, (action is null) ? null : action.getShortcutActionStruct());
	}

	/**
	 * Sets the arguments to pass when activating the shortcut.
	 *
	 * Params:
	 *     args = arguments to pass when activating @self
	 */
	public void setArguments(Variant args)
	{
		gtk_shortcut_set_arguments(gtkShortcut, (args is null) ? null : args.getVariantStruct());
	}

	/**
	 * Sets the new trigger for @self to be @trigger.
	 *
	 * Params:
	 *     trigger = The new trigger.
	 *         If the @trigger is %NULL, the never trigger will be used.
	 */
	public void setTrigger(ShortcutTrigger trigger)
	{
		gtk_shortcut_set_trigger(gtkShortcut, (trigger is null) ? null : trigger.getShortcutTriggerStruct());
	}
}
