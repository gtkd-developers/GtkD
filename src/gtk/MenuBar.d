/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = MenuBar
 * strct   = GtkMenuBar
 * realStrct=
 * clss    = MenuBar
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_bar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- gtk.Menu;
 * 	- gtk.MenuItem;
 * structWrap:
 * 	- GtkMenu* -> Menu
 * 	- GtkMenuItem* -> MenuItem
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.MenuBar;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;
private import gtk.Menu;;
private import gtk.MenuItem;;

/**
 * Description
 * The GtkMenuBar is a subclass of GtkMenuShell which contains one to many GtkMenuItem. The result is a standard menu bar which can hold many menu items. GtkMenuBar allows for a shadow type to be set for aesthetic purposes. The shadow types are defined in the gtk_menu_bar_set_shadow_type function.
 */
private import gtk.MenuShell;
public class MenuBar : MenuShell
{
	
	/** the main Gtk struct */
	protected GtkMenuBar* gtkMenuBar;
	
	
	public GtkMenuBar* getMenuBarStruct()
	{
		return gtkMenuBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkMenuBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuBar* gtkMenuBar)
	{
		super(cast(GtkMenuShell*)gtkMenuBar);
		this.gtkMenuBar = gtkMenuBar;
	}
	
	Menu append(char[] label, bool rightJustify=false)
	{
		MenuItem item = new MenuItem(label);
		super.append(item);
		item.setRightJustified(rightJustify);
		Menu menu= new Menu();
		item.setSubmenu(menu);
		return menu;
	}
	
	public void append(Widget widget)
	{
		super.append(widget);
	}
	
	/**
	 */
	
	
	/**
	 * Creates the new GtkMenuBar
	 * Returns:
	 * the GtkMenuBar
	 */
	public this ()
	{
		// GtkWidget* gtk_menu_bar_new (void);
		this(cast(GtkMenuBar*)gtk_menu_bar_new() );
	}
	
	
	
	
	
	/**
	 * Sets how items should be packed inside a menubar.
	 * menubar:
	 *  a GtkMenuBar.
	 * pack_dir:
	 *  a new GtkPackDirection.
	 * Since 2.8
	 */
	public void setPackDirection(GtkPackDirection packDir)
	{
		// void gtk_menu_bar_set_pack_direction (GtkMenuBar *menubar,  GtkPackDirection pack_dir);
		gtk_menu_bar_set_pack_direction(gtkMenuBar, packDir);
	}
	
	/**
	 * Retrieves the current pack direction of the menubar. See
	 * gtk_menu_bar_set_pack_direction().
	 * menubar:
	 *  a GtkMenuBar
	 * Returns:
	 *  the pack direction
	 * Since 2.8
	 */
	public GtkPackDirection getPackDirection()
	{
		// GtkPackDirection gtk_menu_bar_get_pack_direction  (GtkMenuBar *menubar);
		return gtk_menu_bar_get_pack_direction(gtkMenuBar);
	}
	
	/**
	 * Sets how widgets should be packed inside the children of a menubar.
	 * menubar:
	 *  a GtkMenuBar.
	 * child_pack_dir:
	 *  a new GtkPackDirection.
	 * Since 2.8
	 */
	public void setChildPackDirection(GtkPackDirection childPackDir)
	{
		// void gtk_menu_bar_set_child_pack_direction  (GtkMenuBar *menubar,  GtkPackDirection child_pack_dir);
		gtk_menu_bar_set_child_pack_direction(gtkMenuBar, childPackDir);
	}
	
	/**
	 * Retrieves the current child pack direction of the menubar. See
	 * gtk_menu_bar_set_child_pack_direction().
	 * menubar:
	 *  a GtkMenuBar
	 * Returns:
	 *  the child pack direction
	 * Since 2.8
	 * Property Details
	 * The "child-pack-direction" property
	 *  "child-pack-direction" GtkPackDirection : Read / Write
	 * The pack direction of the menubar. It determines how
	 * the widgets contained in child menuitems are arranged.
	 * Default value: GTK_PACK_DIRECTION_LTR
	 * Since 2.8
	 */
	public GtkPackDirection getChildPackDirection()
	{
		// GtkPackDirection gtk_menu_bar_get_child_pack_direction  (GtkMenuBar *menubar);
		return gtk_menu_bar_get_child_pack_direction(gtkMenuBar);
	}
	
	
}
