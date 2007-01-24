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
 * inFile  = GtkMenuItem.html
 * outPack = gtk
 * outFile = MenuItem
 * strct   = GtkMenuItem
 * realStrct=
 * ctorStrct=
 * clss    = MenuItem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_menu_item_activate
 * 	- gtk_menu_item_new_with_label
 * 	- gtk_menu_item_new_with_mnemonic
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.MenuItem;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;
private import gtk.Widget;

/**
 * Description
 * The GtkMenuItem widget and the derived widgets are the only valid
 * childs for menus. Their function is to correctly handle highlighting,
 * alignment, events and submenus.
 * As it derives from GtkBin it can hold any valid child widget, altough
 * only a few are really useful.
 */
private import gtk.Item;
public class MenuItem : Item
{
	
	/** the main Gtk struct */
	protected GtkMenuItem* gtkMenuItem;
	
	
	public GtkMenuItem* getMenuItemStruct()
	{
		return gtkMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuItem* gtkMenuItem)
	{
		super(cast(GtkItem*)gtkMenuItem);
		this.gtkMenuItem = gtkMenuItem;
	}
	
	
	/** store the action code passed in by the applcation */
	private char[] actionLabel;
	
	/** Gets the application set action code */
	public char[] getActionName()
	{
		if ( actionLabel is null )
		{
			actionLabel = "";
		}
		return actionLabel;
	}
	
	/**
	 * Creates a new menu item with a label and a listener and a action.
	 * used for backward compatibily with DUI.
	 */
	this(char[] label, void delegate(MenuItem)dlg, char[] action)
	{
		this(label);
		this.actionLabel = action;
		addOnActivate(dlg);
	}
	
	
	
	/**
	 * Creates a new Item associated with a "activate" delegate and with a action code
	 */
	public this(void delegate(MenuItem) dlg, char[] label, char[] action, bit mnemonic=true)
	{
		this(label, mnemonic);
		this.actionLabel = action;
		addOnActivate(dlg);
	}
	
	/**
	 * Creates a new Item associated with a "activate" delegate
	 */
	public this(void delegate(MenuItem) dlg, char[] label, bit mnemonic=true)
	{
		this(label, mnemonic);
		addOnActivate(dlg);
	}
	
	/**
	 * Creates a new GtkMenuItem whose child is a GtkLabel.
	 * If mnemonic is true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the menu item.
	 * label:
	 * the text for the label
	 * Returns:
	 * the newly created GtkMenuItem
	 */
	public this (char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_menu_item_new_with_mnemonic (const gchar *label);
			this(cast(GtkMenuItem*)gtk_menu_item_new_with_mnemonic(Str.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_menu_item_new_with_label (const gchar *label);
			this(cast(GtkMenuItem*)gtk_menu_item_new_with_label(Str.toStringz(label)) );
		}
		setName(label);
	}
	
	/**
	 * Emits the "activate" signal on the given item
	 * menu_item:
	 * the menu item
	 */
	public void itemActivate()
	{
		// void gtk_menu_item_activate (GtkMenuItem *menu_item);
		gtk_menu_item_activate(gtkMenuItem);
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(MenuItem)[] onActivateListeners;
	void addOnActivate(void delegate(MenuItem) dlg)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkMenuItem* menuitemStruct, MenuItem menuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(MenuItem) dlg ; menuItem.onActivateListeners )
		{
			dlg(menuItem);
		}
		
		return consumed;
	}
	
	void delegate(MenuItem)[] onActivateItemListeners;
	void addOnActivateItem(void delegate(MenuItem) dlg)
	{
		if ( !("activate-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-item",
			cast(GCallback)&callBackActivateItem,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["activate-item"] = 1;
		}
		onActivateItemListeners ~= dlg;
	}
	extern(C) static void callBackActivateItem(GtkMenuItem* menuitemStruct, MenuItem menuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(MenuItem) dlg ; menuItem.onActivateItemListeners )
		{
			dlg(menuItem);
		}
		
		return consumed;
	}
	
	void delegate(gint, MenuItem)[] onToggleSizeAllocateListeners;
	void addOnToggleSizeAllocate(void delegate(gint, MenuItem) dlg)
	{
		if ( !("toggle-size-allocate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-size-allocate",
			cast(GCallback)&callBackToggleSizeAllocate,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["toggle-size-allocate"] = 1;
		}
		onToggleSizeAllocateListeners ~= dlg;
	}
	extern(C) static void callBackToggleSizeAllocate(GtkMenuItem* menuitemStruct, gint arg1, MenuItem menuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(gint, MenuItem) dlg ; menuItem.onToggleSizeAllocateListeners )
		{
			dlg(arg1, menuItem);
		}
		
		return consumed;
	}
	
	void delegate(gpointer, MenuItem)[] onToggleSizeRequestListeners;
	void addOnToggleSizeRequest(void delegate(gpointer, MenuItem) dlg)
	{
		if ( !("toggle-size-request" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-size-request",
			cast(GCallback)&callBackToggleSizeRequest,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["toggle-size-request"] = 1;
		}
		onToggleSizeRequestListeners ~= dlg;
	}
	extern(C) static void callBackToggleSizeRequest(GtkMenuItem* menuitemStruct, gpointer arg1, MenuItem menuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(gpointer, MenuItem) dlg ; menuItem.onToggleSizeRequestListeners )
		{
			dlg(arg1, menuItem);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkMenuItem.
	 * Returns:
	 * the newly created GtkMenuItem
	 */
	public this ()
	{
		// GtkWidget* gtk_menu_item_new (void);
		this(cast(GtkMenuItem*)gtk_menu_item_new() );
	}
	
	
	
	/**
	 * Sets whether the menu item appears justified at the right
	 * side of a menu bar. This was traditionally done for "Help" menu
	 * items, but is now considered a bad idea. (If the widget
	 * layout is reversed for a right-to-left language like Hebrew
	 * or Arabic, right-justified-menu-items appear at the left.)
	 * menu_item:
	 *  a GtkMenuItem.
	 * right_justified:
	 *  if TRUE the menu item will appear at the
	 *  far right if added to a menu bar.
	 */
	public void setRightJustified(int rightJustified)
	{
		// void gtk_menu_item_set_right_justified  (GtkMenuItem *menu_item,  gboolean right_justified);
		gtk_menu_item_set_right_justified(gtkMenuItem, rightJustified);
	}
	
	/**
	 * Sets the widget submenu, or changes it.
	 * menu_item:
	 * the menu item widget
	 * submenu:
	 * the submenu
	 */
	public void setSubmenu(Widget submenu)
	{
		// void gtk_menu_item_set_submenu (GtkMenuItem *menu_item,  GtkWidget *submenu);
		gtk_menu_item_set_submenu(gtkMenuItem, (submenu is null) ? null : submenu.getWidgetStruct());
	}
	
	/**
	 * Set the accelerator path on menu_item, through which runtime changes of the
	 * menu item's accelerator caused by the user can be identified and saved to
	 * persistant storage (see gtk_accel_map_save() on this).
	 * To setup a default accelerator for this menu item, call
	 * gtk_accel_map_add_entry() with the same accel_path.
	 * See also gtk_accel_map_add_entry() on the specifics of accelerator paths,
	 * and gtk_menu_set_accel_path() for a more convenient variant of this function.
	 * This function is basically a convenience wrapper that handles calling
	 * gtk_widget_set_accel_path() with the appropriate accelerator group for
	 * the menu item.
	 * Note that you do need to set an accelerator on the parent menu with
	 * gtk_menu_set_accel_group() for this to work.
	 * menu_item:
	 *  a valid GtkMenuItem
	 * accel_path:
	 *  accelerator path, corresponding to this menu item's
	 *  functionality, or NULL to unset the current path.
	 */
	public void setAccelPath(char[] accelPath)
	{
		// void gtk_menu_item_set_accel_path (GtkMenuItem *menu_item,  const gchar *accel_path);
		gtk_menu_item_set_accel_path(gtkMenuItem, Str.toStringz(accelPath));
	}
	
	/**
	 * Removes the widget's submenu.
	 * menu_item:
	 * the menu item widget
	 */
	public void removeSubmenu()
	{
		// void gtk_menu_item_remove_submenu (GtkMenuItem *menu_item);
		gtk_menu_item_remove_submenu(gtkMenuItem);
	}
	
	/**
	 * Emits the "select" signal on the given item. Behaves exactly like
	 * gtk_item_select.
	 * menu_item:
	 * the menu item
	 */
	public void select()
	{
		// void gtk_menu_item_select (GtkMenuItem *menu_item);
		gtk_menu_item_select(gtkMenuItem);
	}
	
	/**
	 * Emits the "deselect" signal on the given item. Behaves exactly like
	 * gtk_item_deselect.
	 * menu_item:
	 * the menu item
	 */
	public void deselect()
	{
		// void gtk_menu_item_deselect (GtkMenuItem *menu_item);
		gtk_menu_item_deselect(gtkMenuItem);
	}
	
	
	/**
	 * Emits the "toggle_size_request" signal on the given item.
	 * menu_item:
	 * the menu item
	 * requisition:
	 * the requisition to use as signal data.
	 */
	public void toggleSizeRequest(int* requisition)
	{
		// void gtk_menu_item_toggle_size_request  (GtkMenuItem *menu_item,  gint *requisition);
		gtk_menu_item_toggle_size_request(gtkMenuItem, requisition);
	}
	
	/**
	 * Emits the "toggle_size_allocate" signal on the given item.
	 * menu_item:
	 * the menu item.
	 * allocation:
	 * the allocation to use as signal data.
	 */
	public void toggleSizeAllocate(int allocation)
	{
		// void gtk_menu_item_toggle_size_allocate  (GtkMenuItem *menu_item,  gint allocation);
		gtk_menu_item_toggle_size_allocate(gtkMenuItem, allocation);
	}
	
	
	/**
	 * Gets whether the menu item appears justified at the right
	 * side of the menu bar.
	 * menu_item:
	 *  a GtkMenuItem
	 * Returns:
	 *  TRUE if the menu item will appear at the
	 *  far right if added to a menu bar.
	 */
	public int getRightJustified()
	{
		// gboolean gtk_menu_item_get_right_justified  (GtkMenuItem *menu_item);
		return gtk_menu_item_get_right_justified(gtkMenuItem);
	}
	
	/**
	 * Gets the submenu underneath this menu item, if any. See
	 * gtk_menu_item_set_submenu().
	 * menu_item:
	 *  a GtkMenuItem
	 * Returns:
	 *  submenu for this menu item, or NULL if none.
	 * Style Property Details
	 * The "arrow-spacing" style property
	 *  "arrow-spacing" gint : Read
	 * Space between label and arrow.
	 * Allowed values: >= 0
	 * Default value: 10
	 */
	public Widget getSubmenu()
	{
		// GtkWidget* gtk_menu_item_get_submenu (GtkMenuItem *menu_item);
		return new Widget( gtk_menu_item_get_submenu(gtkMenuItem) );
	}
	
	
	
	
	
	
}
