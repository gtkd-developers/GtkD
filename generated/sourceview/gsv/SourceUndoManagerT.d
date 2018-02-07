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
public  import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
public  import std.algorithm;


/** */
public template SourceUndoManagerT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceUndoManager* getSourceUndoManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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
	 * Returns: %TRUE if there are redo operations available, %FALSE otherwise
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
	 * Returns: %TRUE if there are undo operations available, %FALSE otherwise
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

	/**
	 * Emitted when the ability to redo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanRedoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "can-redo-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the ability to undo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanUndoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "can-undo-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
