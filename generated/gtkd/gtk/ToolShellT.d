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


module gtk.ToolShellT;

public  import gobject.ObjectG;
public  import gtk.SizeGroup;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkToolShell interface allows container widgets to provide additional
 * information when embedding #GtkToolItem widgets.
 */
public template ToolShellT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkToolShell* getToolShellStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkToolShell*)getStruct();
	}


	/**
	 * Retrieves the current ellipsize mode for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
	 * instead.
	 *
	 * Returns: the current ellipsize mode of @shell
	 *
	 * Since: 2.20
	 */
	public PangoEllipsizeMode getEllipsizeMode()
	{
		return gtk_tool_shell_get_ellipsize_mode(getToolShellStruct());
	}

	/**
	 * Retrieves the icon size for the tool shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_icon_size() instead.
	 *
	 * Returns: the current size (#GtkIconSize) for icons of @shell
	 *
	 * Since: 2.14
	 */
	public GtkIconSize getIconSize()
	{
		return gtk_tool_shell_get_icon_size(getToolShellStruct());
	}

	/**
	 * Returns the relief style of buttons on @shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_relief_style() instead.
	 *
	 * Returns: The relief style of buttons on @shell.
	 *
	 * Since: 2.14
	 */
	public GtkReliefStyle getReliefStyle()
	{
		return gtk_tool_shell_get_relief_style(getToolShellStruct());
	}

	/**
	 * Retrieves whether the tool shell has text, icons, or both. Tool items must
	 * not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
	 * instead.
	 *
	 * Returns: the current style of @shell
	 *
	 * Since: 2.14
	 */
	public GtkToolbarStyle getToolBarStyle()
	{
		return gtk_tool_shell_get_style(getToolShellStruct());
	}

	/**
	 * Retrieves the current text alignment for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_alignment()
	 * instead.
	 *
	 * Returns: the current text alignment of @shell
	 *
	 * Since: 2.20
	 */
	public float getTextAlignment()
	{
		return gtk_tool_shell_get_text_alignment(getToolShellStruct());
	}

	/**
	 * Retrieves the current text orientation for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_orientation()
	 * instead.
	 *
	 * Returns: the current text orientation of @shell
	 *
	 * Since: 2.20
	 */
	public GtkOrientation getTextOrientation()
	{
		return gtk_tool_shell_get_text_orientation(getToolShellStruct());
	}

	/**
	 * Retrieves the current text size group for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_size_group()
	 * instead.
	 *
	 * Returns: the current text size group of @shell
	 *
	 * Since: 2.20
	 */
	public SizeGroup getTextSizeGroup()
	{
		auto p = gtk_tool_shell_get_text_size_group(getToolShellStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SizeGroup)(cast(GtkSizeGroup*) p);
	}

	/**
	 * Calling this function signals the tool shell that the overflow menu item for
	 * tool items have changed. If there is an overflow menu and if it is visible
	 * when this function it called, the menu will be rebuilt.
	 *
	 * Tool items must not call this function directly, but rely on
	 * gtk_tool_item_rebuild_menu() instead.
	 *
	 * Since: 2.14
	 */
	public void rebuildMenu()
	{
		gtk_tool_shell_rebuild_menu(getToolShellStruct());
	}
}
