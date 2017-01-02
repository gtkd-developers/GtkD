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


module gtk.ListBoxRow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/** */
public class ListBoxRow : Bin
{
	/** the main Gtk struct */
	protected GtkListBoxRow* gtkListBoxRow;

	/** Get the main Gtk struct */
	public GtkListBoxRow* getListBoxRowStruct()
	{
		return gtkListBoxRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBoxRow;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkListBoxRow = cast(GtkListBoxRow*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListBoxRow* gtkListBoxRow, bool ownedRef = false)
	{
		this.gtkListBoxRow = gtkListBoxRow;
		super(cast(GtkBin*)gtkListBoxRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_list_box_row_get_type();
	}

	/**
	 * Creates a new #GtkListBoxRow, to be used as a child of a #GtkListBox.
	 *
	 * Return: a new #GtkListBoxRow
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_list_box_row_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkListBoxRow*) p);
	}

	/**
	 * Marks @row as changed, causing any state that depends on this
	 * to be updated. This affects sorting, filtering and headers.
	 *
	 * Note that calls to this method must be in sync with the data
	 * used for the row functions. For instance, if the list is
	 * mirroring some external data set, and *two* rows changed in the
	 * external data set then when you call gtk_list_box_row_changed()
	 * on the first row the sort function must only read the new data
	 * for the first of the two changed rows, otherwise the resorting
	 * of the rows will be wrong.
	 *
	 * This generally means that if you don’t fully control the data
	 * model you have to duplicate the data that affects the listbox
	 * row functions into the row widgets themselves. Another alternative
	 * is to call gtk_list_box_invalidate_sort() on any model change,
	 * but that is more expensive.
	 *
	 * Since: 3.10
	 */
	public void changed()
	{
		gtk_list_box_row_changed(gtkListBoxRow);
	}

	/**
	 * Gets the value of the #GtkListBoxRow:activatable property
	 * for this row.
	 *
	 * Return: %TRUE if the row is activatable
	 *
	 * Since: 3.14
	 */
	public bool getActivatable()
	{
		return gtk_list_box_row_get_activatable(gtkListBoxRow) != 0;
	}

	/**
	 * Returns the current header of the @row. This can be used
	 * in a #GtkListBoxUpdateHeaderFunc to see if there is a header
	 * set already, and if so to update the state of it.
	 *
	 * Return: the current header, or %NULL if none
	 *
	 * Since: 3.10
	 */
	public Widget getHeader()
	{
		auto p = gtk_list_box_row_get_header(gtkListBoxRow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the current index of the @row in its #GtkListBox container.
	 *
	 * Return: the index of the @row, or -1 if the @row is not in a listbox
	 *
	 * Since: 3.10
	 */
	public int getIndex()
	{
		return gtk_list_box_row_get_index(gtkListBoxRow);
	}

	/**
	 * Gets the value of the #GtkListBoxRow:selectable property
	 * for this row.
	 *
	 * Return: %TRUE if the row is selectable
	 *
	 * Since: 3.14
	 */
	public bool getSelectable()
	{
		return gtk_list_box_row_get_selectable(gtkListBoxRow) != 0;
	}

	/**
	 * Returns whether the child is currently selected in its
	 * #GtkListBox container.
	 *
	 * Return: %TRUE if @row is selected
	 *
	 * Since: 3.14
	 */
	public bool isSelected()
	{
		return gtk_list_box_row_is_selected(gtkListBoxRow) != 0;
	}

	/**
	 * Set the #GtkListBoxRow:activatable property for this row.
	 *
	 * Params:
	 *     activatable = %TRUE to mark the row as activatable
	 *
	 * Since: 3.14
	 */
	public void setActivatable(bool activatable)
	{
		gtk_list_box_row_set_activatable(gtkListBoxRow, activatable);
	}

	/**
	 * Sets the current header of the @row. This is only allowed to be called
	 * from a #GtkListBoxUpdateHeaderFunc. It will replace any existing
	 * header in the row, and be shown in front of the row in the listbox.
	 *
	 * Params:
	 *     header = the header, or %NULL
	 *
	 * Since: 3.10
	 */
	public void setHeader(Widget header)
	{
		gtk_list_box_row_set_header(gtkListBoxRow, (header is null) ? null : header.getWidgetStruct());
	}

	/**
	 * Set the #GtkListBoxRow:selectable property for this row.
	 *
	 * Params:
	 *     selectable = %TRUE to mark the row as selectable
	 *
	 * Since: 3.14
	 */
	public void setSelectable(bool selectable)
	{
		gtk_list_box_row_set_selectable(gtkListBoxRow, selectable);
	}

	protected class OnActivateDelegateWrapper
	{
		void delegate(ListBoxRow) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBoxRow) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateDelegateWrapper[] onActivateListeners;

	/** */
	gulong addOnActivate(void delegate(ListBoxRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateListeners ~= new OnActivateDelegateWrapper(dlg, 0, connectFlags);
		onActivateListeners[onActivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)onActivateListeners[onActivateListeners.length - 1],
			cast(GClosureNotify)&callBackActivateDestroy,
			connectFlags);
		return onActivateListeners[onActivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackActivate(GtkListBoxRow* listboxrowStruct,OnActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateDestroy(OnActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivate(wrapper);
	}

	protected void internalRemoveOnActivate(OnActivateDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateListeners[index] = null;
				onActivateListeners = std.algorithm.remove(onActivateListeners, index);
				break;
			}
		}
	}
	
}
