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


module atk.SelectionT;

public  import atk.ObjectAtk;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;
public  import std.algorithm;


/**
 * #AtkSelection should be implemented by UI components with children
 * which are exposed by #atk_object_ref_child and
 * #atk_object_get_n_children, if the use of the parent UI component
 * ordinarily involves selection of one or more of the objects
 * corresponding to those #AtkObject children - for example,
 * selectable lists.
 * 
 * Note that other types of "selection" (for instance text selection)
 * are accomplished a other ATK interfaces - #AtkSelection is limited
 * to the selection/deselection of children.
 */
public template SelectionT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkSelection* getSelectionStruct()
	{
		return cast(AtkSelection*)getStruct();
	}


	/**
	 * Adds the specified accessible child of the object to the
	 * object's selection.
	 *
	 * Params:
	 *     i = a #gint specifying the child index.
	 *
	 * Return: TRUE if success, FALSE otherwise.
	 */
	public bool addSelection(int i)
	{
		return atk_selection_add_selection(getSelectionStruct(), i) != 0;
	}

	/**
	 * Clears the selection in the object so that no children in the object
	 * are selected.
	 *
	 * Return: TRUE if success, FALSE otherwise.
	 */
	public bool clearSelection()
	{
		return atk_selection_clear_selection(getSelectionStruct()) != 0;
	}

	/**
	 * Gets the number of accessible children currently selected.
	 * Note: callers should not rely on %NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 *
	 * Return: a gint representing the number of items selected, or 0
	 *     if @selection does not implement this interface.
	 */
	public int getSelectionCount()
	{
		return atk_selection_get_selection_count(getSelectionStruct());
	}

	/**
	 * Determines if the current child of this object is selected
	 * Note: callers should not rely on %NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 *
	 * Params:
	 *     i = a #gint specifying the child index.
	 *
	 * Return: a gboolean representing the specified child is selected, or 0
	 *     if @selection does not implement this interface.
	 */
	public bool isChildSelected(int i)
	{
		return atk_selection_is_child_selected(getSelectionStruct(), i) != 0;
	}

	/**
	 * Gets a reference to the accessible object representing the specified
	 * selected child of the object.
	 * Note: callers should not rely on %NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 *
	 * Params:
	 *     i = a #gint specifying the index in the selection set.  (e.g. the
	 *         ith selection as opposed to the ith child).
	 *
	 * Return: an #AtkObject representing the
	 *     selected accessible, or %NULL if @selection does not implement this
	 *     interface.
	 */
	public ObjectAtk refSelection(int i)
	{
		auto p = atk_selection_ref_selection(getSelectionStruct(), i);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p, true);
	}

	/**
	 * Removes the specified child of the object from the object's selection.
	 *
	 * Params:
	 *     i = a #gint specifying the index in the selection set.  (e.g. the
	 *         ith selection as opposed to the ith child).
	 *
	 * Return: TRUE if success, FALSE otherwise.
	 */
	public bool removeSelection(int i)
	{
		return atk_selection_remove_selection(getSelectionStruct(), i) != 0;
	}

	/**
	 * Causes every child of the object to be selected if the object
	 * supports multiple selections.
	 *
	 * Return: TRUE if success, FALSE otherwise.
	 */
	public bool selectAllSelection()
	{
		return atk_selection_select_all_selection(getSelectionStruct()) != 0;
	}

	protected class OnSelectionChangedDelegateWrapper
	{
		void delegate(SelectionIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SelectionIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSelectionChangedDelegateWrapper[] onSelectionChangedListeners;

	/**
	 * The "selection-changed" signal is emitted by an object which
	 * implements AtkSelection interface when the selection changes.
	 */
	gulong addOnSelectionChanged(void delegate(SelectionIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSelectionChangedListeners ~= new OnSelectionChangedDelegateWrapper(dlg, 0, connectFlags);
		onSelectionChangedListeners[onSelectionChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)onSelectionChangedListeners[onSelectionChangedListeners.length - 1],
			cast(GClosureNotify)&callBackSelectionChangedDestroy,
			connectFlags);
		return onSelectionChangedListeners[onSelectionChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSelectionChanged(AtkSelection* selectionStruct,OnSelectionChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSelectionChangedDestroy(OnSelectionChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSelectionChanged(wrapper);
	}

	protected void internalRemoveOnSelectionChanged(OnSelectionChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onSelectionChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSelectionChangedListeners[index] = null;
				onSelectionChangedListeners = std.algorithm.remove(onSelectionChangedListeners, index);
				break;
			}
		}
	}
	
}
