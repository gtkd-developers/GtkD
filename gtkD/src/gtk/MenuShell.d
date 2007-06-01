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
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.MenuShell;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.Widget;




/**
 * Description
 * A GtkMenuShell is the abstract base class used to derive the
 * GtkMenu and GtkMenuBar subclasses.
 * A GtkMenuShell is a container of GtkMenuItem objects arranged in a
 * list which can be navigated, selected, and activated by the user to perform
 * application functions. A GtkMenuItem can have a submenu associated with it,
 * allowing for nested hierarchical menus.
 */
private import gtk.Container;
public class MenuShell : Container
{
	
	/** the main Gtk struct */
	protected GtkMenuShell* gtkMenuShell;
	
	
	public GtkMenuShell* getMenuShellStruct()
	{
		return gtkMenuShell;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkMenuShell;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuShell* gtkMenuShell)
	{
		assert(gtkMenuShell !is null, "struct gtkMenuShell is null on constructor");
		super(cast(GtkContainer*)gtkMenuShell);
		this.gtkMenuShell = gtkMenuShell;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gboolean, MenuShell)[] onActivateCurrentListeners;
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
	extern(C) static void callBackActivateCurrent(GtkMenuShell* menushellStruct, gboolean forceHide, MenuShell menuShell)
	{
		bool consumed = false;
		
		foreach ( void delegate(gboolean, MenuShell) dlg ; menuShell.onActivateCurrentListeners )
		{
			dlg(forceHide, menuShell);
		}
		
		return consumed;
	}
	
	void delegate(MenuShell)[] onCancelListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(MenuShell) dlg ; menuShell.onCancelListeners )
		{
			dlg(menuShell);
		}
		
		return consumed;
	}
	
	void delegate(GtkDirectionType, MenuShell)[] onCycleFocusListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(GtkDirectionType, MenuShell) dlg ; menuShell.onCycleFocusListeners )
		{
			dlg(arg1, menuShell);
		}
		
		return consumed;
	}
	
	void delegate(MenuShell)[] onDeactivateListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(MenuShell) dlg ; menuShell.onDeactivateListeners )
		{
			dlg(menuShell);
		}
		
		return consumed;
	}
	
	void delegate(GtkMenuDirectionType, MenuShell)[] onMoveCurrentListeners;
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
	extern(C) static void callBackMoveCurrent(GtkMenuShell* menushellStruct, GtkMenuDirectionType direction, MenuShell menuShell)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkMenuDirectionType, MenuShell) dlg ; menuShell.onMoveCurrentListeners )
		{
			dlg(direction, menuShell);
		}
		
		return consumed;
	}
	
	void delegate(MenuShell)[] onSelectionDoneListeners;
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
		bool consumed = false;
		
		foreach ( void delegate(MenuShell) dlg ; menuShell.onSelectionDoneListeners )
		{
			dlg(menuShell);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Adds a new GtkMenuItem to the end of the menu shell's item list.
	 * menu_shell:
	 * a GtkMenuShell.
	 * child:
	 * The GtkMenuItem to add.
	 */
	public void append(Widget child)
	{
		// void gtk_menu_shell_append (GtkMenuShell *menu_shell,  GtkWidget *child);
		gtk_menu_shell_append(gtkMenuShell, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a new GtkMenuItem to the beginning of the menu shell's item list.
	 * menu_shell:
	 * a GtkMenuShell.
	 * child:
	 * The GtkMenuItem to add.
	 */
	public void prepend(Widget child)
	{
		// void gtk_menu_shell_prepend (GtkMenuShell *menu_shell,  GtkWidget *child);
		gtk_menu_shell_prepend(gtkMenuShell, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a new GtkMenuItem to the menu shell's item list at the position
	 * indicated by position.
	 * menu_shell:
	 * a GtkMenuShell.
	 * child:
	 * The GtkMenuItem to add.
	 * position:
	 * The position in the item list where child is added.
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
	 * menu_shell:
	 * a GtkMenuShell.
	 */
	public void deactivate()
	{
		// void gtk_menu_shell_deactivate (GtkMenuShell *menu_shell);
		gtk_menu_shell_deactivate(gtkMenuShell);
	}
	
	/**
	 * Selects the menu item from the menu shell.
	 * menu_shell:
	 * a GtkMenuShell.
	 * menu_item:
	 * The GtkMenuItem to select.
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
	 * menu_shell:
	 *  a GtkMenuShell
	 * search_sensitive:
	 *  if TRUE, search for the first selectable
	 *  menu item, otherwise select nothing if
	 *  the first item isn't sensitive. This
	 *  should be FALSE if the menu is being
	 *  popped up initially.
	 * Since 2.2
	 */
	public void selectFirst(int searchSensitive)
	{
		// void gtk_menu_shell_select_first (GtkMenuShell *menu_shell,  gboolean search_sensitive);
		gtk_menu_shell_select_first(gtkMenuShell, searchSensitive);
	}
	
	/**
	 * Deselects the currently selected item from the menu shell, if any.
	 * menu_shell:
	 * a GtkMenuShell.
	 */
	public void deselect()
	{
		// void gtk_menu_shell_deselect (GtkMenuShell *menu_shell);
		gtk_menu_shell_deselect(gtkMenuShell);
	}
	
	/**
	 * Activates the menu item within the menu shell.
	 * menu_shell:
	 * a GtkMenuShell.
	 * menu_item:
	 * The GtkMenuItem to activate.
	 * force_deactivate:
	 * If TRUE, force the deactivation of the menu shell
	 * after the menu item is activated.
	 */
	public void activateItem(Widget menuItem, int forceDeactivate)
	{
		// void gtk_menu_shell_activate_item (GtkMenuShell *menu_shell,  GtkWidget *menu_item,  gboolean force_deactivate);
		gtk_menu_shell_activate_item(gtkMenuShell, (menuItem is null) ? null : menuItem.getWidgetStruct(), forceDeactivate);
	}
	
	/**
	 * Cancels the selection within the menu shell.
	 * menu_shell:
	 *  a GtkMenuShell
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
	 * Note that setting it to FALSE has side-effects:
	 * If the focus is in some other app, it keeps the focus and keynav in
	 * the menu doesn't work. Consequently, keynav on the menu will only
	 * work if the focus is on some toplevel owned by the onscreen keyboard.
	 * To avoid confusing the user, menus with take_focus set to FALSE
	 * should not display mnemonics or accelerators, since it cannot be
	 * guaranteed that they will work.
	 * See also gdk_keyboard_grab()
	 * menu_shell:
	 *  a GtkMenuShell
	 * take_focus:
	 *  TRUE if the menu shell should take the keyboard focus on popup.
	 * Since 2.8
	 */
	public void setTakeFocus(int takeFocus)
	{
		// void gtk_menu_shell_set_take_focus (GtkMenuShell *menu_shell,  gboolean take_focus);
		gtk_menu_shell_set_take_focus(gtkMenuShell, takeFocus);
	}
	
	/**
	 * Returns TRUE if the menu shell will take the keyboard focus on popup.
	 * menu_shell:
	 *  a GtkMenuShell
	 * Returns:
	 *  TRUE if the menu shell will take the keyboard focus on popup.
	 * Since 2.8
	 */
	public int getTakeFocus()
	{
		// gboolean gtk_menu_shell_get_take_focus (GtkMenuShell *menu_shell);
		return gtk_menu_shell_get_take_focus(gtkMenuShell);
	}
	
	
	
	
	
	
}
