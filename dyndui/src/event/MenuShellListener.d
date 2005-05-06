/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module event.MenuShellListener;

private import def.Types;
private import def.Constants;
private import dui.MenuShell;

public:


/**
 * Menu shell events
 * \todo add listeners in dispatcher
 */
interface MenuShellListener {

	void menuSActivateCurrentCallback(MenuShell menushell, gboolean force_hide, gpointer user_data);
	void menuSCancelCallback(MenuShell menushell, gpointer user_data);
	void menuSCycleFocusCallback(MenuShell menushell, DirectionType arg1, gpointer user_data);
	void menuSDeactivateCallback(MenuShell menushell, gpointer user_data);
	void menuSMoveCurrentCallback(MenuShell menushell, MenuDirectionType direction, gpointer user_data);
	void menuSSelectionDoneCallback(MenuShell menushell, gpointer user_data);

	//"activate-current" void user_function (GtkMenuShell * menushell, gboolean force_hide, gpointer user_data);
	//"cancel" void user_function (GtkMenuShell * menushell, gpointer user_data);
	//"cycle-focus" void user_function (GtkMenuShell * menushell, GtkDirectionType arg1, gpointer user_data);
	//"deactivate" void user_function (GtkMenuShell * menushell, gpointer user_data);
	//"move-current" void user_function (GtkMenuShell * menushell, GtkMenuDirectionType direction, gpointer user_data);
	//"selection-done" void user_function (GtkMenuShell * menushell, gpointer user_data);

};
