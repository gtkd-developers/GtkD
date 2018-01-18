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


module gtk.PadController;

private import gdk.Device;
private import gio.ActionGroupIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.EventController;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkPadController is an event controller for the pads found in drawing
 * tablets (The collection of buttons and tactile sensors often found around
 * the stylus-sensitive area).
 * 
 * These buttons and sensors have no implicit meaning, and by default they
 * perform no action, this event controller is provided to map those to
 * #GAction objects, thus letting the application give those a more semantic
 * meaning.
 * 
 * Buttons and sensors are not constrained to triggering a single action, some
 * %GDK_SOURCE_TABLET_PAD devices feature multiple "modes", all these input
 * elements have one current mode, which may determine the final action
 * being triggered. Pad devices often divide buttons and sensors into groups,
 * all elements in a group share the same current mode, but different groups
 * may have different modes. See gdk_device_pad_get_n_groups() and
 * gdk_device_pad_get_group_n_modes().
 * 
 * Each of the actions that a given button/strip/ring performs for a given
 * mode is defined by #GtkPadActionEntry, it contains an action name that
 * will be looked up in the given #GActionGroup and activated whenever the
 * specified input element and mode are triggered.
 * 
 * A simple example of #GtkPadController usage, assigning button 1 in all
 * modes and pad devices to an "invert-selection" action:
 * |[
 * GtkPadActionEntry *pad_actions[] = {
 * { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
 * …
 * };
 * 
 * …
 * action_group = g_simple_action_group_new ();
 * action = g_simple_action_new ("pad-actions.invert-selection", NULL);
 * g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
 * g_action_map_add_action (G_ACTION_MAP (action_group), action);
 * …
 * pad_controller = gtk_pad_controller_new (window, action_group, NULL);
 * ]|
 * 
 * The actions belonging to rings/strips will be activated with a parameter
 * of type %G_VARIANT_TYPE_DOUBLE bearing the value of the given axis, it
 * is required that those are made stateful and accepting this #GVariantType.
 */
public class PadController : EventController
{
	/** the main Gtk struct */
	protected GtkPadController* gtkPadController;

	/** Get the main Gtk struct */
	public GtkPadController* getPadControllerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPadController;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPadController;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPadController* gtkPadController, bool ownedRef = false)
	{
		this.gtkPadController = gtkPadController;
		super(cast(GtkEventController*)gtkPadController, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_pad_controller_get_type();
	}

	/**
	 * Creates a new #GtkPadController that will associate events from @pad to
	 * actions. A %NULL pad may be provided so the controller manages all pad devices
	 * generically, it is discouraged to mix #GtkPadController objects with %NULL
	 * and non-%NULL @pad argument on the same @window, as execution order is not
	 * guaranteed.
	 *
	 * The #GtkPadController is created with no mapped actions. In order to map pad
	 * events to actions, use gtk_pad_controller_set_action_entries() or
	 * gtk_pad_controller_set_action().
	 *
	 * Params:
	 *     window = a #GtkWindow
	 *     group = #GActionGroup to trigger actions from
	 *     pad = A %GDK_SOURCE_TABLET_PAD device, or %NULL to handle all pads
	 *
	 * Returns: A newly created #GtkPadController
	 *
	 * Since: 3.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window window, ActionGroupIF group, Device pad)
	{
		auto p = gtk_pad_controller_new((window is null) ? null : window.getWindowStruct(), (group is null) ? null : group.getActionGroupStruct(), (pad is null) ? null : pad.getDeviceStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPadController*) p, true);
	}

	/**
	 * Adds an individual action to @controller. This action will only be activated
	 * if the given button/ring/strip number in @index is interacted while
	 * the current mode is @mode. -1 may be used for simple cases, so the action
	 * is triggered on all modes.
	 *
	 * The given @label should be considered user-visible, so internationalization
	 * rules apply. Some windowing systems may be able to use those for user
	 * feedback.
	 *
	 * Params:
	 *     type = the type of pad feature that will trigger this action
	 *     index = the 0-indexed button/ring/strip number that will trigger this action
	 *     mode = the mode that will trigger this action, or -1 for all modes.
	 *     label = Human readable description of this action, this string should
	 *         be deemed user-visible.
	 *     actionName = action name that will be activated in the #GActionGroup
	 *
	 * Since: 3.22
	 */
	public void setAction(GtkPadActionType type, int index, int mode, string label, string actionName)
	{
		gtk_pad_controller_set_action(gtkPadController, type, index, mode, Str.toStringz(label), Str.toStringz(actionName));
	}

	/**
	 * This is a convenience function to add a group of action entries on
	 * @controller. See #GtkPadActionEntry and gtk_pad_controller_set_action().
	 *
	 * Params:
	 *     entries = the action entries to set on @controller
	 *
	 * Since: 3.22
	 */
	public void setActionEntries(GtkPadActionEntry[] entries)
	{
		gtk_pad_controller_set_action_entries(gtkPadController, entries.ptr, cast(int)entries.length);
	}
}
