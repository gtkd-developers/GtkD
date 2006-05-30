/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = Selection
 * strct   = AtkSelection
 * realStrct=
 * ctorStrct=
 * clss    = Selection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_selection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module atk.Selection;

private import atk.typedefs;

private import lib.atk;


/**
 * Description
 * AtkSelection should be implemented by UI components with children which
 * are exposed by atk_object_ref_child and atk_object_get_n_children, if
 * the use of the parent UI component ordinarily involves selection of one
 * or more of the objects corresponding to those AtkObject children - for
 * example, selectable lists.
 * Note that other types of "selection" (for instance text selection) are
 * accomplished a other ATK interfaces - AtkSelection is limited to the
 * selection/deselection of children.
 */
public class Selection
{
	
	/** the main Gtk struct */
	protected AtkSelection* atkSelection;
	
	
	public AtkSelection* getSelectionStruct()
	{
		return atkSelection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkSelection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkSelection* atkSelection)
	{
		this.atkSelection = atkSelection;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Selection)[] onSelectionChangedListeners;
	void addOnSelectionChanged(void delegate(Selection) dlg)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			this,
			null,
			0);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(AtkSelection* atkselectionStruct, Selection selection)
	{
		bit consumed = false;
		
		foreach ( void delegate(Selection) dlg ; selection.onSelectionChangedListeners )
		{
			dlg(selection);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Adds the specified accessible child of the object to the
	 * object's selection.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * i:
	 *  a gint specifying the child index.
	 * Returns:
	 *  TRUE if success, FALSE otherwise.
	 */
	public int addSelection(int i)
	{
		// gboolean atk_selection_add_selection (AtkSelection *selection,  gint i);
		return atk_selection_add_selection(atkSelection, i);
	}
	
	/**
	 * Clears the selection in the object so that no children in the object
	 * are selected.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * Returns:
	 *  TRUE if success, FALSE otherwise.
	 */
	public int clearSelection()
	{
		// gboolean atk_selection_clear_selection (AtkSelection *selection);
		return atk_selection_clear_selection(atkSelection);
	}
	
	/**
	 * Gets a reference to the accessible object representing the specified
	 * selected child of the object.
	 * Note: callers should not rely on NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * i:
	 *  a gint specifying the index in the selection set. (e.g. the
	 * ith selection as opposed to the ith child).
	 * Returns:
	 *  an AtkObject representing the selected accessible , or NULL
	 * if selection does not implement this interface.
	 */
	public AtkObject* refSelection(int i)
	{
		// AtkObject* atk_selection_ref_selection (AtkSelection *selection,  gint i);
		return atk_selection_ref_selection(atkSelection, i);
	}
	
	/**
	 * Gets the number of accessible children currently selected.
	 * Note: callers should not rely on NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * Returns:
	 *  a gint representing the number of items selected, or 0
	 * if selection does not implement this interface.
	 */
	public int getSelectionCount()
	{
		// gint atk_selection_get_selection_count  (AtkSelection *selection);
		return atk_selection_get_selection_count(atkSelection);
	}
	
	/**
	 * Determines if the current child of this object is selected
	 * Note: callers should not rely on NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * i:
	 *  a gint specifying the child index.
	 * Returns:
	 *  a gboolean representing the specified child is selected, or 0
	 * if selection does not implement this interface.
	 */
	public int isChildSelected(int i)
	{
		// gboolean atk_selection_is_child_selected (AtkSelection *selection,  gint i);
		return atk_selection_is_child_selected(atkSelection, i);
	}
	
	/**
	 * Removes the specified child of the object from the object's selection.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * i:
	 *  a gint specifying the index in the selection set. (e.g. the
	 * ith selection as opposed to the ith child).
	 * Returns:
	 *  TRUE if success, FALSE otherwise.
	 */
	public int removeSelection(int i)
	{
		// gboolean atk_selection_remove_selection (AtkSelection *selection,  gint i);
		return atk_selection_remove_selection(atkSelection, i);
	}
	
	/**
	 * Causes every child of the object to be selected if the object
	 * supports multiple selections.
	 * selection:
	 *  a GObject instance that implements AtkSelectionIface
	 * Returns:
	 *  TRUE if success, FALSE otherwise.
	 * Signal Details
	 * The "selection-changed" signal
	 * void user_function (AtkSelection *atkselection,
	 *  gpointer user_data) : Run last
	 * The "selection-changed" signal is emitted by an object which implements
	 * AtkSelection interface when the selection changes.
	 * atkselection:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 * See Also
	 * AtkText
	 */
	public int selectAllSelection()
	{
		// gboolean atk_selection_select_all_selection  (AtkSelection *selection);
		return atk_selection_select_all_selection(atkSelection);
	}
}
