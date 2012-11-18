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
 * inFile  = GtkToolShell.html
 * outPack = gtk
 * outFile = ToolShellT
 * strct   = GtkToolShell
 * realStrct=
 * ctorStrct=
 * clss    = ToolShellT
 * interf  = ToolShellIF
 * class Code: No
 * interface Code: Yes
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tool_shell_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tool_shell_get_orientation
 * omit signals:
 * imports:
 * 	- gtk.SizeGroup
 * structWrap:
 * 	- GtkSizeGroup* -> SizeGroup
 * module aliases:
 * local aliases:
 * 	- getStyle -> getToolBarStyle
 * overrides:
 */

module gtk.ToolShellT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gtk.SizeGroup;




/**
 * Description
 * The GtkToolShell interface allows container widgets to provide additional
 * information when embedding GtkToolItem widgets.
 */
public template ToolShellT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkToolShell* gtkToolShell;
	
	
	public GtkToolShell* getToolShellTStruct()
	{
		return cast(GtkToolShell*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Retrieves the current ellipsize mode for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
	 * instead.
	 * Since 2.20
	 * Returns: the current ellipsize mode of shell
	 */
	public PangoEllipsizeMode getEllipsizeMode()
	{
		// PangoEllipsizeMode gtk_tool_shell_get_ellipsize_mode (GtkToolShell *shell);
		return gtk_tool_shell_get_ellipsize_mode(getToolShellTStruct());
	}
	
	/**
	 * Retrieves the icon size for the tool shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_icon_size() instead.
	 * Since 2.14
	 * Returns: the current size for icons of shell. [type int]
	 */
	public GtkIconSize getIconSize()
	{
		// GtkIconSize gtk_tool_shell_get_icon_size (GtkToolShell *shell);
		return gtk_tool_shell_get_icon_size(getToolShellTStruct());
	}
	
	/**
	 * Returns the relief style of buttons on shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_relief_style() instead.
	 * Since 2.14
	 * Returns: The relief style of buttons on shell.
	 */
	public GtkReliefStyle getReliefStyle()
	{
		// GtkReliefStyle gtk_tool_shell_get_relief_style (GtkToolShell *shell);
		return gtk_tool_shell_get_relief_style(getToolShellTStruct());
	}
	
	/**
	 * Retrieves whether the tool shell has text, icons, or both. Tool items must
	 * not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
	 * instead.
	 * Since 2.14
	 * Returns: the current style of shell
	 */
	public GtkToolbarStyle getToolBarStyle()
	{
		// GtkToolbarStyle gtk_tool_shell_get_style (GtkToolShell *shell);
		return gtk_tool_shell_get_style(getToolShellTStruct());
	}
	
	/**
	 * Retrieves the current text alignment for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_alignment()
	 * instead.
	 * Since 2.20
	 * Returns: the current text alignment of shell
	 */
	public float getTextAlignment()
	{
		// gfloat gtk_tool_shell_get_text_alignment (GtkToolShell *shell);
		return gtk_tool_shell_get_text_alignment(getToolShellTStruct());
	}
	
	/**
	 * Retrieves the current text orientation for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_orientation()
	 * instead.
	 * Since 2.20
	 * Returns: the current text orientation of shell
	 */
	public GtkOrientation getTextOrientation()
	{
		// GtkOrientation gtk_tool_shell_get_text_orientation (GtkToolShell *shell);
		return gtk_tool_shell_get_text_orientation(getToolShellTStruct());
	}
	
	/**
	 * Calling this function signals the tool shell that the overflow menu item for
	 * tool items have changed. If there is an overflow menu and if it is visible
	 * when this function it called, the menu will be rebuilt.
	 * Tool items must not call this function directly, but rely on
	 * gtk_tool_item_rebuild_menu() instead.
	 * Since 2.14
	 */
	public void rebuildMenu()
	{
		// void gtk_tool_shell_rebuild_menu (GtkToolShell *shell);
		gtk_tool_shell_rebuild_menu(getToolShellTStruct());
	}
	
	/**
	 * Retrieves the current text size group for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_size_group()
	 * instead.
	 * Since 2.20
	 * Returns: the current text size group of shell. [transfer none]
	 */
	public SizeGroup getTextSizeGroup()
	{
		// GtkSizeGroup * gtk_tool_shell_get_text_size_group (GtkToolShell *shell);
		auto p = gtk_tool_shell_get_text_size_group(getToolShellTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SizeGroup)(cast(GtkSizeGroup*) p);
	}
}
