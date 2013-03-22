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

/*
 * Conversion parameters:
 * inFile  = GtkRecentAction.html
 * outPack = gtk
 * outFile = RecentAction
 * strct   = GtkRecentAction
 * realStrct=
 * ctorStrct=GtkAction
 * clss    = RecentAction
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_recent_action_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.RecentManager
 * structWrap:
 * 	- GtkRecentManager* -> RecentManager
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RecentAction;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.RecentManager;



private import gtk.Action;

/**
 * A GtkRecentAction represents a list of recently used files, which
 * can be shown by widgets such as GtkRecentChooserDialog or
 * GtkRecentChooserMenu.
 *
 * To construct a submenu showing recently used files, use a GtkRecentAction
 * as the action for a <menuitem>. To construct a menu toolbutton showing
 * the recently used files in the popup menu, use a GtkRecentAction as the
 * action for a <toolitem> element.
 */
public class RecentAction : Action
{
	
	/** the main Gtk struct */
	protected GtkRecentAction* gtkRecentAction;
	
	
	public GtkRecentAction* getRecentActionStruct()
	{
		return gtkRecentAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentAction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRecentAction* gtkRecentAction)
	{
		super(cast(GtkAction*)gtkRecentAction);
		this.gtkRecentAction = gtkRecentAction;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRecentAction = cast(GtkRecentAction*)obj;
	}
	
	/**
	 * Creates a new GtkRecentAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.12
	 * Params:
	 * name =  a unique name for the action
	 * label =  the label displayed in menu items and on buttons, or NULL
	 * tooltip =  a tooltip for the action, or NULL
	 * stockID =  the stock icon to display in widgets representing the
	 *  action, or NULL
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockID)
	{
		this(name, label, tooltip, StockDesc[stockID]);
	}
	
	/**
	 * Creates a new GtkRecentAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.12
	 * Params:
	 * name =  a unique name for the action
	 * label =  the label displayed in menu items and on buttons, or NULL
	 * tooltip =  a tooltip for the action, or NULL
	 * stockID =  the stock icon to display in widgets representing the
	 *  action, or NULL
	 * manager =  a GtkRecentManager, or NULL for using the default
	 *  GtkRecentManager
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockID, RecentManager manager)
	{
		this(name, label, tooltip, StockDesc[stockID], manager);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkRecentAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.12
	 * Params:
	 * name = a unique name for the action
	 * label = the label displayed in menu items and on buttons,
	 * or NULL. [allow-none]
	 * tooltip = a tooltip for the action, or NULL. [allow-none]
	 * stockId = the stock icon to display in widgets representing
	 * the action, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, string stockId)
	{
		// GtkAction * gtk_recent_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id);
		auto p = gtk_recent_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId))");
		}
		this(cast(GtkRecentAction*) p);
	}
	
	/**
	 * Creates a new GtkRecentAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.12
	 * Params:
	 * name = a unique name for the action
	 * label = the label displayed in menu items and on buttons,
	 * or NULL. [allow-none]
	 * tooltip = a tooltip for the action, or NULL. [allow-none]
	 * stockId = the stock icon to display in widgets representing
	 * the action, or NULL. [allow-none]
	 * manager = a GtkRecentManager, or NULL for using the default
	 * GtkRecentManager. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, string stockId, RecentManager manager)
	{
		// GtkAction * gtk_recent_action_new_for_manager (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id,  GtkRecentManager *manager);
		auto p = gtk_recent_action_new_for_manager(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), (manager is null) ? null : manager.getRecentManagerStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_action_new_for_manager(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), (manager is null) ? null : manager.getRecentManagerStruct())");
		}
		this(cast(GtkRecentAction*) p);
	}
	
	/**
	 * Returns the value set by gtk_recent_chooser_menu_set_show_numbers().
	 * Since 2.12
	 * Returns: TRUE if numbers should be shown.
	 */
	public int getShowNumbers()
	{
		// gboolean gtk_recent_action_get_show_numbers (GtkRecentAction *action);
		return gtk_recent_action_get_show_numbers(gtkRecentAction);
	}
	
	/**
	 * Sets whether a number should be added to the items shown by the
	 * widgets representing action. The numbers are shown to provide
	 * a unique character for a mnemonic to be used inside the menu item's
	 * label. Only the first ten items get a number to avoid clashes.
	 * Since 2.12
	 * Params:
	 * showNumbers = TRUE if the shown items should be numbered
	 */
	public void setShowNumbers(int showNumbers)
	{
		// void gtk_recent_action_set_show_numbers (GtkRecentAction *action,  gboolean show_numbers);
		gtk_recent_action_set_show_numbers(gtkRecentAction, showNumbers);
	}
}
