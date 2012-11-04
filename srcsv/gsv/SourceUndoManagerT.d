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
 * outFile = SourceUndoManagerT
 * strct   = GtkSourceUndoManager
 * realStrct=
 * ctorStrct=
 * clss    = SourceUndoManagerT
 * interf  = SourceUndoManagerIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
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

module gsv.SourceUndoManagerT;

public  import gsvc.gsvtypes;

public import gsvc.gsv;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * Description
 * The GtkSourceUndoManager interface can be implemented to provide custom
 * undo management to a GtkSourceBuffer. Use
 * gtk_source_buffer_set_undo_manager to install a custom undo manager for
 * a particular source buffer.
 * Use gtk_source_undo_manager_can_undo_changed and
 * gtk_source_undo_manager_can_redo_changed when respectively the undo state
 * or redo state of the undo stack has changed.
 */
public template SourceUndoManagerT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkSourceUndoManager* gtkSourceUndoManager;
	
	
	public GtkSourceUndoManager* getSourceUndoManagerTStruct()
	{
		return cast(GtkSourceUndoManager*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SourceUndoManagerIF)[] _onCanRedoChangedListeners;
	void delegate(SourceUndoManagerIF)[] onCanRedoChangedListeners()
	{
		return  _onCanRedoChangedListeners;
	}
	/**
	 * Emitted when the ability to redo has changed.
	 * Since 2.10
	 */
	void addOnCanRedoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("can-redo-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-redo-changed",
			cast(GCallback)&callBackCanRedoChanged,
			cast(void*)cast(SourceUndoManagerIF)this,
			null,
			connectFlags);
			connectedSignals["can-redo-changed"] = 1;
		}
		_onCanRedoChangedListeners ~= dlg;
	}
	extern(C) static void callBackCanRedoChanged(GtkSourceUndoManager* managerStruct, SourceUndoManagerIF _sourceUndoManagerIF)
	{
		foreach ( void delegate(SourceUndoManagerIF) dlg ; _sourceUndoManagerIF.onCanRedoChangedListeners )
		{
			dlg(_sourceUndoManagerIF);
		}
	}
	
	void delegate(SourceUndoManagerIF)[] _onCanUndoChangedListeners;
	void delegate(SourceUndoManagerIF)[] onCanUndoChangedListeners()
	{
		return  _onCanUndoChangedListeners;
	}
	/**
	 * Emitted when the ability to undo has changed.
	 * Since 2.10
	 * See Also
	 * GtkTextBuffer, GtkSourceView
	 */
	void addOnCanUndoChanged(void delegate(SourceUndoManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("can-undo-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-undo-changed",
			cast(GCallback)&callBackCanUndoChanged,
			cast(void*)cast(SourceUndoManagerIF)this,
			null,
			connectFlags);
			connectedSignals["can-undo-changed"] = 1;
		}
		_onCanUndoChangedListeners ~= dlg;
	}
	extern(C) static void callBackCanUndoChanged(GtkSourceUndoManager* managerStruct, SourceUndoManagerIF _sourceUndoManagerIF)
	{
		foreach ( void delegate(SourceUndoManagerIF) dlg ; _sourceUndoManagerIF.onCanUndoChangedListeners )
		{
			dlg(_sourceUndoManagerIF);
		}
	}
	
	
	/**
	 * Get whether there are undo operations available.
	 * Since 2.10
	 * Returns: TRUE if there are undo operations available, FALSE otherwise
	 */
	public int canUndo()
	{
		// gboolean gtk_source_undo_manager_can_undo (GtkSourceUndoManager *manager);
		return gtk_source_undo_manager_can_undo(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Get whether there are redo operations available.
	 * Since 2.10
	 * Returns: TRUE if there are redo operations available, FALSE otherwise
	 */
	public int canRedo()
	{
		// gboolean gtk_source_undo_manager_can_redo (GtkSourceUndoManager *manager);
		return gtk_source_undo_manager_can_redo(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Perform a single undo. Calling this function when there are no undo operations
	 * available is an error. Use gtk_source_undo_manager_can_undo to find out
	 * if there are undo operations available.
	 * Since 2.10
	 */
	public void undo()
	{
		// void gtk_source_undo_manager_undo (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_undo(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Perform a single redo. Calling this function when there are no redo operations
	 * available is an error. Use gtk_source_undo_manager_can_redo to find out
	 * if there are redo operations available.
	 * Since 2.10
	 */
	public void redo()
	{
		// void gtk_source_undo_manager_redo (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_redo(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Begin a not undoable action on the buffer. All changes between this call
	 * and the call to gtk_source_undo_manager_end_not_undoable_action cannot
	 * be undone. This function should be re-entrant.
	 * Since 2.10
	 */
	public void beginNotUndoableAction()
	{
		// void gtk_source_undo_manager_begin_not_undoable_action  (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_begin_not_undoable_action(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Ends a not undoable action on the buffer.
	 * Since 2.10
	 */
	public void endNotUndoableAction()
	{
		// void gtk_source_undo_manager_end_not_undoable_action  (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_end_not_undoable_action(getSourceUndoManagerTStruct());
	}
	
	/**
	 * Emits the "can-undo-changed" signal.
	 * Since 2.10
	 */
	public void canUndoChanged()
	{
		// void gtk_source_undo_manager_can_undo_changed  (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_can_undo_changed(getSourceUndoManagerTStruct());
	}
	
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
	public void canRedoChanged()
	{
		// void gtk_source_undo_manager_can_redo_changed  (GtkSourceUndoManager *manager);
		gtk_source_undo_manager_can_redo_changed(getSourceUndoManagerTStruct());
	}
}
