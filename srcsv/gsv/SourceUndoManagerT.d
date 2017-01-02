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


module gsv.SourceUndoManagerT;

public  import gobject.Signals;
public  import gsvc.gsv;
public  import gsvc.gsvtypes;
public  import gtkc.gdktypes;
public  import std.algorithm;


/** */
public template SourceUndoManagerT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceUndoManager* getSourceUndoManagerStruct()
	{
		return cast(GtkSourceUndoManager*)getStruct();
	}


	/**
	 * Begin a not undoable action on the buffer. All changes between this call
	 * and the call to gtk_source_undo_manager_end_not_undoable_action() cannot
	 * be undone. This function should be re-entrant.
	 *
	 * Since: 2.10
	 */
	public void beginNotUndoableAction()
	{
		gtk_source_undo_manager_begin_not_undoable_action(getSourceUndoManagerStruct());
	}

	/**
	 * Get whether there are redo operations available.
	 *
	 * Return: %TRUE if there are redo operations available, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public bool canRedo()
	{
		return gtk_source_undo_manager_can_redo(getSourceUndoManagerStruct()) != 0;
	}

	/**
	 * Emits the #GtkSourceUndoManager::can-redo-changed signal.
	 *
	 * Since: 2.10
	 */
	public void canRedoChanged()
	{
		gtk_source_undo_manager_can_redo_changed(getSourceUndoManagerStruct());
	}

	/**
	 * Get whether there are undo operations available.
	 *
	 * Return: %TRUE if there are undo operations available, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public bool canUndo()
	{
		return gtk_source_undo_manager_can_undo(getSourceUndoManagerStruct()) != 0;
	}

	/**
	 * Emits the #GtkSourceUndoManager::can-undo-changed signal.
	 *
	 * Since: 2.10
	 */
	public void canUndoChanged()
	{
		gtk_source_undo_manager_can_undo_changed(getSourceUndoManagerStruct());
	}

	/**
	 * Ends a not undoable action on the buffer.
	 *
	 * Since: 2.10
	 */
	public void endNotUndoableAction()
	{
		gtk_source_undo_manager_end_not_undoable_action(getSourceUndoManagerStruct());
	}

	/**
	 * Perform a single redo. Calling this function when there are no redo operations
	 * available is an error. Use gtk_source_undo_manager_can_redo() to find out
	 * if there are redo operations available.
	 *
	 * Since: 2.10
	 */
	public void redo()
	{
		gtk_source_undo_manager_redo(getSourceUndoManagerStruct());
	}

	/**
	 * Perform a single undo. Calling this function when there are no undo operations
	 * available is an error. Use gtk_source_undo_manager_can_undo() to find out
	 * if there are undo operations available.
	 *
	 * Since: 2.10
	 */
	public void undo()
	{
		gtk_source_undo_manager_undo(getSourceUndoManagerStruct());
	}

	protected class OnCanRedoChangedDelegateWrapper
	{
		void delegate(SourceUndoManagerIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceUndoManagerIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCanRedoChangedDelegateWrapper[] onCanRedoChangedListeners;

	/**
	 * Emitted when the ability to redo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanRedoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCanRedoChangedListeners ~= new OnCanRedoChangedDelegateWrapper(dlg, 0, connectFlags);
		onCanRedoChangedListeners[onCanRedoChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"can-redo-changed",
			cast(GCallback)&callBackCanRedoChanged,
			cast(void*)onCanRedoChangedListeners[onCanRedoChangedListeners.length - 1],
			cast(GClosureNotify)&callBackCanRedoChangedDestroy,
			connectFlags);
		return onCanRedoChangedListeners[onCanRedoChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackCanRedoChanged(GtkSourceUndoManager* sourceundomanagerStruct,OnCanRedoChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCanRedoChangedDestroy(OnCanRedoChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnCanRedoChanged(wrapper);
	}

	protected void internalRemoveOnCanRedoChanged(OnCanRedoChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onCanRedoChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCanRedoChangedListeners[index] = null;
				onCanRedoChangedListeners = std.algorithm.remove(onCanRedoChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnCanUndoChangedDelegateWrapper
	{
		void delegate(SourceUndoManagerIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceUndoManagerIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCanUndoChangedDelegateWrapper[] onCanUndoChangedListeners;

	/**
	 * Emitted when the ability to undo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanUndoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCanUndoChangedListeners ~= new OnCanUndoChangedDelegateWrapper(dlg, 0, connectFlags);
		onCanUndoChangedListeners[onCanUndoChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"can-undo-changed",
			cast(GCallback)&callBackCanUndoChanged,
			cast(void*)onCanUndoChangedListeners[onCanUndoChangedListeners.length - 1],
			cast(GClosureNotify)&callBackCanUndoChangedDestroy,
			connectFlags);
		return onCanUndoChangedListeners[onCanUndoChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackCanUndoChanged(GtkSourceUndoManager* sourceundomanagerStruct,OnCanUndoChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCanUndoChangedDestroy(OnCanUndoChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnCanUndoChanged(wrapper);
	}

	protected void internalRemoveOnCanUndoChanged(OnCanUndoChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onCanUndoChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCanUndoChangedListeners[index] = null;
				onCanUndoChangedListeners = std.algorithm.remove(onCanUndoChangedListeners, index);
				break;
			}
		}
	}
	
}
