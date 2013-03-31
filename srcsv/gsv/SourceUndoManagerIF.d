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
 * inFile  = GtkSourceUndoManager.html
 * outPack = gsv
 * outFile = SourceUndoManagerIF
 * strct   = GtkSourceUndoManager
 * realStrct=
 * ctorStrct=
 * clss    = SourceUndoManagerT
 * interf  = SourceUndoManagerIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_undo_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceUndoManagerIF;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * The GtkSourceUndoManager interface can be implemented to provide custom
 * undo management to a GtkSourceBuffer. Use
 * gtk_source_buffer_set_undo_manager() to install a custom undo manager for
 * a particular source buffer.
 *
 * Use gtk_source_undo_manager_can_undo_changed() and
 * gtk_source_undo_manager_can_redo_changed() when respectively the undo state
 * or redo state of the undo stack has changed.
 */
public interface SourceUndoManagerIF
{
	
	
	public GtkSourceUndoManager* getSourceUndoManagerTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(SourceUndoManagerIF)[] onCanRedoChangedListeners();
	/**
	 * Emitted when the ability to redo has changed.
	 * Since 2.10
	 */
	void addOnCanRedoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(SourceUndoManagerIF)[] onCanUndoChangedListeners();
	/**
	 * Emitted when the ability to undo has changed.
	 * Since 2.10
	 * See Also
	 * GtkTextBuffer, GtkSourceView
	 */
	void addOnCanUndoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Get whether there are undo operations available.
	 * Since 2.10
	 * Returns: TRUE if there are undo operations available, FALSE otherwise
	 */
	public int canUndo();
	
	/**
	 * Get whether there are redo operations available.
	 * Since 2.10
	 * Returns: TRUE if there are redo operations available, FALSE otherwise
	 */
	public int canRedo();
	
	/**
	 * Perform a single undo. Calling this function when there are no undo operations
	 * available is an error. Use gtk_source_undo_manager_can_undo() to find out
	 * if there are undo operations available.
	 * Since 2.10
	 */
	public void undo();
	
	/**
	 * Perform a single redo. Calling this function when there are no redo operations
	 * available is an error. Use gtk_source_undo_manager_can_redo() to find out
	 * if there are redo operations available.
	 * Since 2.10
	 */
	public void redo();
	
	/**
	 * Begin a not undoable action on the buffer. All changes between this call
	 * and the call to gtk_source_undo_manager_end_not_undoable_action() cannot
	 * be undone. This function should be re-entrant.
	 * Since 2.10
	 */
	public void beginNotUndoableAction();
	
	/**
	 * Ends a not undoable action on the buffer.
	 * Since 2.10
	 */
	public void endNotUndoableAction();
	
	/**
	 * Emits the "can-undo-changed" signal.
	 * Since 2.10
	 */
	public void canUndoChanged();
	
	/**
	 * Emits the "can-redo-changed" signal.
	 * Since 2.10
	 * Signal Details
	 * The "can-redo-changed" signal
	 * void user_function (GtkSourceUndoManager *manager,
	 *  gpointer user_data) : Action
	 * Emitted when the ability to redo has changed.
	 * Since 2.10
	 */
	public void canRedoChanged();
}
