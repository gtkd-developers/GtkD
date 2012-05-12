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
 * inFile  = GtkMenuShell.html
 * outPack = gtk
 * outFile = MenuShell
 * strct   = GtkMenuShell
 * realStrct=
 * ctorStrct=
 * clss    = MenuShell
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_shell_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.MenuShell;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Widget;



private import gtk.Container;

/**
 * Description
 * A GtkMenuShell is the abstract base class used to derive the
 * GtkMenu and GtkMenuBar subclasses.
 * A GtkMenuShell is a container of GtkMenuItem objects arranged in a
 * list which can be navigated, selected, and activated by the user to perform
 * application functions. A GtkMenuItem can have a submenu associated with it,
 * allowing for nested hierarchical menus.
 */
public class MenuShell : Container
{
	
	/** the main Gtk struct */
	protected GtkMenuShell* gtkMenuShell;
	
	
	public GtkMenuShell* getMenuShellStruct()
	{
		return gtkMenuShell;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuShell;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuShell* gtkMenuShell)
	{
		if(gtkMenuShell is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkMenuShell);
		if( ptr !is null )
		{
			this = cast(MenuShell)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkMenuShell);
		this.gtkMenuShell = gtkMenuShell;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMenuShell = cast(GtkMenuShell*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(gboolean, MenuShell)[] onActivateCurrentListeners;
	/**
	 * An action signal that activates the current menu item within the menu
	 * shell.
	 */
	void addOnActivateCurrent(void delegate(gboolean, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-current" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-current",
			cast(GCallback)&callBackActivateCurrent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-current"] = 1;
		}
		onActivateCurrentListeners ~= dlg;
	}
	extern(C) static void callBackActivateCurrent(GtkMenuShell* menushellStruct, gboolean arg1, MenuShell menuShell)
	{
		foreach ( void delegate(gboolean, MenuShell) dlg ; menuShell.onActivateCurrentListeners )
		{
			dlg(arg1, menuShell);
		}
	}
	
	void delegate(MenuShell)[] onCancelListeners;
	/**
	 * An action signal which cancels the selection within the menu shell.
	 * Causes the GtkMenuShell::selection-done signal to be emitted.
	 */
	void addOnCancel(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cancel" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancel",
			cast(GCallback)&callBackCancel,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cancel"] = 1;
		}
		onCancelListeners ~= dlg;
	}
	extern(C) static void callBackCancel(GtkMenuShell* menushellStruct, MenuShell menuShell)
	{
		foreach ( void delegate(MenuShell) dlg ; menuShell.onCancelListeners )
		{
			dlg(menuShell);
		}
	}
	
	void delegate(GtkDirectionType, MenuShell)[] onCycleFocusListeners;
	/**
	 */
	void addOnCycleFocus(void delegate(GtkDirectionType, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cycle-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cycle-focus",
			cast(GCallback)&callBackCycleFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cycle-focus"] = 1;
		}
		onCycleFocusListeners ~= dlg;
	}
	extern(C) static void callBackCycleFocus(GtkMenuShell* menushellStruct, GtkDirectionType arg1, MenuShell menuShell)
	{
		foreach ( void delegate(GtkDirectionType, MenuShell) dlg ; menuShell.onCycleFocusListeners )
		{
			dlg(arg1, menuShell);
		}
	}
	
	void delegate(MenuShell)[] onDeactivateListeners;
	/**
	 * This signal is emitted when a menu shell is deactivated.
	 */
	void addOnDeactivate(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("deactivate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deactivate",
			cast(GCallback)&callBackDeactivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deactivate"] = 1;
		}
		onDeactivateListeners ~= dlg;
	}
	extern(C) static void callBackDeactivate(GtkMenuShell* menushellStruct, MenuShell menuShell)
	{
		foreach ( void delegate(MenuShell) dlg ; menuShell.onDeactivateListeners )
		{
			dlg(menuShell);
		}
	}
	
	void delegate(GtkMenuDirectionType, MenuShell)[] onMoveCurrentListeners;
	/**
	 * An action signal which moves the current menu item in the direction
	 * specified by direction.
	 */
	void addOnMoveCurrent(void delegate(GtkMenuDirectionType, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-current" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-current",
			cast(GCallback)&callBackMoveCurrent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-current"] = 1;
		}
		onMoveCurrentListeners ~= dlg;
	}
	extern(C) static void callBackMoveCurrent(GtkMenuShell* menushellStruct, GtkMenuDirectionType arg1, MenuShell menuShell)
	{
		foreach ( void delegate(GtkMenuDirectionType, MenuShell) dlg ; menuShell.onMoveCurrentListeners )
		{
			dlg(arg1, menuShell);
		}
	}
	
	bool delegate(gint, MenuShell)[] onMoveSelectedListeners;
	/**
	 * The ::move-selected signal is emitted to move the selection to
	 * another item.
	 * TRUE to stop the signal emission, FALSE to continue
	 * Since 2.12
	 */
	void addOnMoveSelected(bool delegate(gint, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-selected",
			cast(GCallback)&callBackMoveSelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-selected"] = 1;
		}
		onMoveSelectedListeners ~= dlg;
	}
	extern(C) static gboolean callBackMoveSelected(GtkMenuShell* menuShellStruct, gint distance, MenuShell menuShell)
	{
		foreach ( bool delegate(gint, MenuShell) dlg ; menuShell.onMoveSelectedListeners )
		{
			if ( dlg(distance, menuShell) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(MenuShell)[] onSelectionDoneListeners;
	/**
	 * This signal is emitted when a selection has been completed within a menu
	 * shell.
	 */
	void addOnSelectionDone(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-done" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-done",
			cast(GCallback)&callBackSelectionDone,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-done"] = 1;
		}
		onSelectionDoneListeners ~= dlg;
	}
	extern(C) static void callBackSelectionDone(GtkMenuShell* menushellStruct, MenuShell menuShell)
	{
		foreach ( void delegate(MenuShell) dlg ; menuShell.onSelectionDoneListeners )
		{
			dlg(menuShell);
		}
	}
	
	
	/**
	 * Adds a new GtkMenuItem to the end of the menu shell's item list.
	 * Params:
	 * child = The GtkMenuItem to add.
	 */
	public void append(Widget child)
	{
		// void gtk_menu_shell_append (GtkMenuShell *menu_shell,  GtkWidget *child);
		gtk_menu_shell_append(gtkMenuShell, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a new GtkMenuItem to the beginning of the menu shell's item list.
	 * Params:
	 * child = The GtkMenuItem to add.
	 */
	public void prepend(Widget child)
	{
		// void gtk_menu_shell_prepend (GtkMenuShell *menu_shell,  GtkWidget *child);
		gtk_menu_shell_prepend(gtkMenuShell, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a new GtkMenuItem to the menu shell's item list at the position
	 * indicated by position.
	 * Params:
	 * child = The GtkMenuItem to add.
	 * position = The position in the item list where child is added.
	 * Positions are numbered from 0 to n-1.
	 */
	public void insert(Widget child, int position)
	{
		// void gtk_menu_shell_insert (GtkMenuShell *menu_shell,  GtkWidget *child,  gint position);
		gtk_menu_shell_insert(gtkMenuShell, (child is null) ? null : child.getWidgetStruct(), position);
	}
	
	/**
	 * Deactivates the menu shell. Typically this results in the menu shell
	 * being erased from the screen.
	 */
	public void deactivate()
	{
		// void gtk_menu_shell_deactivate (GtkMenuShell *menu_shell);
		gtk_menu_shell_deactivate(gtkMenuShell);
	}
	
	/**
	 * Selects the menu item from the menu shell.
	 * Params:
	 * menuItem = The GtkMenuItem to select.
	 */
	public void selectItem(Widget menuItem)
	{
		// void gtk_menu_shell_select_item (GtkMenuShell *menu_shell,  GtkWidget *menu_item);
		gtk_menu_shell_select_item(gtkMenuShell, (menuItem is null) ? null : menuItem.getWidgetStruct());
	}
	
	/**
	 * Select the first visible or selectable child of the menu shell;
	 * don't select tearoff items unless the only item is a tearoff
	 * item.
	 * Since 2.2
	 * Params:
	 * searchSensitive = if TRUE, search for the first selectable
	 * menu item, otherwise select nothing if
	 * the first item isn't sensitive. This
	 * should be FALSE if the menu is being
	 * popped up initially.
	 */
	public void selectFirst(int searchSensitive)
	{
		// void gtk_menu_shell_select_first (GtkMenuShell *menu_shell,  gboolean search_sensitive);
		gtk_menu_shell_select_first(gtkMenuShell, searchSensitive);
	}
	
	/**
	 * Deselects the currently selected item from the menu shell, if any.
	 */
	public void deselect()
	{
		// void gtk_menu_shell_deselect (GtkMenuShell *menu_shell);
		gtk_menu_shell_deselect(gtkMenuShell);
	}
	
	/**
	 * Activates the menu item within the menu shell.
	 * Params:
	 * menuItem = The GtkMenuItem to activate.
	 * forceDeactivate = If TRUE, force the deactivation of the menu shell
	 * after the menu item is activated.
	 */
	public void activateItem(Widget menuItem, int forceDeactivate)
	{
		// void gtk_menu_shell_activate_item (GtkMenuShell *menu_shell,  GtkWidget *menu_item,  gboolean force_deactivate);
		gtk_menu_shell_activate_item(gtkMenuShell, (menuItem is null) ? null : menuItem.getWidgetStruct(), forceDeactivate);
	}
	
	/**
	 * Cancels the selection within the menu shell.
	 * Since 2.4
	 */
	public void cancel()
	{
		// void gtk_menu_shell_cancel (GtkMenuShell *menu_shell);
		gtk_menu_shell_cancel(gtkMenuShell);
	}
	
	/**
	 * If take_focus is TRUE (the default) the menu shell will take the keyboard
	 * focus so that it will receive all keyboard events which is needed to enable
	 * keyboard navigation in menus.
	 * Setting take_focus to FALSE is useful only for special applications
	 * like virtual keyboard implementations which should not take keyboard
	 * focus.
	 * The take_focus state of a menu or menu bar is automatically propagated
	 * to submenus whenever a submenu is popped up, so you don't have to worry
	 * about recursively setting it for your entire menu hierarchy. Only when
	 * programmatically picking a submenu and popping it up manually, the
	 * take_focus property of the submenu needs to be set explicitely.
	 * Since 2.8
	 * Params:
	 * takeFocus = TRUE if the menu shell should take the keyboard focus on popup.
	 */
	public void setTakeFocus(int takeFocus)
	{
		// void gtk_menu_shell_set_take_focus (GtkMenuShell *menu_shell,  gboolean take_focus);
		gtk_menu_shell_set_take_focus(gtkMenuShell, takeFocus);
	}
	
	/**
	 * Returns TRUE if the menu shell will take the keyboard focus on popup.
	 * Since 2.8
	 * Returns: TRUE if the menu shell will take the keyboard focus on popup.
	 */
	public int getTakeFocus()
	{
		// gboolean gtk_menu_shell_get_take_focus (GtkMenuShell *menu_shell);
		return gtk_menu_shell_get_take_focus(gtkMenuShell);
	}
}
