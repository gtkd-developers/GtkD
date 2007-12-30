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
 * inFile  = GtkCellEditable.html
 * outPack = gtk
 * outFile = CellEditable
 * strct   = GtkCellEditable
 * realStrct=
 * ctorStrct=
 * clss    = CellEditable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_editable_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gdk.Event
 * structWrap:
 * 	- GdkEvent* -> Event
 * module aliases:
 * local aliases:
 */

module gtk.CellEditable;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gdk.Event;




/**
 * Description
 * The GtkCellEditable interface must be implemented for widgets
 * to be usable when editing the contents of a GtkTreeView cell.
 */
public class CellEditable
{
	
	/** the main Gtk struct */
	protected GtkCellEditable* gtkCellEditable;
	
	
	public GtkCellEditable* getCellEditableStruct()
	{
		return gtkCellEditable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellEditable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellEditable* gtkCellEditable)
	{
		if(gtkCellEditable is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkCellEditable passed to constructor.");
			else return;
		}
		this.gtkCellEditable = gtkCellEditable;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(CellEditable)[] onEditingDoneListeners;
	void addOnEditingDone(void delegate(CellEditable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("editing-done" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"editing-done",
			cast(GCallback)&callBackEditingDone,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["editing-done"] = 1;
		}
		onEditingDoneListeners ~= dlg;
	}
	extern(C) static void callBackEditingDone(GtkCellEditable* cellEditableStruct, CellEditable cellEditable)
	{
		bool consumed = false;
		
		foreach ( void delegate(CellEditable) dlg ; cellEditable.onEditingDoneListeners )
		{
			dlg(cellEditable);
		}
		
		return consumed;
	}
	
	void delegate(CellEditable)[] onRemoveWidgetListeners;
	void addOnRemoveWidget(void delegate(CellEditable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("remove-widget" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove-widget",
			cast(GCallback)&callBackRemoveWidget,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["remove-widget"] = 1;
		}
		onRemoveWidgetListeners ~= dlg;
	}
	extern(C) static void callBackRemoveWidget(GtkCellEditable* cellEditableStruct, CellEditable cellEditable)
	{
		bool consumed = false;
		
		foreach ( void delegate(CellEditable) dlg ; cellEditable.onRemoveWidgetListeners )
		{
			dlg(cellEditable);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Begins editing on a cell_editable. event is the GdkEvent that began
	 * the editing process. It may be NULL, in the instance that editing was
	 * initiated through programatic means.
	 * Params:
	 * event =  A GdkEvent, or NULL
	 */
	public void startEditing(Event event)
	{
		// void gtk_cell_editable_start_editing (GtkCellEditable *cell_editable,  GdkEvent *event);
		gtk_cell_editable_start_editing(gtkCellEditable, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Emits the "editing-done" signal.
	 */
	public void editingDone()
	{
		// void gtk_cell_editable_editing_done (GtkCellEditable *cell_editable);
		gtk_cell_editable_editing_done(gtkCellEditable);
	}
	
	/**
	 * Emits the "remove-widget" signal.
	 */
	public void removeWidget()
	{
		// void gtk_cell_editable_remove_widget (GtkCellEditable *cell_editable);
		gtk_cell_editable_remove_widget(gtkCellEditable);
	}
	
}
