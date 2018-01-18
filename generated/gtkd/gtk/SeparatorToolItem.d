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


module gtk.SeparatorToolItem;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ToolItem;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkSeparatorToolItem is a #GtkToolItem that separates groups of other
 * #GtkToolItems. Depending on the theme, a #GtkSeparatorToolItem will
 * often look like a vertical line on horizontally docked toolbars.
 * 
 * If the #GtkToolbar child property “expand” is %TRUE and the property
 * #GtkSeparatorToolItem:draw is %FALSE, a #GtkSeparatorToolItem will act as
 * a “spring” that forces other items to the ends of the toolbar.
 * 
 * Use gtk_separator_tool_item_new() to create a new #GtkSeparatorToolItem.
 * 
 * # CSS nodes
 * 
 * GtkSeparatorToolItem has a single CSS node with name separator.
 */
public class SeparatorToolItem : ToolItem
{
	/** the main Gtk struct */
	protected GtkSeparatorToolItem* gtkSeparatorToolItem;

	/** Get the main Gtk struct */
	public GtkSeparatorToolItem* getSeparatorToolItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSeparatorToolItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSeparatorToolItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSeparatorToolItem* gtkSeparatorToolItem, bool ownedRef = false)
	{
		this.gtkSeparatorToolItem = gtkSeparatorToolItem;
		super(cast(GtkToolItem*)gtkSeparatorToolItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_separator_tool_item_get_type();
	}

	/**
	 * Create a new #GtkSeparatorToolItem
	 *
	 * Returns: the new #GtkSeparatorToolItem
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_separator_tool_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSeparatorToolItem*) p);
	}

	/**
	 * Returns whether @item is drawn as a line, or just blank.
	 * See gtk_separator_tool_item_set_draw().
	 *
	 * Returns: %TRUE if @item is drawn as a line, or just blank.
	 *
	 * Since: 2.4
	 */
	public bool getDraw()
	{
		return gtk_separator_tool_item_get_draw(gtkSeparatorToolItem) != 0;
	}

	/**
	 * Whether @item is drawn as a vertical line, or just blank.
	 * Setting this to %FALSE along with gtk_tool_item_set_expand() is useful
	 * to create an item that forces following items to the end of the toolbar.
	 *
	 * Params:
	 *     draw = whether @item is drawn as a vertical line
	 *
	 * Since: 2.4
	 */
	public void setDraw(bool draw)
	{
		gtk_separator_tool_item_set_draw(gtkSeparatorToolItem, draw);
	}
}
