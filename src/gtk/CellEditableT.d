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


module gtk.CellEditableT;

public  import gdk.Event;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gtk;
public  import gtkc.gtktypes;
public  import std.algorithm;


/**
 * The #GtkCellEditable interface must be implemented for widgets to be usable
 * when editing the contents of a #GtkTreeView cell.
 */
public template CellEditableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkCellEditable* getCellEditableStruct()
	{
		return cast(GtkCellEditable*)getStruct();
	}


	/**
	 * Emits the #GtkCellEditable::editing-done signal.
	 */
	public void editingDone()
	{
		gtk_cell_editable_editing_done(getCellEditableStruct());
	}

	/**
	 * Emits the #GtkCellEditable::remove-widget signal.
	 */
	public void removeWidget()
	{
		gtk_cell_editable_remove_widget(getCellEditableStruct());
	}

	/**
	 * Begins editing on a @cell_editable. @event is the #GdkEvent that began
	 * the editing process. It may be %NULL, in the instance that editing was
	 * initiated through programatic means.
	 *
	 * Params:
	 *     event = A #GdkEvent, or %NULL
	 */
	public void startEditing(Event event)
	{
		gtk_cell_editable_start_editing(getCellEditableStruct(), (event is null) ? null : event.getEventStruct());
	}

	protected class OnEditingDoneDelegateWrapper
	{
		void delegate(CellEditableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(CellEditableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnEditingDoneDelegateWrapper[] onEditingDoneListeners;

	/**
	 * This signal is a sign for the cell renderer to update its
	 * value from the @cell_editable.
	 *
	 * Implementations of #GtkCellEditable are responsible for
	 * emitting this signal when they are done editing, e.g.
	 * #GtkEntry is emitting it when the user presses Enter.
	 *
	 * gtk_cell_editable_editing_done() is a convenience method
	 * for emitting #GtkCellEditable::editing-done.
	 */
	gulong addOnEditingDone(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onEditingDoneListeners ~= new OnEditingDoneDelegateWrapper(dlg, 0, connectFlags);
		onEditingDoneListeners[onEditingDoneListeners.length - 1].handlerId = Signals.connectData(
			this,
			"editing-done",
			cast(GCallback)&callBackEditingDone,
			cast(void*)onEditingDoneListeners[onEditingDoneListeners.length - 1],
			cast(GClosureNotify)&callBackEditingDoneDestroy,
			connectFlags);
		return onEditingDoneListeners[onEditingDoneListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackEditingDone(GtkCellEditable* celleditableStruct,OnEditingDoneDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackEditingDoneDestroy(OnEditingDoneDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnEditingDone(wrapper);
	}

	protected void internalRemoveOnEditingDone(OnEditingDoneDelegateWrapper source)
	{
		foreach(index, wrapper; onEditingDoneListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onEditingDoneListeners[index] = null;
				onEditingDoneListeners = std.algorithm.remove(onEditingDoneListeners, index);
				break;
			}
		}
	}
	

	protected class OnRemoveWidgetDelegateWrapper
	{
		void delegate(CellEditableIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(CellEditableIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRemoveWidgetDelegateWrapper[] onRemoveWidgetListeners;

	/**
	 * This signal is meant to indicate that the cell is finished
	 * editing, and the widget may now be destroyed.
	 *
	 * Implementations of #GtkCellEditable are responsible for
	 * emitting this signal when they are done editing. It must
	 * be emitted after the #GtkCellEditable::editing-done signal,
	 * to give the cell renderer a chance to update the cell's value
	 * before the widget is removed.
	 *
	 * gtk_cell_editable_remove_widget() is a convenience method
	 * for emitting #GtkCellEditable::remove-widget.
	 */
	gulong addOnRemoveWidget(void delegate(CellEditableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRemoveWidgetListeners ~= new OnRemoveWidgetDelegateWrapper(dlg, 0, connectFlags);
		onRemoveWidgetListeners[onRemoveWidgetListeners.length - 1].handlerId = Signals.connectData(
			this,
			"remove-widget",
			cast(GCallback)&callBackRemoveWidget,
			cast(void*)onRemoveWidgetListeners[onRemoveWidgetListeners.length - 1],
			cast(GClosureNotify)&callBackRemoveWidgetDestroy,
			connectFlags);
		return onRemoveWidgetListeners[onRemoveWidgetListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRemoveWidget(GtkCellEditable* celleditableStruct,OnRemoveWidgetDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRemoveWidgetDestroy(OnRemoveWidgetDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRemoveWidget(wrapper);
	}

	protected void internalRemoveOnRemoveWidget(OnRemoveWidgetDelegateWrapper source)
	{
		foreach(index, wrapper; onRemoveWidgetListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRemoveWidgetListeners[index] = null;
				onRemoveWidgetListeners = std.algorithm.remove(onRemoveWidgetListeners, index);
				break;
			}
		}
	}
	
}
