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


module gtk.ListBoxRow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkListBoxRow` is the kind of widget that can be added to a `GtkListBox`.
 */
public class ListBoxRow : Widget, ActionableIF
{
	/** the main Gtk struct */
	protected GtkListBoxRow* gtkListBoxRow;

	/** Get the main Gtk struct */
	public GtkListBoxRow* getListBoxRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListBoxRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBoxRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListBoxRow* gtkListBoxRow, bool ownedRef = false)
	{
		this.gtkListBoxRow = gtkListBoxRow;
		super(cast(GtkWidget*)gtkListBoxRow, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkListBoxRow);


	/** */
	public static GType getType()
	{
		return gtk_list_box_row_get_type();
	}

	/**
	 * Creates a new `GtkListBoxRow`.
	 *
	 * Returns: a new `GtkListBoxRow`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_list_box_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkListBoxRow*) __p);
	}

	/**
	 * Marks @row as changed, causing any state that depends on this
	 * to be updated.
	 *
	 * This affects sorting, filtering and headers.
	 *
	 * Note that calls to this method must be in sync with the data
	 * used for the row functions. For instance, if the list is
	 * mirroring some external data set, and *two* rows changed in the
	 * external data set then when you call gtk_list_box_row_changed()
	 * on the first row the sort function must only read the new data
	 * for the first of the two changed rows, otherwise the resorting
	 * of the rows will be wrong.
	 *
	 * This generally means that if you don’t fully control the data
	 * model you have to duplicate the data that affects the listbox
	 * row functions into the row widgets themselves. Another alternative
	 * is to call [method@Gtk.ListBox.invalidate_sort] on any model change,
	 * but that is more expensive.
	 */
	public void changed()
	{
		gtk_list_box_row_changed(gtkListBoxRow);
	}

	/**
	 * Gets whether the row is activatable.
	 *
	 * Returns: %TRUE if the row is activatable
	 */
	public bool getActivatable()
	{
		return gtk_list_box_row_get_activatable(gtkListBoxRow) != 0;
	}

	/**
	 * Gets the child widget of @row.
	 *
	 * Returns: the child widget of @row
	 */
	public Widget getChild()
	{
		auto __p = gtk_list_box_row_get_child(gtkListBoxRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the current header of the @row.
	 *
	 * This can be used
	 * in a [callback@Gtk.ListBoxUpdateHeaderFunc] to see if
	 * there is a header set already, and if so to update
	 * the state of it.
	 *
	 * Returns: the current header
	 */
	public Widget getHeader()
	{
		auto __p = gtk_list_box_row_get_header(gtkListBoxRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the current index of the @row in its `GtkListBox` container.
	 *
	 * Returns: the index of the @row, or -1 if the @row is not in a listbox
	 */
	public int getIndex()
	{
		return gtk_list_box_row_get_index(gtkListBoxRow);
	}

	/**
	 * Gets whether the row can be selected.
	 *
	 * Returns: %TRUE if the row is selectable
	 */
	public bool getSelectable()
	{
		return gtk_list_box_row_get_selectable(gtkListBoxRow) != 0;
	}

	/**
	 * Returns whether the child is currently selected in its
	 * `GtkListBox` container.
	 *
	 * Returns: %TRUE if @row is selected
	 */
	public bool isSelected()
	{
		return gtk_list_box_row_is_selected(gtkListBoxRow) != 0;
	}

	/**
	 * Set whether the row is activatable.
	 *
	 * Params:
	 *     activatable = %TRUE to mark the row as activatable
	 */
	public void setActivatable(bool activatable)
	{
		gtk_list_box_row_set_activatable(gtkListBoxRow, activatable);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_list_box_row_set_child(gtkListBoxRow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the current header of the @row.
	 *
	 * This is only allowed to be called
	 * from a [callback@Gtk.ListBoxUpdateHeaderFunc].
	 * It will replace any existing header in the row,
	 * and be shown in front of the row in the listbox.
	 *
	 * Params:
	 *     header = the header
	 */
	public void setHeader(Widget header)
	{
		gtk_list_box_row_set_header(gtkListBoxRow, (header is null) ? null : header.getWidgetStruct());
	}

	/**
	 * Set whether the row can be selected.
	 *
	 * Params:
	 *     selectable = %TRUE to mark the row as selectable
	 */
	public void setSelectable(bool selectable)
	{
		gtk_list_box_row_set_selectable(gtkListBoxRow, selectable);
	}

	/**
	 * This is a keybinding signal, which will cause this row to be activated.
	 *
	 * If you want to be notified when the user activates a row (by key or not),
	 * use the [signal@Gtk.ListBox::row-activated] signal on the row’s parent
	 * `GtkListBox`.
	 */
	gulong addOnActivate(void delegate(ListBoxRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
