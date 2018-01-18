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


module gtk.MenuBar;

private import gio.MenuModel;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Menu;
private import gtk.MenuItem;
private import gtk.MenuShell;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkMenuBar is a subclass of #GtkMenuShell which contains one or
 * more #GtkMenuItems. The result is a standard menu bar which can hold
 * many menu items.
 * 
 * # CSS nodes
 * 
 * GtkMenuBar has a single CSS node with name menubar.
 */
public class MenuBar : MenuShell
{
	/** the main Gtk struct */
	protected GtkMenuBar* gtkMenuBar;

	/** Get the main Gtk struct */
	public GtkMenuBar* getMenuBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenuBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenuBar* gtkMenuBar, bool ownedRef = false)
	{
		this.gtkMenuBar = gtkMenuBar;
		super(cast(GtkMenuShell*)gtkMenuBar, ownedRef);
	}

	/** */
	Menu append(string label, bool rightJustify=false)
	{
		MenuItem item = new MenuItem(label);
		super.append(item);
		item.setRightJustified(rightJustify);
		Menu menu= new Menu();
		item.setSubmenu(menu);
		return menu;
	}

	/** */
	public override void append(MenuItem item)
	{
		super.append(item);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_menu_bar_get_type();
	}

	/**
	 * Creates a new #GtkMenuBar
	 *
	 * Returns: the new menu bar, as a #GtkWidget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_menu_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenuBar*) p);
	}

	/**
	 * Creates a new #GtkMenuBar and populates it with menu items
	 * and submenus according to @model.
	 *
	 * The created menu items are connected to actions found in the
	 * #GtkApplicationWindow to which the menu bar belongs - typically
	 * by means of being contained within the #GtkApplicationWindows
	 * widget hierarchy.
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *
	 * Returns: a new #GtkMenuBar
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MenuModel model)
	{
		auto p = gtk_menu_bar_new_from_model((model is null) ? null : model.getMenuModelStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_model");
		}

		this(cast(GtkMenuBar*) p);
	}

	/**
	 * Retrieves the current child pack direction of the menubar.
	 * See gtk_menu_bar_set_child_pack_direction().
	 *
	 * Returns: the child pack direction
	 *
	 * Since: 2.8
	 */
	public GtkPackDirection getChildPackDirection()
	{
		return gtk_menu_bar_get_child_pack_direction(gtkMenuBar);
	}

	/**
	 * Retrieves the current pack direction of the menubar.
	 * See gtk_menu_bar_set_pack_direction().
	 *
	 * Returns: the pack direction
	 *
	 * Since: 2.8
	 */
	public GtkPackDirection getPackDirection()
	{
		return gtk_menu_bar_get_pack_direction(gtkMenuBar);
	}

	/**
	 * Sets how widgets should be packed inside the children of a menubar.
	 *
	 * Params:
	 *     childPackDir = a new #GtkPackDirection
	 *
	 * Since: 2.8
	 */
	public void setChildPackDirection(GtkPackDirection childPackDir)
	{
		gtk_menu_bar_set_child_pack_direction(gtkMenuBar, childPackDir);
	}

	/**
	 * Sets how items should be packed inside a menubar.
	 *
	 * Params:
	 *     packDir = a new #GtkPackDirection
	 *
	 * Since: 2.8
	 */
	public void setPackDirection(GtkPackDirection packDir)
	{
		gtk_menu_bar_set_pack_direction(gtkMenuBar, packDir);
	}
}
