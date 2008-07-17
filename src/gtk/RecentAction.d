/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gtk_recent_action_new
 * 	- gtk_recent_action_new_for_manager
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


private import glib.Str;
private import gtk.RecentManager;



private import gtk.Action;

/**
 * Description
 * A GtkRecentAction represents a list of recently used files, which
 * can be shown by widgets such as GtkRecentChooserDialog or
 * GtkRecentChooserMenu.
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
		if(gtkRecentAction is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkRecentAction);
		if( ptr !is null )
		{
			this = cast(RecentAction)ptr;
			return;
		}
		super(cast(GtkAction*)gtkRecentAction);
		this.gtkRecentAction = gtkRecentAction;
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
	 */
	public this (string name, string label, string tooltip, StockID stockID)
	{
		// GtkAction* gtk_recent_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id);
		auto p = gtk_recent_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(StockDesc[stockID]));
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkRecentAction*) p);
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
	 */
	public this (string name, string label, string tooltip, StockID stockID, RecentManager manager)
	{
		// GtkAction* gtk_recent_action_new_for_manager (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id,  GtkRecentManager *manager);
		auto p = gtk_recent_action_new_for_manager(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(StockDesc[stockID]), (manager is null) ? null : manager.getRecentManagerStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkRecentAction*) p);
	}
	
	/**
	 */
	
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
	 * showNumbers =  TRUE if the shown items should be numbered
	 */
	public void setShowNumbers(int showNumbers)
	{
		// void gtk_recent_action_set_show_numbers (GtkRecentAction *action,  gboolean show_numbers);
		gtk_recent_action_set_show_numbers(gtkRecentAction, showNumbers);
	}
}
