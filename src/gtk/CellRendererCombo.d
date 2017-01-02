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


module gtk.CellRendererCombo;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.CellRendererText;
private import gtk.TreeIter;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkCellRendererCombo renders text in a cell like #GtkCellRendererText from
 * which it is derived. But while #GtkCellRendererText offers a simple entry to
 * edit the text, #GtkCellRendererCombo offers a #GtkComboBox
 * widget to edit the text. The values to display in the combo box are taken from
 * the tree model specified in the #GtkCellRendererCombo:model property.
 * 
 * The combo cell renderer takes care of adding a text cell renderer to the combo
 * box and sets it to display the column specified by its
 * #GtkCellRendererCombo:text-column property. Further properties of the combo box
 * can be set in a handler for the #GtkCellRenderer::editing-started signal.
 * 
 * The #GtkCellRendererCombo cell renderer was added in GTK+ 2.6.
 */
public class CellRendererCombo : CellRendererText
{
	/** the main Gtk struct */
	protected GtkCellRendererCombo* gtkCellRendererCombo;

	/** Get the main Gtk struct */
	public GtkCellRendererCombo* getCellRendererComboStruct()
	{
		return gtkCellRendererCombo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererCombo;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkCellRendererCombo = cast(GtkCellRendererCombo*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererCombo* gtkCellRendererCombo, bool ownedRef = false)
	{
		this.gtkCellRendererCombo = gtkCellRendererCombo;
		super(cast(GtkCellRendererText*)gtkCellRendererCombo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_combo_get_type();
	}

	/**
	 * Creates a new #GtkCellRendererCombo.
	 * Adjust how text is drawn using object properties.
	 * Object properties can be set globally (with g_object_set()).
	 * Also, with #GtkTreeViewColumn, you can bind a property to a value
	 * in a #GtkTreeModel. For example, you can bind the “text” property
	 * on the cell renderer to a string value in the model, thus rendering
	 * a different string in each row of the #GtkTreeView.
	 *
	 * Return: the new cell renderer
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_cell_renderer_combo_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkCellRendererCombo*) p);
	}

	protected class OnChangedDelegateWrapper
	{
		void delegate(string, TreeIter, CellRendererCombo) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, TreeIter, CellRendererCombo) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChangedDelegateWrapper[] onChangedListeners;

	/**
	 * This signal is emitted each time after the user selected an item in
	 * the combo box, either by using the mouse or the arrow keys.  Contrary
	 * to GtkComboBox, GtkCellRendererCombo::changed is not emitted for
	 * changes made to a selected item in the entry.  The argument @new_iter
	 * corresponds to the newly selected item in the combo box and it is relative
	 * to the GtkTreeModel set via the model property on GtkCellRendererCombo.
	 *
	 * Note that as soon as you change the model displayed in the tree view,
	 * the tree view will immediately cease the editing operating.  This
	 * means that you most probably want to refrain from changing the model
	 * until the combo cell renderer emits the edited or editing_canceled signal.
	 *
	 * Params:
	 *     pathString = a string of the path identifying the edited cell
	 *         (relative to the tree view model)
	 *     newIter = the new iter selected in the combo box
	 *         (relative to the combo box model)
	 *
	 * Since: 2.14
	 */
	gulong addOnChanged(void delegate(string, TreeIter, CellRendererCombo) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChangedListeners ~= new OnChangedDelegateWrapper(dlg, 0, connectFlags);
		onChangedListeners[onChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)onChangedListeners[onChangedListeners.length - 1],
			cast(GClosureNotify)&callBackChangedDestroy,
			connectFlags);
		return onChangedListeners[onChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChanged(GtkCellRendererCombo* cellrenderercomboStruct, char* pathString, GtkTreeIter* newIter,OnChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(pathString), ObjectG.getDObject!(TreeIter)(newIter), wrapper.outer);
	}
	
	extern(C) static void callBackChangedDestroy(OnChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChanged(wrapper);
	}

	protected void internalRemoveOnChanged(OnChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChangedListeners[index] = null;
				onChangedListeners = std.algorithm.remove(onChangedListeners, index);
				break;
			}
		}
	}
	
}
