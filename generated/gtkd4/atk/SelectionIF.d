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


module atk.SelectionIF;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


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
public interface SelectionIF{
	/** Get the main Gtk struct */
	public AtkSelection* getSelectionStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_selection_get_type();
	}

	/**
	 * Adds the specified accessible child of the object to the
	 * object's selection.
	 *
	 * Params:
	 *     i = a #gint specifying the child index.
	 *
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public bool addSelection(int i);

	/**
	 * Clears the selection in the object so that no children in the object
	 * are selected.
	 *
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public bool clearSelection();

	/**
	 * Gets the number of accessible children currently selected.
	 * Note: callers should not rely on %NULL or on a zero value for
	 * indication of whether AtkSelectionIface is implemented, they should
	 * use type checking/interface checking macros or the
	 * atk_get_accessible_value() convenience method.
	 *
	 * Returns: a gint representing the number of items selected, or 0
	 *     if @selection does not implement this interface.
	 */
	public int getSelectionCount();

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
	 * Returns: a gboolean representing the specified child is selected, or 0
	 *     if @selection does not implement this interface.
	 */
	public bool isChildSelected(int i);

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
	 * Returns: an #AtkObject representing the
	 *     selected accessible, or %NULL if @selection does not implement this
	 *     interface.
	 */
	public ObjectAtk refSelection(int i);

	/**
	 * Removes the specified child of the object from the object's selection.
	 *
	 * Params:
	 *     i = a #gint specifying the index in the selection set.  (e.g. the
	 *         ith selection as opposed to the ith child).
	 *
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public bool removeSelection(int i);

	/**
	 * Causes every child of the object to be selected if the object
	 * supports multiple selections.
	 *
	 * Returns: TRUE if success, FALSE otherwise.
	 */
	public bool selectAllSelection();

	/**
	 * The "selection-changed" signal is emitted by an object which
	 * implements AtkSelection interface when the selection changes.
	 */
	gulong addOnSelectionChanged(void delegate(SelectionIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
