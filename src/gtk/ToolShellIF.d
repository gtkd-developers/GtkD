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
 * outFile = ToolShellIF
 * strct   = GtkToolShell
 * realStrct=
 * ctorStrct=
 * clss    = ToolShellT
 * interf  = ToolShellIF
 * class Code: No
 * interface Code: Yes
 * template for:
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

module gtk.ToolShellIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.SizeGroup;




/**
 * Description
 * The GtkToolShell interface allows container widgets to provide additional
 * information when embedding GtkToolItem widgets.
 */
public interface ToolShellIF
{
	
	
	public GtkToolShell* getToolShellTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 * Retrieves the current orientation for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_orientation()
	 * instead.
	 * Since 2.14
	 * Returns: the current orientation of shell
	 */
	public GtkOrientation getOrientation();
	
	/**
	 */
	
	/**
	 * Retrieves the current ellipsize mode for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
	 * instead.
	 * Since 2.20
	 * Returns: the current ellipsize mode of shell
	 */
	public PangoEllipsizeMode getEllipsizeMode();
	
	/**
	 * Retrieves the icon size for the tool shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_icon_size() instead.
	 * Since 2.14
	 * Returns: the current size for icons of shell. [type int]
	 */
	public GtkIconSize getIconSize();
	
	/**
	 * Returns the relief style of buttons on shell. Tool items must not call this
	 * function directly, but rely on gtk_tool_item_get_relief_style() instead.
	 * Since 2.14
	 * Returns: The relief style of buttons on shell.
	 */
	public GtkReliefStyle getReliefStyle();
	
	/**
	 * Retrieves whether the tool shell has text, icons, or both. Tool items must
	 * not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
	 * instead.
	 * Since 2.14
	 * Returns: the current style of shell
	 */
	public GtkToolbarStyle getToolBarStyle();
	
	/**
	 * Retrieves the current text alignment for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_alignment()
	 * instead.
	 * Since 2.20
	 * Returns: the current text alignment of shell
	 */
	public float getTextAlignment();
	
	/**
	 * Retrieves the current text orientation for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_orientation()
	 * instead.
	 * Since 2.20
	 * Returns: the current text orientation of shell
	 */
	public GtkOrientation getTextOrientation();
	
	/**
	 * Calling this function signals the tool shell that the overflow menu item for
	 * tool items have changed. If there is an overflow menu and if it is visible
	 * when this function it called, the menu will be rebuilt.
	 * Tool items must not call this function directly, but rely on
	 * gtk_tool_item_rebuild_menu() instead.
	 * Since 2.14
	 */
	public void rebuildMenu();
	
	/**
	 * Retrieves the current text size group for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_text_size_group()
	 * instead.
	 * Since 2.20
	 * Returns: the current text size group of shell. [transfer none]
	 */
	public SizeGroup getTextSizeGroup();
}
