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


module gtk.CellEditableIF;

private import gdk.Event;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Interface for widgets that can be used for editing cells
 * 
 * The `GtkCellEditable` interface must be implemented for widgets to be usable
 * to edit the contents of a `GtkTreeView` cell. It provides a way to specify how
 * temporary widgets should be configured for editing, get the new value, etc.
 */
public interface CellEditableIF{
	/** Get the main Gtk struct */
	public GtkCellEditable* getCellEditableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_cell_editable_get_type();
	}

	/**
	 * Emits the `GtkCellEditable::editing-done` signal.
	 */
	public void editingDone();

	/**
	 * Emits the `GtkCellEditable::remove-widget` signal.
	 */
	public void removeWidget();

	/**
	 * Begins editing on a @cell_editable.
	 *
	 * The `GtkCellRenderer` for the cell creates and returns a `GtkCellEditable` from
	 * gtk_cell_renderer_start_editing(), configured for the `GtkCellRenderer` type.
	 *
	 * gtk_cell_editable_start_editing() can then set up @cell_editable suitably for
	 * editing a cell, e.g. making the Esc key emit `GtkCellEditable::editing-done`.
	 *
	 * Note that the @cell_editable is created on-demand for the current edit; its
	 * lifetime is temporary and does not persist across other edits and/or cells.
	 *
	 * Params:
	 *     event = The `GdkEvent` that began the editing process, or
	 *         %NULL if editing was initiated programmatically
	 */
	public void startEditing(Event event);

	/**
	 * This signal is a sign for the cell renderer to update its
	 * value from the @cell_editable.
	 *
	 * Implementations of `GtkCellEditable` are responsible for
	 * emitting this signal when they are done editing, e.g.
	 * `GtkEntry` emits this signal when the user presses Enter. Typical things to
	 * do in a handler for ::editing-done are to capture the edited value,
	 * disconnect the @cell_editable from signals on the `GtkCellRenderer`, etc.
	 *
	 * gtk_cell_editable_editing_done() is a convenience method
	 * for emitting `GtkCellEditable::editing-done`.
	 */
	gulong addOnEditingDone(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * This signal is meant to indicate that the cell is finished
	 * editing, and the @cell_editable widget is being removed and may
	 * subsequently be destroyed.
	 *
	 * Implementations of `GtkCellEditable` are responsible for
	 * emitting this signal when they are done editing. It must
	 * be emitted after the `GtkCellEditable::editing-done` signal,
	 * to give the cell renderer a chance to update the cell's value
	 * before the widget is removed.
	 *
	 * gtk_cell_editable_remove_widget() is a convenience method
	 * for emitting `GtkCellEditable::remove-widget`.
	 */
	gulong addOnRemoveWidget(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
