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
 * 	- ActivatableIF
 * prefixes:
 * 	- gtk_menu_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_menu_item_new_with_label
 * 	- gtk_menu_item_new_with_mnemonic
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.AccelGroup
 * 	- gtk.Widget
 * 	- gtk.ActivatableT
 * 	- gtk.ActivatableIF
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- activate -> itemActivate
 * overrides:
 */

module gtk.MenuItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.AccelGroup;
private import gtk.Widget;
private import gtk.ActivatableT;
private import gtk.ActivatableIF;



private import gtk.Bin;

/**
 * The GtkMenuItem widget and the derived widgets are the only valid
 * childs for menus. Their function is to correctly handle highlighting,
 * alignment, events and submenus.
 *
 * As it derives from GtkBin it can hold any valid child widget, altough
 * only a few are really useful.
 *
 * GtkMenuItem as GtkBuildable
 *
 * The GtkMenuItem implementation of the GtkBuildable interface
 * supports adding a submenu by specifying "submenu" as the "type"
 * attribute of a <child> element.
 *
 * $(DDOC_COMMENT example)
 */
public class MenuItem : Bin, ActivatableIF
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
		super(cast(GtkBin*)gtkMenuItem);
		this.gtkMenuItem = gtkMenuItem;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMenuItem = cast(GtkMenuItem*)obj;
	}
	
	/** store the action code passed in by the applcation */
	private string actionLabel;
	
	// add the Activatable capabilities
	mixin ActivatableT!(GtkMenuItem);
	
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
	int[string] connectedSignals;
	
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
	extern(C) static void callBackActivate(GtkMenuItem* menuitemStruct, MenuItem _menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; _menuItem.onActivateListeners )
		{
			dlg(_menuItem);
		}
	}
	
	void delegate(MenuItem)[] onActivateItemListeners;
	/**
	 * Emitted when the item is activated, but also if the menu item has a
	 * submenu. For normal applications, the relevant signal is
	 * "activate".
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
	extern(C) static void callBackActivateItem(GtkMenuItem* menuitemStruct, MenuItem _menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; _menuItem.onActivateItemListeners )
		{
			dlg(_menuItem);
		}
	}
	
	void delegate(MenuItem)[] onDeselectListeners;
	/**
	 */
	void addOnDeselect(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("deselect" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deselect",
			cast(GCallback)&callBackDeselect,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deselect"] = 1;
		}
		onDeselectListeners ~= dlg;
	}
	extern(C) static void callBackDeselect(GtkMenuItem* menuitemStruct, MenuItem _menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; _menuItem.onDeselectListeners )
		{
			dlg(_menuItem);
		}
	}
	
	void delegate(MenuItem)[] onSelectListeners;
	/**
	 */
	void addOnSelect(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select",
			cast(GCallback)&callBackSelect,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select"] = 1;
		}
		onSelectListeners ~= dlg;
	}
	extern(C) static void callBackSelect(GtkMenuItem* menuitemStruct, MenuItem _menuItem)
	{
		foreach ( void delegate(MenuItem) dlg ; _menuItem.onSelectListeners )
		{
			dlg(_menuItem);
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
	extern(C) static void callBackToggleSizeAllocate(GtkMenuItem* menuitemStruct, gint arg1, MenuItem _menuItem)
	{
		foreach ( void delegate(gint, MenuItem) dlg ; _menuItem.onToggleSizeAllocateListeners )
		{
			dlg(arg1, _menuItem);
		}
	}
	
	void delegate(void*, MenuItem)[] onToggleSizeRequestListeners;
	/**
	 * See Also
	 * GtkBin, GtkMenuShell
	 */
	void addOnToggleSizeRequest(void delegate(void*, MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggleSizeRequest(GtkMenuItem* menuitemStruct, void* arg1, MenuItem _menuItem)
	{
		foreach ( void delegate(void*, MenuItem) dlg ; _menuItem.onToggleSizeRequestListeners )
		{
			dlg(arg1, _menuItem);
		}
	}
	
	
	/**
	 * Creates a new GtkMenuItem.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_menu_item_new (void);
		auto p = gtk_menu_item_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_item_new()");
		}
		this(cast(GtkMenuItem*) p);
	}
	
	/**
	 * Warning
	 * gtk_menu_item_set_right_justified has been deprecated since version 3.2 and should not be used in newly-written code. If you insist on using it, use
	 *  gtk_widget_set_hexpand() and gtk_widget_set_halign().
	 * Sets whether the menu item appears justified at the right
	 * side of a menu bar. This was traditionally done for "Help"
	 * menu items, but is now considered a bad idea. (If the widget
	 * layout is reversed for a right-to-left language like Hebrew
	 * or Arabic, right-justified-menu-items appear at the left.)
	 * Params:
	 * rightJustified = if TRUE the menu item will appear at the
	 * far right if added to a menu bar
	 */
	public void setRightJustified(int rightJustified)
	{
		// void gtk_menu_item_set_right_justified (GtkMenuItem *menu_item,  gboolean right_justified);
		gtk_menu_item_set_right_justified(gtkMenuItem, rightJustified);
	}
	
	/**
	 * Warning
	 * gtk_menu_item_get_right_justified has been deprecated since version 3.2 and should not be used in newly-written code. See gtk_menu_item_set_right_justified()
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
	 * Sets text on the menu_item label
	 * Since 2.16
	 * Returns: The text in the menu_item label. This is the internal string used by the label, and must not be modified.
	 */
	public string getLabel()
	{
		// const gchar * gtk_menu_item_get_label (GtkMenuItem *menu_item);
		return Str.toString(gtk_menu_item_get_label(gtkMenuItem));
	}
	
	/**
	 * Sets text on the menu_item label
	 * Since 2.16
	 * Params:
	 * label = the text you want to set
	 */
	public void setLabel(string label)
	{
		// void gtk_menu_item_set_label (GtkMenuItem *menu_item,  const gchar *label);
		gtk_menu_item_set_label(gtkMenuItem, Str.toStringz(label));
	}
	
	/**
	 * Checks if an underline in the text indicates the next character
	 * should be used for the mnemonic accelerator key.
	 * Since 2.16
	 * Returns: TRUE if an embedded underline in the label indicates the mnemonic accelerator key.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_menu_item_get_use_underline (GtkMenuItem *menu_item);
		return gtk_menu_item_get_use_underline(gtkMenuItem);
	}
	
	/**
	 * If true, an underline in the text indicates the next character
	 * should be used for the mnemonic accelerator key.
	 * Since 2.16
	 * Params:
	 * setting = TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(int setting)
	{
		// void gtk_menu_item_set_use_underline (GtkMenuItem *menu_item,  gboolean setting);
		gtk_menu_item_set_use_underline(gtkMenuItem, setting);
	}
	
	/**
	 * Sets or replaces the menu item's submenu, or removes it when a NULL
	 * submenu is passed.
	 * Params:
	 * submenu = the submenu, or NULL. [allow-none]
	 */
	public void setSubmenu(Widget submenu)
	{
		// void gtk_menu_item_set_submenu (GtkMenuItem *menu_item,  GtkWidget *submenu);
		gtk_menu_item_set_submenu(gtkMenuItem, (submenu is null) ? null : submenu.getWidgetStruct());
	}
	
	/**
	 * Gets the submenu underneath this menu item, if any.
	 * See gtk_menu_item_set_submenu().
	 * Returns: submenu for this menu item, or NULL if none. [transfer none]
	 */
	public Widget getSubmenu()
	{
		// GtkWidget * gtk_menu_item_get_submenu (GtkMenuItem *menu_item);
		auto p = gtk_menu_item_get_submenu(gtkMenuItem);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Set the accelerator path on menu_item, through which runtime
	 * changes of the menu item's accelerator caused by the user can be
	 * identified and saved to persistent storage (see gtk_accel_map_save()
	 * on this). To set up a default accelerator for this menu item, call
	 * gtk_accel_map_add_entry() with the same accel_path. See also
	 * gtk_accel_map_add_entry() on the specifics of accelerator paths,
	 * and gtk_menu_set_accel_path() for a more convenient variant of
	 * this function.
	 * This function is basically a convenience wrapper that handles
	 * calling gtk_widget_set_accel_path() with the appropriate accelerator
	 * group for the menu item.
	 * Note that you do need to set an accelerator on the parent menu with
	 * gtk_menu_set_accel_group() for this to work.
	 * Note that accel_path string will be stored in a GQuark.
	 * Therefore, if you pass a static string, you can save some memory
	 * by interning it first with g_intern_static_string().
	 * Params:
	 * accelPath = accelerator path, corresponding to this menu
	 * item's functionality, or NULL to unset the current path. [allow-none]
	 */
	public void setAccelPath(string accelPath)
	{
		// void gtk_menu_item_set_accel_path (GtkMenuItem *menu_item,  const gchar *accel_path);
		gtk_menu_item_set_accel_path(gtkMenuItem, Str.toStringz(accelPath));
	}
	
	/**
	 * Retrieve the accelerator path that was previously set on menu_item.
	 * See gtk_menu_item_set_accel_path() for details.
	 * Since 2.14
	 * Returns: the accelerator path corresponding to this menu item's functionality, or NULL if not set
	 */
	public string getAccelPath()
	{
		// const gchar * gtk_menu_item_get_accel_path (GtkMenuItem *menu_item);
		return Str.toString(gtk_menu_item_get_accel_path(gtkMenuItem));
	}
	
	/**
	 * Emits the "select" signal on the given item. Behaves
	 * exactly like gtk_item_select.
	 */
	public void select()
	{
		// void gtk_menu_item_select (GtkMenuItem *menu_item);
		gtk_menu_item_select(gtkMenuItem);
	}
	
	/**
	 * Emits the "deselect" signal on the given item. Behaves
	 * exactly like gtk_item_deselect.
	 */
	public void deselect()
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
	 * Emits the "toggle-size-request" signal on the given item.
	 * Params:
	 * requisition = the requisition to use as signal data.
	 */
	public void toggleSizeRequest(ref int requisition)
	{
		// void gtk_menu_item_toggle_size_request (GtkMenuItem *menu_item,  gint *requisition);
		gtk_menu_item_toggle_size_request(gtkMenuItem, &requisition);
	}
	
	/**
	 * Emits the "toggle-size-allocate" signal on the given item.
	 * Params:
	 * allocation = the allocation to use as signal data.
	 */
	public void toggleSizeAllocate(int allocation)
	{
		// void gtk_menu_item_toggle_size_allocate (GtkMenuItem *menu_item,  gint allocation);
		gtk_menu_item_toggle_size_allocate(gtkMenuItem, allocation);
	}
	
	/**
	 * Returns whether the menu_item reserves space for
	 * the submenu indicator, regardless if it has a submenu
	 * or not.
	 * Returns: TRUE if menu_item always reserves space for the submenu indicator Since 3.0
	 */
	public int getReserveIndicator()
	{
		// gboolean gtk_menu_item_get_reserve_indicator (GtkMenuItem *menu_item);
		return gtk_menu_item_get_reserve_indicator(gtkMenuItem);
	}
	
	/**
	 * Sets whether the menu_item should reserve space for
	 * the submenu indicator, regardless if it actually has
	 * a submenu or not.
	 * There should be little need for applications to call
	 * this functions.
	 * Params:
	 * reserve = the new value
	 * Since 3.0
	 */
	public void setReserveIndicator(int reserve)
	{
		// void gtk_menu_item_set_reserve_indicator (GtkMenuItem *menu_item,  gboolean reserve);
		gtk_menu_item_set_reserve_indicator(gtkMenuItem, reserve);
	}
}
