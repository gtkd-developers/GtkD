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


module gsv.SourceUndoManagerIF;

private import gobject.Signals;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import std.algorithm;


/** */
public interface SourceUndoManagerIF{
	/** Get the main Gtk struct */
	public GtkSourceUndoManager* getSourceUndoManagerStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_source_undo_manager_get_type();
	}

	/**
	 * Begin a not undoable action on the buffer. All changes between this call
	 * and the call to gtk_source_undo_manager_end_not_undoable_action() cannot
	 * be undone. This function should be re-entrant.
	 *
	 * Since: 2.10
	 */
	public void beginNotUndoableAction();

	/**
	 * Get whether there are redo operations available.
	 *
	 * Returns: %TRUE if there are redo operations available, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public bool canRedo();

	/**
	 * Emits the #GtkSourceUndoManager::can-redo-changed signal.
	 *
	 * Since: 2.10
	 */
	public void canRedoChanged();

	/**
	 * Get whether there are undo operations available.
	 *
	 * Returns: %TRUE if there are undo operations available, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public bool canUndo();

	/**
	 * Emits the #GtkSourceUndoManager::can-undo-changed signal.
	 *
	 * Since: 2.10
	 */
	public void canUndoChanged();

	/**
	 * Ends a not undoable action on the buffer.
	 *
	 * Since: 2.10
	 */
	public void endNotUndoableAction();

	/**
	 * Perform a single redo. Calling this function when there are no redo operations
	 * available is an error. Use gtk_source_undo_manager_can_redo() to find out
	 * if there are redo operations available.
	 *
	 * Since: 2.10
	 */
	public void redo();

	/**
	 * Perform a single undo. Calling this function when there are no undo operations
	 * available is an error. Use gtk_source_undo_manager_can_undo() to find out
	 * if there are undo operations available.
	 *
	 * Since: 2.10
	 */
	public void undo();

	/**
	 * Emitted when the ability to redo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanRedoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * Emitted when the ability to undo has changed.
	 *
	 * Since: 2.10
	 */
	gulong addOnCanUndoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
