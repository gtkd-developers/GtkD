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
 * inFile  = GtkSeparatorToolItem.html
 * outPack = gtk
 * outFile = SeparatorToolItem
 * strct   = GtkSeparatorToolItem
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = SeparatorToolItem
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_separator_tool_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.ToolItem
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * module aliases:
 * local aliases:
 */

module gtk.SeparatorToolItem;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.ToolItem;



/**
 * Description
 *  A GtkSeparatorItem is a GtkToolItem that separates groups of other
 *  GtkToolItems. Depending on the theme, a GtkSeparatorToolItem will
 *  often look like a vertical line on horizontally docked toolbars.
 * If the property "expand" is TRUE and the property "draw" is FALSE, a
 * GtkSeparatorToolItem will act as a "spring" that forces other items
 * to the ends of the toolbar.
 *  Use gtk_separator_tool_item_new() to create a new GtkSeparatorToolItem.
 */
private import gtk.ToolItem;
public class SeparatorToolItem : ToolItem
{
	
	/** the main Gtk struct */
	protected GtkSeparatorToolItem* gtkSeparatorToolItem;
	
	
	public GtkSeparatorToolItem* getSeparatorToolItemStruct()
	{
		return gtkSeparatorToolItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSeparatorToolItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSeparatorToolItem* gtkSeparatorToolItem)
	{
		super(cast(GtkToolItem*)gtkSeparatorToolItem);
		this.gtkSeparatorToolItem = gtkSeparatorToolItem;
	}
	/**
	 * Allows constructors from Widget - needed for Glade support
	 */
	private import gtk.Widget;
	public this (Widget  parent)
	{
		this(cast(GtkSeparatorToolItem*) parent.getWidgetStruct());
	}
	
	/**
	 */
	
	
	/**
	 * Create a new GtkSeparatorToolItem
	 * Returns:
	 *  the new GtkSeparatorToolItem
	 * Since 2.4
	 */
	public this ()
	{
		// GtkToolItem* gtk_separator_tool_item_new (void);
		this(cast(GtkSeparatorToolItem*)gtk_separator_tool_item_new() );
	}
	
	/**
	 * When separator_tool_items is drawn as a vertical line, or just blank.
	 * Setting this FALSE along with gtk_tool_item_set_expand() is useful
	 * to create an item that forces following items to the end of the toolbar.
	 * item:
	 *  a GtkSeparatorToolItem
	 * draw:
	 *  whether separator_tool_item is drawn as a vertical line
	 * Since 2.4
	 */
	public void setDraw(int draw)
	{
		// void gtk_separator_tool_item_set_draw  (GtkSeparatorToolItem *item,  gboolean draw);
		gtk_separator_tool_item_set_draw(gtkSeparatorToolItem, draw);
	}
	
	/**
	 * Returns whether separator_tool_item is drawn as a
	 * line, or just blank. See gtk_separator_tool_item_set_draw().
	 * item:
	 *  a GtkSeparatorToolItem
	 * Returns:
	 *  TRUE if separator_tool_item is drawn as a line, or just blank.
	 * Since 2.4
	 * Property Details
	 * The "draw" property
	 *  "draw" gboolean : Read / Write
	 * Whether the separator is drawn, or just blank.
	 * Default value: TRUE
	 * See Also
	 * GtkToolbar
	 * The toolbar widget
	 * GtkRadioToolButton
	 * A toolbar item containing a radio
	 * 	 button
	 */
	public int getDraw()
	{
		// gboolean gtk_separator_tool_item_get_draw  (GtkSeparatorToolItem *item);
		return gtk_separator_tool_item_get_draw(gtkSeparatorToolItem);
	}
}
