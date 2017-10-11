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


module gtk.RecentAction;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Action;
private import gtk.RecentChooserIF;
private import gtk.RecentChooserT;
private import gtk.RecentManager;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkRecentAction represents a list of recently used files, which
 * can be shown by widgets such as #GtkRecentChooserDialog or
 * #GtkRecentChooserMenu.
 * 
 * To construct a submenu showing recently used files, use a #GtkRecentAction
 * as the action for a <menuitem>. To construct a menu toolbutton showing
 * the recently used files in the popup menu, use a #GtkRecentAction as the
 * action for a <toolitem> element.
 */
public class RecentAction : Action, RecentChooserIF
{
	/** the main Gtk struct */
	protected GtkRecentAction* gtkRecentAction;

	/** Get the main Gtk struct */
	public GtkRecentAction* getRecentActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentAction* gtkRecentAction, bool ownedRef = false)
	{
		this.gtkRecentAction = gtkRecentAction;
		super(cast(GtkAction*)gtkRecentAction, ownedRef);
	}

	// add the RecentChooser capabilities
	mixin RecentChooserT!(GtkRecentAction);

	/**
	 * Creates a new RecentAction object. To add the action to
	 * a ActionGroup and set the accelerator for the action,
	 * call gtk.ActionGroup.ActionGroup.addActionwWithAccel().
	 *
	 * Since: 2.12
	 *
	 * Params:
	 *     name    = a unique name for the action
	 *     label   = the label displayed in menu items and on buttons, or null
	 *     tooltip = a tooltip for the action, or null
	 *     stockID = the stock icon to display in widgets representing the
	 *               action, or null
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockID)
	{
		this(name, label, tooltip, cast(string)stockID);
	}

	/**
	 * Creates a new RecentAction object. To add the action to
	 * a ActionGroup and set the accelerator for the action,
	 * call gtk.ActionGroup.ActionGroup.addActionwWithAccel().
	 *
	 * Since: 2.12
	 *
	 * Params:
	 *     name    = a unique name for the action
	 *     label   = the label displayed in menu items and on buttons, or null
	 *     tooltip = a tooltip for the action, or null
	 *     stockID = the stock icon to display in widgets representing the
	 *               action, or null
	 *     manager = a GtkRecentManager, or null for using the default
	 *               RecentManager
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockID, RecentManager manager)
	{
		this(name, label, tooltip, cast(string)stockID, manager);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_recent_action_get_type();
	}

	/**
	 * Creates a new #GtkRecentAction object. To add the action to
	 * a #GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 *
	 * Params:
	 *     name = a unique name for the action
	 *     label = the label displayed in menu items and on buttons,
	 *         or %NULL
	 *     tooltip = a tooltip for the action, or %NULL
	 *     stockId = the stock icon to display in widgets representing
	 *         the action, or %NULL
	 *
	 * Returns: the newly created #GtkRecentAction.
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string label, string tooltip, string stockId)
	{
		auto p = gtk_recent_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRecentAction*) p, true);
	}

	/**
	 * Creates a new #GtkRecentAction object. To add the action to
	 * a #GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 *
	 * Params:
	 *     name = a unique name for the action
	 *     label = the label displayed in menu items and on buttons,
	 *         or %NULL
	 *     tooltip = a tooltip for the action, or %NULL
	 *     stockId = the stock icon to display in widgets representing
	 *         the action, or %NULL
	 *     manager = a #GtkRecentManager, or %NULL for using the default
	 *         #GtkRecentManager
	 *
	 * Returns: the newly created #GtkRecentAction
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string label, string tooltip, string stockId, RecentManager manager)
	{
		auto p = gtk_recent_action_new_for_manager(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), (manager is null) ? null : manager.getRecentManagerStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_manager");
		}

		this(cast(GtkRecentAction*) p, true);
	}

	/**
	 * Returns the value set by gtk_recent_chooser_menu_set_show_numbers().
	 *
	 * Returns: %TRUE if numbers should be shown.
	 *
	 * Since: 2.12
	 */
	public bool getShowNumbers()
	{
		return gtk_recent_action_get_show_numbers(gtkRecentAction) != 0;
	}

	/**
	 * Sets whether a number should be added to the items shown by the
	 * widgets representing @action. The numbers are shown to provide
	 * a unique character for a mnemonic to be used inside the menu item's
	 * label. Only the first ten items get a number to avoid clashes.
	 *
	 * Params:
	 *     showNumbers = %TRUE if the shown items should be numbered
	 *
	 * Since: 2.12
	 */
	public void setShowNumbers(bool showNumbers)
	{
		gtk_recent_action_set_show_numbers(gtkRecentAction, showNumbers);
	}
}
