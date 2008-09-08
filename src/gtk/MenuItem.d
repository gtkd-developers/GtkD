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
 * 	- gtk_menu_item_new_with_label
 * 	- gtk_menu_item_new_with_mnemonic
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.AccelGroup
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- activate -> itemActivate
 * overrides:
 * 	- select
 * 	- deselect
 */

module gtk.MenuItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import gtk.AccelGroup;



private import gtk.Item;

/**
 * Description
 * The GtkMenuItem widget and the derived widgets are the only valid
 * childs for menus. Their function is to correctly handle highlighting,
 * alignment, events and submenus.
 * As it derives from GtkBin it can hold any valid child widget, altough
 * only a few are really useful.
 */
public class MenuItem : Item
{
	
	/** the main Gtk struct */
	protected GtkMenuItem* gtkMenuItem;
	
	
	public GtkMenuItem* getMenuItemStruct()
	{
		return gtkMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuItem* gtkMenuItem)
	{
		if(gtkMenuItem is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkMenuItem);
		if( ptr !is null )
		{
			this = cast(MenuItem)ptr;
			return;
		}
		super(cast(GtkItem*)gtkMenuItem);
		this.gtkMenuItem = gtkMenuItem;
	}
	
	
	/** store the action code passed in by the applcation */
	private string actionLabel;
	
	/** Gets the application set action code */
	public string getActionName()
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
	this(string label, void delegate(MenuItem)dlg, string action)
	{
		this(label);
		this.actionLabel = action;
		addOnActivate(dlg);
	}
	
	
	
	/**
	 * Creates a new Item associated with a "activate" delegate and with a action code
	 * and optionally accelGroup
	 */
	public this(void delegate(MenuItem) dlg, string label, string action,
	bool mnemonic=true,
	AccelGroup accelGroup=null,
	char accelKey='\0',
	GdkModifierType modifierType=GdkModifierType.CONTROL_MASK,
	GtkAccelFlags accelFlags=GtkAccelFlags.VISIBLE
	)
	{
		this(label, mnemonic);
		this.actionLabel = action;
		addOnActivate(dlg);
		if ( accelGroup !is null && accelKey != '\0' )
		{
			addAccelerator("activate",accelGroup,accelKey,modifierType,accelFlags);
		}
	}
	
	
	
	/**
	 * Creates a new Item associated with a "activate" delegate
	 */
	public this(void delegate(MenuItem) dlg, string label, bool mnemonic=true)
	{
		this(label, mnemonic);
		addOnActivate(dlg);
	}
	
	/**
	 * Creates a new GtkMenuItem whose child is a GtkLabel.
	 * Params:
	 *  label = the text for the label
	 *  mnemonic = if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the menu item.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkMenuItem* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_menu_item_new_with_mnemonic (const gchar *label);
			p = cast(GtkMenuItem*)gtk_menu_item_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_menu_item_new_with_label (const gchar *label);
			p = cast(GtkMenuItem*)gtk_menu_item_new_with_label(Str.toStringz(label));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_item_new_with_");
		}
		
		this(p);
		
		setName(label);
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(MenuItem)[] onActivateListeners;
	/**
	 * Emitted when the item is activated.
	 */
	void addOnActivate(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkMenuItem* menuitemStruct, MenuItem menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; menuItem.onActivateListeners )
		{
			dlg(menuItem);
		}
	}
	
	void delegate(MenuItem)[] onActivateItemListeners;
	/**
	 * Emitted when the item is activated, but also if the menu item has a
	 * submenu. For normal applications, the relevant signal is "activate".
	 */
	void addOnActivateItem(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-item",
			cast(GCallback)&callBackActivateItem,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-item"] = 1;
		}
		onActivateItemListeners ~= dlg;
	}
	extern(C) static void callBackActivateItem(GtkMenuItem* menuitemStruct, MenuItem menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; menuItem.onActivateItemListeners )
		{
			dlg(menuItem);
		}
	}
	
	void delegate(gint, MenuItem)[] onToggleSizeAllocateListeners;
	/**
	 */
	void addOnToggleSizeAllocate(void delegate(gint, MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-size-allocate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-size-allocate",
			cast(GCallback)&callBackToggleSizeAllocate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-size-allocate"] = 1;
		}
		onToggleSizeAllocateListeners ~= dlg;
	}
	extern(C) static void callBackToggleSizeAllocate(GtkMenuItem* menuitemStruct, gint arg1, MenuItem menuItem)
	{
		foreach ( void delegate(gint, MenuItem) dlg ; menuItem.onToggleSizeAllocateListeners )
		{
			dlg(arg1, menuItem);
		}
	}
	
	void delegate(gpointer, MenuItem)[] onToggleSizeRequestListeners;
	/**
	 * See Also
	 * GtkBin
	 * for how to handle the child.
	 * GtkItem
	 * is the abstract class for all sorts of items.
	 * GtkMenuShell
	 * is always the parent of GtkMenuItem.
	 */
	void addOnToggleSizeRequest(void delegate(gpointer, MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-size-request" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-size-request",
			cast(GCallback)&callBackToggleSizeRequest,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-size-request"] = 1;
		}
		onToggleSizeRequestListeners ~= dlg;
	}
	extern(C) static void callBackToggleSizeRequest(GtkMenuItem* menuitemStruct, gpointer arg1, MenuItem menuItem)
	{
		foreach ( void delegate(gpointer, MenuItem) dlg ; menuItem.onToggleSizeRequestListeners )
		{
			dlg(arg1, menuItem);
		}
	}
	
	
	/**
	 * Creates a new GtkMenuItem.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_menu_item_new (void);
		auto p = gtk_menu_item_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_item_new()");
		}
		this(cast(GtkMenuItem*) p);
	}
	
	/**
	 * Sets whether the menu item appears justified at the right
	 * side of a menu bar. This was traditionally done for "Help" menu
	 * items, but is now considered a bad idea. (If the widget
	 * layout is reversed for a right-to-left language like Hebrew
	 * or Arabic, right-justified-menu-items appear at the left.)
	 * Params:
	 * rightJustified =  if TRUE the menu item will appear at the
	 *  far right if added to a menu bar.
	 */
	public void setRightJustified(int rightJustified)
	{
		// void gtk_menu_item_set_right_justified (GtkMenuItem *menu_item,  gboolean right_justified);
		gtk_menu_item_set_right_justified(gtkMenuItem, rightJustified);
	}
	
	/**
	 * Sets or replaces the menu item's submenu, or removes it when a NULL
	 * submenu is passed.
	 * Params:
	 * submenu =  the submenu, or NULL
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
	 * Params:
	 * accelPath =  accelerator path, corresponding to this menu item's
	 *  functionality, or NULL to unset the current path.
	 */
	public void setAccelPath(string accelPath)
	{
		// void gtk_menu_item_set_accel_path (GtkMenuItem *menu_item,  const gchar *accel_path);
		gtk_menu_item_set_accel_path(gtkMenuItem, Str.toStringz(accelPath));
	}
	
	/**
	 * Warning
	 * gtk_menu_item_remove_submenu has been deprecated since version 2.12 and should not be used in newly-written code. gtk_menu_item_remove_submenu() is deprecated and
	 *  should not be used in newly written code. Use
	 *  gtk_menu_item_set_submenu() instead.
	 * Removes the widget's submenu.
	 */
	public void removeSubmenu()
	{
		// void gtk_menu_item_remove_submenu (GtkMenuItem *menu_item);
		gtk_menu_item_remove_submenu(gtkMenuItem);
	}
	
	/**
	 * Emits the "select" signal on the given item. Behaves exactly like
	 * gtk_item_select.
	 */
	public override void select()
	{
		// void gtk_menu_item_select (GtkMenuItem *menu_item);
		gtk_menu_item_select(gtkMenuItem);
	}
	
	/**
	 * Emits the "deselect" signal on the given item. Behaves exactly like
	 * gtk_item_deselect.
	 */
	public override void deselect()
	{
		// void gtk_menu_item_deselect (GtkMenuItem *menu_item);
		gtk_menu_item_deselect(gtkMenuItem);
	}
	
	/**
	 * Emits the "activate" signal on the given item
	 */
	public void itemActivate()
	{
		// void gtk_menu_item_activate (GtkMenuItem *menu_item);
		gtk_menu_item_activate(gtkMenuItem);
	}
	
	/**
	 * Emits the "toggle_size_request" signal on the given item.
	 * Params:
	 * requisition = the requisition to use as signal data.
	 */
	public void toggleSizeRequest(int* requisition)
	{
		// void gtk_menu_item_toggle_size_request (GtkMenuItem *menu_item,  gint *requisition);
		gtk_menu_item_toggle_size_request(gtkMenuItem, requisition);
	}
	
	/**
	 * Emits the "toggle_size_allocate" signal on the given item.
	 * Params:
	 * allocation = the allocation to use as signal data.
	 */
	public void toggleSizeAllocate(int allocation)
	{
		// void gtk_menu_item_toggle_size_allocate (GtkMenuItem *menu_item,  gint allocation);
		gtk_menu_item_toggle_size_allocate(gtkMenuItem, allocation);
	}
	
	/**
	 * Gets whether the menu item appears justified at the right
	 * side of the menu bar.
	 * Returns: TRUE if the menu item will appear at the far right if added to a menu bar.
	 */
	public int getRightJustified()
	{
		// gboolean gtk_menu_item_get_right_justified (GtkMenuItem *menu_item);
		return gtk_menu_item_get_right_justified(gtkMenuItem);
	}
	
	/**
	 * Gets the submenu underneath this menu item, if any. See
	 * gtk_menu_item_set_submenu().
	 * Returns: submenu for this menu item, or NULL if none.
	 */
	public Widget getSubmenu()
	{
		// GtkWidget* gtk_menu_item_get_submenu (GtkMenuItem *menu_item);
		auto p = gtk_menu_item_get_submenu(gtkMenuItem);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
}
