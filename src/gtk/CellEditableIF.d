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
 * inFile  = GtkCellEditable.html
 * outPack = gtk
 * outFile = CellEditableIF
 * strct   = GtkCellEditable
 * realStrct=
 * ctorStrct=
 * clss    = CellEditableT
 * interf  = CellEditableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_editable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Event
 * structWrap:
 * 	- GdkEvent* -> Event
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellEditableIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.Event;




/**
 * Description
 * The GtkCellEditable interface must be implemented for widgets to be usable
 * when editing the contents of a GtkTreeView cell.
 */
public interface CellEditableIF
{
	
	
	public GtkCellEditable* getCellEditableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(CellEditableIF)[] onEditingDoneListeners();
	/**
	 * This signal is a sign for the cell renderer to update its
	 * value from the cell_editable.
	 * Implementations of GtkCellEditable are responsible for
	 * emitting this signal when they are done editing, e.g.
	 * GtkEntry is emitting it when the user presses Enter.
	 * gtk_cell_editable_editing_done() is a convenience method
	 * for emitting "editing-done".
	 */
	void addOnEditingDone(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(CellEditableIF)[] onRemoveWidgetListeners();
	/**
	 * This signal is meant to indicate that the cell is finished
	 * editing, and the widget may now be destroyed.
	 * Implementations of GtkCellEditable are responsible for
	 * emitting this signal when they are done editing. It must
	 * be emitted after the "editing-done" signal,
	 * to give the cell renderer a chance to update the cell's value
	 * before the widget is removed.
	 * gtk_cell_editable_remove_widget() is a convenience method
	 * for emitting "remove-widget".
	 * See Also
	 * GtkEntry, GtkCellRenderer
	 */
	void addOnRemoveWidget(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Begins editing on a cell_editable. event is the GdkEvent that began
	 * the editing process. It may be NULL, in the instance that editing was
	 * initiated through programatic means.
	 * Params:
	 * event = A GdkEvent, or NULL. [allow-none]
	 */
	public void startEditing(Event event);
	
	/**
	 * Emits the "editing-done" signal.
	 */
	public void editingDone();
	
	/**
	 * Emits the "remove-widget" signal.
	 */
	public void removeWidget();
}
