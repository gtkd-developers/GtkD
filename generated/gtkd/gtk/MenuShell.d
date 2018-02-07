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


module gtk.MenuShell;

private import gio.MenuModel;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Container;
private import gtk.MenuItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkMenuShell is the abstract base class used to derive the
 * #GtkMenu and #GtkMenuBar subclasses.
 * 
 * A #GtkMenuShell is a container of #GtkMenuItem objects arranged
 * in a list which can be navigated, selected, and activated by the
 * user to perform application functions. A #GtkMenuItem can have a
 * submenu associated with it, allowing for nested hierarchical menus.
 * 
 * # Terminology
 * 
 * A menu item can be “selected”, this means that it is displayed
 * in the prelight state, and if it has a submenu, that submenu
 * will be popped up.
 * 
 * A menu is “active” when it is visible onscreen and the user
 * is selecting from it. A menubar is not active until the user
 * clicks on one of its menuitems. When a menu is active,
 * passing the mouse over a submenu will pop it up.
 * 
 * There is also is a concept of the current menu and a current
 * menu item. The current menu item is the selected menu item
 * that is furthest down in the hierarchy. (Every active menu shell
 * does not necessarily contain a selected menu item, but if
 * it does, then the parent menu shell must also contain
 * a selected menu item.) The current menu is the menu that
 * contains the current menu item. It will always have a GTK
 * grab and receive all key presses.
 */
public class MenuShell : Container
{
	/** the main Gtk struct */
	protected GtkMenuShell* gtkMenuShell;

	/** Get the main Gtk struct */
	public GtkMenuShell* getMenuShellStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenuShell;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuShell;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenuShell* gtkMenuShell, bool ownedRef = false)
	{
		this.gtkMenuShell = gtkMenuShell;
		super(cast(GtkContainer*)gtkMenuShell, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_menu_shell_get_type();
	}

	/**
	 * Activates the menu item within the menu shell.
	 *
	 * Params:
	 *     menuItem = the #GtkMenuItem to activate
	 *     forceDeactivate = if %TRUE, force the deactivation of the
	 *         menu shell after the menu item is activated
	 */
	public void activateItem(Widget menuItem, bool forceDeactivate)
	{
		gtk_menu_shell_activate_item(gtkMenuShell, (menuItem is null) ? null : menuItem.getWidgetStruct(), forceDeactivate);
	}

	/**
	 * Adds a new #GtkMenuItem to the end of the menu shell's
	 * item list.
	 *
	 * Params:
	 *     child = The #GtkMenuItem to add
	 */
	public void append(MenuItem child)
	{
		gtk_menu_shell_append(gtkMenuShell, (child is null) ? null : cast(GtkWidget*)child.getMenuItemStruct());
	}

	/**
	 * Establishes a binding between a #GtkMenuShell and a #GMenuModel.
	 *
	 * The contents of @shell are removed and then refilled with menu items
	 * according to @model.  When @model changes, @shell is updated.
	 * Calling this function twice on @shell with different @model will
	 * cause the first binding to be replaced with a binding to the new
	 * model. If @model is %NULL then any previous binding is undone and
	 * all children are removed.
	 *
	 * @with_separators determines if toplevel items (eg: sections) have
	 * separators inserted between them.  This is typically desired for
	 * menus but doesn’t make sense for menubars.
	 *
	 * If @action_namespace is non-%NULL then the effect is as if all
	 * actions mentioned in the @model have their names prefixed with the
	 * namespace, plus a dot.  For example, if the action “quit” is
	 * mentioned and @action_namespace is “app” then the effective action
	 * name is “app.quit”.
	 *
	 * This function uses #GtkActionable to define the action name and
	 * target values on the created menu items.  If you want to use an
	 * action group other than “app” and “win”, or if you want to use a
	 * #GtkMenuShell outside of a #GtkApplicationWindow, then you will need
	 * to attach your own action group to the widget hierarchy using
	 * gtk_widget_insert_action_group().  As an example, if you created a
	 * group with a “quit” action and inserted it with the name “mygroup”
	 * then you would use the action name “mygroup.quit” in your
	 * #GMenuModel.
	 *
	 * For most cases you are probably better off using
	 * gtk_menu_new_from_model() or gtk_menu_bar_new_from_model() or just
	 * directly passing the #GMenuModel to gtk_application_set_app_menu() or
	 * gtk_application_set_menubar().
	 *
	 * Params:
	 *     model = the #GMenuModel to bind to or %NULL to remove
	 *         binding
	 *     actionNamespace = the namespace for actions in @model
	 *     withSeparators = %TRUE if toplevel items in @shell should have
	 *         separators between them
	 *
	 * Since: 3.6
	 */
	public void bindModel(MenuModel model, string actionNamespace, bool withSeparators)
	{
		gtk_menu_shell_bind_model(gtkMenuShell, (model is null) ? null : model.getMenuModelStruct(), Str.toStringz(actionNamespace), withSeparators);
	}

	/**
	 * Cancels the selection within the menu shell.
	 *
	 * Since: 2.4
	 */
	public void cancel()
	{
		gtk_menu_shell_cancel(gtkMenuShell);
	}

	/**
	 * Deactivates the menu shell.
	 *
	 * Typically this results in the menu shell being erased
	 * from the screen.
	 */
	public void deactivate()
	{
		gtk_menu_shell_deactivate(gtkMenuShell);
	}

	/**
	 * Deselects the currently selected item from the menu shell,
	 * if any.
	 */
	public void deselect()
	{
		gtk_menu_shell_deselect(gtkMenuShell);
	}

	/**
	 * Gets the parent menu shell.
	 *
	 * The parent menu shell of a submenu is the #GtkMenu or #GtkMenuBar
	 * from which it was opened up.
	 *
	 * Returns: the parent #GtkMenuShell
	 *
	 * Since: 3.0
	 */
	public Widget getParentShell()
	{
		auto p = gtk_menu_shell_get_parent_shell(gtkMenuShell);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the currently selected item.
	 *
	 * Returns: the currently selected item
	 *
	 * Since: 3.0
	 */
	public Widget getSelectedItem()
	{
		auto p = gtk_menu_shell_get_selected_item(gtkMenuShell);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns %TRUE if the menu shell will take the keyboard focus on popup.
	 *
	 * Returns: %TRUE if the menu shell will take the keyboard focus on popup.
	 *
	 * Since: 2.8
	 */
	public bool getTakeFocus()
	{
		return gtk_menu_shell_get_take_focus(gtkMenuShell) != 0;
	}

	/**
	 * Adds a new #GtkMenuItem to the menu shell’s item list
	 * at the position indicated by @position.
	 *
	 * Params:
	 *     child = The #GtkMenuItem to add
	 *     position = The position in the item list where @child
	 *         is added. Positions are numbered from 0 to n-1
	 */
	public void insert(Widget child, int position)
	{
		gtk_menu_shell_insert(gtkMenuShell, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Adds a new #GtkMenuItem to the beginning of the menu shell's
	 * item list.
	 *
	 * Params:
	 *     child = The #GtkMenuItem to add
	 */
	public void prepend(Widget child)
	{
		gtk_menu_shell_prepend(gtkMenuShell, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Select the first visible or selectable child of the menu shell;
	 * don’t select tearoff items unless the only item is a tearoff
	 * item.
	 *
	 * Params:
	 *     searchSensitive = if %TRUE, search for the first selectable
	 *         menu item, otherwise select nothing if
	 *         the first item isn’t sensitive. This
	 *         should be %FALSE if the menu is being
	 *         popped up initially.
	 *
	 * Since: 2.2
	 */
	public void selectFirst(bool searchSensitive)
	{
		gtk_menu_shell_select_first(gtkMenuShell, searchSensitive);
	}

	/**
	 * Selects the menu item from the menu shell.
	 *
	 * Params:
	 *     menuItem = The #GtkMenuItem to select
	 */
	public void selectItem(Widget menuItem)
	{
		gtk_menu_shell_select_item(gtkMenuShell, (menuItem is null) ? null : menuItem.getWidgetStruct());
	}

	/**
	 * If @take_focus is %TRUE (the default) the menu shell will take
	 * the keyboard focus so that it will receive all keyboard events
	 * which is needed to enable keyboard navigation in menus.
	 *
	 * Setting @take_focus to %FALSE is useful only for special applications
	 * like virtual keyboard implementations which should not take keyboard
	 * focus.
	 *
	 * The @take_focus state of a menu or menu bar is automatically
	 * propagated to submenus whenever a submenu is popped up, so you
	 * don’t have to worry about recursively setting it for your entire
	 * menu hierarchy. Only when programmatically picking a submenu and
	 * popping it up manually, the @take_focus property of the submenu
	 * needs to be set explicitly.
	 *
	 * Note that setting it to %FALSE has side-effects:
	 *
	 * If the focus is in some other app, it keeps the focus and keynav in
	 * the menu doesn’t work. Consequently, keynav on the menu will only
	 * work if the focus is on some toplevel owned by the onscreen keyboard.
	 *
	 * To avoid confusing the user, menus with @take_focus set to %FALSE
	 * should not display mnemonics or accelerators, since it cannot be
	 * guaranteed that they will work.
	 *
	 * See also gdk_keyboard_grab()
	 *
	 * Params:
	 *     takeFocus = %TRUE if the menu shell should take the keyboard
	 *         focus on popup
	 *
	 * Since: 2.8
	 */
	public void setTakeFocus(bool takeFocus)
	{
		gtk_menu_shell_set_take_focus(gtkMenuShell, takeFocus);
	}

	/**
	 * An action signal that activates the current menu item within
	 * the menu shell.
	 *
	 * Params:
	 *     forceHide = if %TRUE, hide the menu after activating the menu item
	 */
	gulong addOnActivateCurrent(void delegate(bool, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-current", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * An action signal which cancels the selection within the menu shell.
	 * Causes the #GtkMenuShell::selection-done signal to be emitted.
	 */
	gulong addOnCancel(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * A keybinding signal which moves the focus in the
	 * given @direction.
	 *
	 * Params:
	 *     direction = the direction to cycle in
	 */
	gulong addOnCycleFocus(void delegate(GtkDirectionType, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cycle-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a menu shell is deactivated.
	 */
	gulong addOnDeactivate(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "deactivate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert signal is emitted when a new #GtkMenuItem is added to
	 * a #GtkMenuShell.  A separate signal is used instead of
	 * GtkContainer::add because of the need for an additional position
	 * parameter.
	 *
	 * The inverse of this signal is the GtkContainer::removed signal.
	 *
	 * Params:
	 *     child = the #GtkMenuItem that is being inserted
	 *     position = the position at which the insert occurs
	 *
	 * Since: 3.2
	 */
	gulong addOnInsert(void delegate(Widget, int, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * An keybinding signal which moves the current menu item
	 * in the direction specified by @direction.
	 *
	 * Params:
	 *     direction = the direction to move
	 */
	gulong addOnMoveCurrent(void delegate(GtkMenuDirectionType, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-current", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-selected signal is emitted to move the selection to
	 * another item.
	 *
	 * Params:
	 *     distance = +1 to move to the next item, -1 to move to the previous
	 *
	 * Returns: %TRUE to stop the signal emission, %FALSE to continue
	 *
	 * Since: 2.12
	 */
	gulong addOnMoveSelected(bool delegate(int, MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a selection has been
	 * completed within a menu shell.
	 */
	gulong addOnSelectionDone(void delegate(MenuShell) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-done", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
