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


module gtk.MenuItem;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableIF;
private import gtk.ActivatableT;
private import gtk.Bin;
private import gtk.Menu;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkMenuItem widget and the derived widgets are the only valid
 * children for menus. Their function is to correctly handle highlighting,
 * alignment, events and submenus.
 * 
 * As a GtkMenuItem derives from #GtkBin it can hold any valid child widget,
 * although only a few are really useful.
 * 
 * By default, a GtkMenuItem sets a #GtkAccelLabel as its child.
 * GtkMenuItem has direct functions to set the label and its mnemonic.
 * For more advanced label settings, you can fetch the child widget from the GtkBin.
 * 
 * An example for setting markup and accelerator on a MenuItem:
 * |[<!-- language="C" -->
 * GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");
 * 
 * GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
 * gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
 * gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
 * ]|
 * 
 * # GtkMenuItem as GtkBuildable
 * 
 * The GtkMenuItem implementation of the #GtkBuildable interface supports
 * adding a submenu by specifying “submenu” as the “type” attribute of
 * a <child> element.
 * 
 * An example of UI definition fragment with submenus:
 * |[
 * <object class="GtkMenuItem">
 * <child type="submenu">
 * <object class="GtkMenu"/>
 * </child>
 * </object>
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * menuitem
 * ├── <child>
 * ╰── [arrow.right]
 * ]|
 * 
 * GtkMenuItem has a single CSS node with name menuitem. If the menuitem
 * has a submenu, it gets another CSS node with name arrow, which has
 * the .left or .right style class.
 */
public class MenuItem : Bin, ActionableIF, ActivatableIF
{
	/** the main Gtk struct */
	protected GtkMenuItem* gtkMenuItem;

	/** Get the main Gtk struct */
	public GtkMenuItem* getMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenuItem* gtkMenuItem, bool ownedRef = false)
	{
		this.gtkMenuItem = gtkMenuItem;
		super(cast(GtkBin*)gtkMenuItem, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkMenuItem);

	// add the Activatable capabilities
	mixin ActivatableT!(GtkMenuItem);

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

	/** */
	public static GType getType()
	{
		return gtk_menu_item_get_type();
	}

	/**
	 * Creates a new #GtkMenuItem.
	 *
	 * Returns: the newly created #GtkMenuItem
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_menu_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenuItem*) p);
	}

	/**
	 * Emits the #GtkMenuItem::activate signal on the given item
	 */
	public void itemActivate()
	{
		gtk_menu_item_activate(gtkMenuItem);
	}

	/**
	 * Emits the #GtkMenuItem::deselect signal on the given item.
	 */
	public void deselect()
	{
		gtk_menu_item_deselect(gtkMenuItem);
	}

	/**
	 * Retrieve the accelerator path that was previously set on @menu_item.
	 *
	 * See gtk_menu_item_set_accel_path() for details.
	 *
	 * Returns: the accelerator path corresponding to
	 *     this menu item’s functionality, or %NULL if not set
	 *
	 * Since: 2.14
	 */
	public string getAccelPath()
	{
		return Str.toString(gtk_menu_item_get_accel_path(gtkMenuItem));
	}

	/**
	 * Sets @text on the @menu_item label
	 *
	 * Returns: The text in the @menu_item label. This is the internal
	 *     string used by the label, and must not be modified.
	 *
	 * Since: 2.16
	 */
	public string getLabel()
	{
		return Str.toString(gtk_menu_item_get_label(gtkMenuItem));
	}

	/**
	 * Returns whether the @menu_item reserves space for
	 * the submenu indicator, regardless if it has a submenu
	 * or not.
	 *
	 * Returns: %TRUE if @menu_item always reserves space for the
	 *     submenu indicator
	 *
	 * Since: 3.0
	 */
	public bool getReserveIndicator()
	{
		return gtk_menu_item_get_reserve_indicator(gtkMenuItem) != 0;
	}

	/**
	 * Gets whether the menu item appears justified at the right
	 * side of the menu bar.
	 *
	 * Deprecated: See gtk_menu_item_set_right_justified()
	 *
	 * Returns: %TRUE if the menu item will appear at the
	 *     far right if added to a menu bar.
	 */
	public bool getRightJustified()
	{
		return gtk_menu_item_get_right_justified(gtkMenuItem) != 0;
	}

	/**
	 * Gets the submenu underneath this menu item, if any.
	 * See gtk_menu_item_set_submenu().
	 *
	 * Returns: submenu for this menu item, or %NULL if none
	 */
	public Widget getSubmenu()
	{
		auto p = gtk_menu_item_get_submenu(gtkMenuItem);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Checks if an underline in the text indicates the next character
	 * should be used for the mnemonic accelerator key.
	 *
	 * Returns: %TRUE if an embedded underline in the label
	 *     indicates the mnemonic accelerator key.
	 *
	 * Since: 2.16
	 */
	public bool getUseUnderline()
	{
		return gtk_menu_item_get_use_underline(gtkMenuItem) != 0;
	}

	/**
	 * Emits the #GtkMenuItem::select signal on the given item.
	 */
	public void select()
	{
		gtk_menu_item_select(gtkMenuItem);
	}

	/**
	 * Set the accelerator path on @menu_item, through which runtime
	 * changes of the menu item’s accelerator caused by the user can be
	 * identified and saved to persistent storage (see gtk_accel_map_save()
	 * on this). To set up a default accelerator for this menu item, call
	 * gtk_accel_map_add_entry() with the same @accel_path. See also
	 * gtk_accel_map_add_entry() on the specifics of accelerator paths,
	 * and gtk_menu_set_accel_path() for a more convenient variant of
	 * this function.
	 *
	 * This function is basically a convenience wrapper that handles
	 * calling gtk_widget_set_accel_path() with the appropriate accelerator
	 * group for the menu item.
	 *
	 * Note that you do need to set an accelerator on the parent menu with
	 * gtk_menu_set_accel_group() for this to work.
	 *
	 * Note that @accel_path string will be stored in a #GQuark.
	 * Therefore, if you pass a static string, you can save some memory
	 * by interning it first with g_intern_static_string().
	 *
	 * Params:
	 *     accelPath = accelerator path, corresponding to this menu
	 *         item’s functionality, or %NULL to unset the current path.
	 */
	public void setAccelPath(string accelPath)
	{
		gtk_menu_item_set_accel_path(gtkMenuItem, Str.toStringz(accelPath));
	}

	/**
	 * Sets @text on the @menu_item label
	 *
	 * Params:
	 *     label = the text you want to set
	 *
	 * Since: 2.16
	 */
	public void setLabel(string label)
	{
		gtk_menu_item_set_label(gtkMenuItem, Str.toStringz(label));
	}

	/**
	 * Sets whether the @menu_item should reserve space for
	 * the submenu indicator, regardless if it actually has
	 * a submenu or not.
	 *
	 * There should be little need for applications to call
	 * this functions.
	 *
	 * Params:
	 *     reserve = the new value
	 *
	 * Since: 3.0
	 */
	public void setReserveIndicator(bool reserve)
	{
		gtk_menu_item_set_reserve_indicator(gtkMenuItem, reserve);
	}

	/**
	 * Sets whether the menu item appears justified at the right
	 * side of a menu bar. This was traditionally done for “Help”
	 * menu items, but is now considered a bad idea. (If the widget
	 * layout is reversed for a right-to-left language like Hebrew
	 * or Arabic, right-justified-menu-items appear at the left.)
	 *
	 * Deprecated: If you insist on using it, use
	 * gtk_widget_set_hexpand() and gtk_widget_set_halign().
	 *
	 * Params:
	 *     rightJustified = if %TRUE the menu item will appear at the
	 *         far right if added to a menu bar
	 */
	public void setRightJustified(bool rightJustified)
	{
		gtk_menu_item_set_right_justified(gtkMenuItem, rightJustified);
	}

	/**
	 * Sets or replaces the menu item’s submenu, or removes it when a %NULL
	 * submenu is passed.
	 *
	 * Params:
	 *     submenu = the submenu, or %NULL
	 */
	public void setSubmenu(Menu submenu)
	{
		gtk_menu_item_set_submenu(gtkMenuItem, (submenu is null) ? null : cast(GtkWidget*)submenu.getMenuStruct());
	}

	/**
	 * If true, an underline in the text indicates the next character
	 * should be used for the mnemonic accelerator key.
	 *
	 * Params:
	 *     setting = %TRUE if underlines in the text indicate mnemonics
	 *
	 * Since: 2.16
	 */
	public void setUseUnderline(bool setting)
	{
		gtk_menu_item_set_use_underline(gtkMenuItem, setting);
	}

	/**
	 * Emits the #GtkMenuItem::toggle-size-allocate signal on the given item.
	 *
	 * Params:
	 *     allocation = the allocation to use as signal data.
	 */
	public void toggleSizeAllocate(int allocation)
	{
		gtk_menu_item_toggle_size_allocate(gtkMenuItem, allocation);
	}

	/**
	 * Emits the #GtkMenuItem::toggle-size-request signal on the given item.
	 *
	 * Params:
	 *     requisition = the requisition to use as signal data.
	 */
	public void toggleSizeRequest(ref int requisition)
	{
		gtk_menu_item_toggle_size_request(gtkMenuItem, &requisition);
	}

	/**
	 * Emitted when the item is activated.
	 */
	gulong addOnActivate(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the item is activated, but also if the menu item has a
	 * submenu. For normal applications, the relevant signal is
	 * #GtkMenuItem::activate.
	 */
	gulong addOnActivateItem(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-item", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnDeselect(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "deselect", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelect(void delegate(MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnToggleSizeAllocate(void delegate(int, MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-size-allocate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnToggleSizeRequest(void delegate(void*, MenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-size-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
