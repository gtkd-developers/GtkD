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

module dui.List;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Widget;
private import dui.Container;
private import dui.ListG;

alias GtkContainer GtkList;

alias int GtkSelectionMode;
alias int GtkScrollType;

private:

extern (C) GType gtk_list_get_type();
extern (C) GtkWidget * gtk_list_new();
extern (C) void gtk_list_insert_items(GtkList * list, GList * items, gint position);
extern (C) void gtk_list_append_items(GtkList * list, GList * items);
extern (C) void gtk_list_prepend_items(GtkList * list, GList * items);
extern (C) void gtk_list_remove_items(GtkList * list, GList * items);
extern (C) void gtk_list_remove_items_no_unref(GtkList * list, GList * items);
extern (C) void gtk_list_clear_items(GtkList * list, gint start, gint end);
extern (C) void gtk_list_select_item(GtkList * list, gint item);
extern (C) void gtk_list_unselect_item(GtkList * list, gint item);
extern (C) void gtk_list_select_child(GtkList * list, GtkWidget * child);
extern (C) void gtk_list_unselect_child(GtkList * list, GtkWidget * child);
extern (C) gint gtk_list_child_position(GtkList * list, GtkWidget * child);
extern (C) void gtk_list_set_selection_mode(GtkList * list, GtkSelectionMode mode);

extern (C) void gtk_list_extend_selection(GtkList * list, GtkScrollType scroll_type, gfloat position, gboolean auto_start_selection);
extern (C) void gtk_list_start_selection(GtkList * list);
extern (C) void gtk_list_end_selection(GtkList * list);
extern (C) void gtk_list_select_all(GtkList * list);
extern (C) void gtk_list_unselect_all(GtkList * list);
extern (C) void gtk_list_scroll_horizontal(GtkList * list, GtkScrollType scroll_type, gfloat position);
extern (C) void gtk_list_scroll_vertical(GtkList * list, GtkScrollType scroll_type, gfloat position);
extern (C) void gtk_list_toggle_add_mode(GtkList * list);
extern (C) void gtk_list_toggle_focus_row(GtkList * list);
extern (C) void gtk_list_toggle_row(GtkList * list, GtkWidget * item);
extern (C) void gtk_list_undo_selection(GtkList * list);
extern (C) void gtk_list_end_drag_selection(GtkList * list);

/**
 * This is a list of widget that can be displayed.
 * \todo is this deprecated or still used on the combo?
 */
public:
class List : Container
{


	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "This is a list of widget that can be displayed";}
		char[] author(){return "Antonio";}
	}
	
    public:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_list_get_type();
	}
	
	
	/**
	 * Creates a new List
	 */
	public this()
	{
		this(gtk_list_new());
	}
	
	/**
	 * Inserts items to this list at a specific position
	 * @param items the new item list
	 * @param position the postipn where insert the items list
	 */
	void insertItems(ListG items, gint position)
	{
		gtk_list_insert_items(cast(GtkList*)gtkW(),items.obj(), position);
	}
	
	
	/**
	 * Appends a list of item to the list
	 * @param items the list of item to append
	 * \bug seems this segfaults
	 */
	void appendItems(ListG items)
	{
		gtk_list_append_items(cast(GtkList*)gtkW(), items.obj());
	}

	/**
	 * Preppends a list of item to the list
	 * @param items the list of item to prepend
	 */
	void prependItems(ListG items)
	{
		gtk_list_prepend_items(cast(GtkList*)gtkW(), items.obj());
	}
	
	/**
	 * removes a list of item from the list
	 * @param items the list of item to remove
	 */
	void removeItems(ListG items)
	{
		gtk_list_remove_items(cast(GtkList*)gtkW(), items.obj());
	}

	/**
	 * removes a list of item from the list but doesn't mark as unreferred
	 * @param items the list of item to remove
	 */
	void removeItemsNoUnref(ListG items)
	{
		gtk_list_remove_items_no_unref(cast(GtkList*)gtkW(), items.obj());
	}
	
	/**
	 * Clears the item from the star to the end positions
	 * @param start the start position
	 * @param end the end position
	 */
	void clearItems(gint start, gint end)
	{
		gtk_list_clear_items(cast(GtkList*)gtkW(), start, end);
	}
	
	/**
	 * Select one item by position
	 * @param item the item position to select
	 */
	void selectItem(gint item)
	{
		gtk_list_select_item(cast(GtkList*)gtkW(), item);
	}
	
	/**
	 * Unselects one item by position
	 */
	void unselectItem(gint item)
	{
		gtk_list_unselect_item(cast(GtkList*)gtkW(), item);
	}
	
	/**
	 * Select a child widget
	 * @param child the child widget to select
	 */
	void selectChild(Widget child)
	{
		gtk_list_select_child(cast(GtkList*)gtkW(), child.gtkW());
	}
	
	/**
	 * Unselect a child widget
	 * @param child the child widget to unselect
	 */
	void unselectChild(Widget child)
	{
		gtk_list_unselect_child(cast(GtkList*)gtkW(), child.gtkW());
	}
	
	/**
	 * Gets the child position
	 * @param child the child
	 */
	gint childPosition(Widget child)
	{
		return gtk_list_child_position(cast(GtkList*)gtkW(), child.gtkW());
	}
	
	/**
	 * Sets the selection mode
	 * @param mode the new selection mode
	 */
	void setSelectionMode(SelectionMode mode)
	{
		gtk_list_set_selection_mode(cast(GtkList*)gtkW(), mode);
	}

	/**
	 * Extended selection ???
	 * @param scroll_type
	 * @param position
	 * @param auto_start_selection
	 */
	void extendedSelection(ScrollType scroll_type, gfloat position, gboolean auto_start_selection)
	{
		gtk_list_extend_selection(cast(GtkList*)gtkW(), scroll_type, position, auto_start_selection);
	}
	
	/**
	 * Start selection.
	 */
	void startSelection()
	{
		gtk_list_start_selection(cast(GtkList*)gtkW());
	};
	
	/**
	 * End Selection.
	 */
	void endSelection()
	{
		gtk_list_end_selection(cast(GtkList*)gtkW());
	}
	
	/**
	 * Select all.
	 */
	void selectAll()
	{
		gtk_list_select_all(cast(GtkList*)gtkW());
	}
	void unselectAll()
	{
		gtk_list_unselect_all(cast(GtkList*)gtkW());
	}
	
	/**
	 * Scroll horizontal
	 * @param scroll_type
	 * @param position
	 */
	void scrollHorizontal(ScrollType scroll_type, gfloat position)
	{
		gtk_list_scroll_horizontal(cast(GtkList*)gtkW(), scroll_type, position);
	}
	
	/**
	 * Scroll Vertical
	 * @param scroll_type
	 * @param position
	 */
	void scrollVertical(ScrollType scroll_type, gfloat position)
	{
		gtk_list_scroll_vertical(cast(GtkList*)gtkW(), scroll_type, position);
	}
	
	/**
	 * Toggle add mode
	 */
	void toggleAddMode()
	{
		gtk_list_toggle_add_mode(cast(GtkList*)gtkW());
	}
	
	/**
	 * toggle focus row.
	 */
	void toggleFocusRow()
	{
		gtk_list_toggle_focus_row(cast(GtkList*)gtkW());
	}
	
	/**
	 * Toggle row
	 */
	void toggleRow(Widget item)
	{
		gtk_list_toggle_row(cast(GtkList*)gtkW(), item.gtkW());
	}
	
	/**
	 * Undo selection
	 */
	void undoSelection()
	{
		gtk_list_undo_selection(cast(GtkList*)gtkW());
	}
	
	/**
	 * End drag Selection
	 */
	void endDragSelection()
	{
		gtk_list_end_drag_selection(cast(GtkList*)gtkW());
	}
	
}
