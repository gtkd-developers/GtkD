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
 * inFile  = AtkSelection.html
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
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Selection;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;




/**
 * AtkSelection should be implemented by UI components with children which
 * are exposed by atk_object_ref_child and atk_object_get_n_children, if
 * the use of the parent UI component ordinarily involves selection of one
 * or more of the objects corresponding to those AtkObject children - for
 * example, selectable lists.
 *
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
	int[string] connectedSignals;
	
	void delegate(Selection)[] onSelectionChangedListeners;
	/**
	 * The "selection-changed" signal is emitted by an object which implements
	 * AtkSelection interface when the selection changes.
	 * See Also
	 * AtkText
	 */
	void addOnSelectionChanged(void delegate(Selection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(AtkSelection* atkselectionStruct, Selection _selection)
	{
		foreach ( void delegate(Selection) dlg ; _selection.onSelectionChangedListeners )
		{
			dlg(_selection);
		}
	}
	
	
	/**
	 * Adds the specified accessible child of the object to the
	 * object's selection.
	 * Params:
	 * i = a gint specifying the child index.
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public int addSelection(int i)
	{
		// gboolean atk_selection_add_selection (AtkSelection *selection,  gint i);
		return atk_selection_add_selection(atkSelection, i);
	}
	
	/**
	 * Clears the selection in the object so that no children in the object
	 * are selected.
	 * Returns: TRUE if success, FALSE otherwise.
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
	 * Params:
	 * i = a gint specifying the index in the selection set. (e.g. the
	 * ith selection as opposed to the ith child).
	 * Returns: an AtkObject representing the selected accessible , or NULL if selection does not implement this interface. [transfer full]
	 */
	public ObjectAtk refSelection(int i)
	{
		// AtkObject * atk_selection_ref_selection (AtkSelection *selection,  gint i);
		auto p = atk_selection_ref_selection(atkSelection, i);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the number of accessible children currently selected.
	 * Note: callers should not rely on NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 * Returns: a gint representing the number of items selected, or 0 if selection does not implement this interface.
	 */
	public int getSelectionCount()
	{
		// gint atk_selection_get_selection_count (AtkSelection *selection);
		return atk_selection_get_selection_count(atkSelection);
	}
	
	/**
	 * Determines if the current child of this object is selected
	 * Note: callers should not rely on NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 * Params:
	 * i = a gint specifying the child index.
	 * Returns: a gboolean representing the specified child is selected, or 0 if selection does not implement this interface.
	 */
	public int isChildSelected(int i)
	{
		// gboolean atk_selection_is_child_selected (AtkSelection *selection,  gint i);
		return atk_selection_is_child_selected(atkSelection, i);
	}
	
	/**
	 * Removes the specified child of the object from the object's selection.
	 * Params:
	 * i = a gint specifying the index in the selection set. (e.g. the
	 * ith selection as opposed to the ith child).
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public int removeSelection(int i)
	{
		// gboolean atk_selection_remove_selection (AtkSelection *selection,  gint i);
		return atk_selection_remove_selection(atkSelection, i);
	}
	
	/**
	 * Causes every child of the object to be selected if the object
	 * supports multiple selections.
	 * Returns: TRUE if success, FALSE otherwise. Signal Details The "selection-changed" signal void user_function (AtkSelection *atkselection, gpointer user_data) : Run Last The "selection-changed" signal is emitted by an object which implements AtkSelection interface when the selection changes.
	 */
	public int selectAllSelection()
	{
		// gboolean atk_selection_select_all_selection (AtkSelection *selection);
		return atk_selection_select_all_selection(atkSelection);
	}
}
