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


module gtk.FlowBoxChild;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/** */
public class FlowBoxChild : Bin
{
	/** the main Gtk struct */
	protected GtkFlowBoxChild* gtkFlowBoxChild;

	/** Get the main Gtk struct */
	public GtkFlowBoxChild* getFlowBoxChildStruct()
	{
		return gtkFlowBoxChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFlowBoxChild;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkFlowBoxChild = cast(GtkFlowBoxChild*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFlowBoxChild* gtkFlowBoxChild, bool ownedRef = false)
	{
		this.gtkFlowBoxChild = gtkFlowBoxChild;
		super(cast(GtkBin*)gtkFlowBoxChild, ownedRef);
	}


	public static GType getType()
	{
		return gtk_flow_box_child_get_type();
	}

	/**
	 * Creates a new #GtkFlowBoxChild, to be used as a child
	 * of a #GtkFlowBox.
	 *
	 * Return: a new #GtkFlowBoxChild
	 *
	 * Since: 3.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_flow_box_child_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkFlowBoxChild*) p);
	}

	/**
	 * Marks @child as changed, causing any state that depends on this
	 * to be updated. This affects sorting and filtering.
	 *
	 * Note that calls to this method must be in sync with the data
	 * used for the sorting and filtering functions. For instance, if
	 * the list is mirroring some external data set, and *two* children
	 * changed in the external data set when you call
	 * gtk_flow_box_child_changed() on the first child, the sort function
	 * must only read the new data for the first of the two changed
	 * children, otherwise the resorting of the children will be wrong.
	 *
	 * This generally means that if you don’t fully control the data
	 * model, you have to duplicate the data that affects the sorting
	 * and filtering functions into the widgets themselves. Another
	 * alternative is to call gtk_flow_box_invalidate_sort() on any
	 * model change, but that is more expensive.
	 *
	 * Since: 3.12
	 */
	public void changed()
	{
		gtk_flow_box_child_changed(gtkFlowBoxChild);
	}

	/**
	 * Gets the current index of the @child in its #GtkFlowBox container.
	 *
	 * Return: the index of the @child, or -1 if the @child is not
	 *     in a flow box.
	 *
	 * Since: 3.12
	 */
	public int getIndex()
	{
		return gtk_flow_box_child_get_index(gtkFlowBoxChild);
	}

	/**
	 * Returns whether the @child is currently selected in its
	 * #GtkFlowBox container.
	 *
	 * Return: %TRUE if @child is selected
	 *
	 * Since: 3.12
	 */
	public bool isSelected()
	{
		return gtk_flow_box_child_is_selected(gtkFlowBoxChild) != 0;
	}

	int[string] connectedSignals;

	void delegate(FlowBoxChild)[] onActivateListeners;
	/**
	 * The ::activate signal is emitted when the user activates
	 * a child widget in a #GtkFlowBox, either by clicking or
	 * double-clicking, or by using the Space or Enter key.
	 *
	 * While this signal is used as a
	 * [keybinding signal][GtkBindingSignal],
	 * it can be used by applications for their own purposes.
	 */
	void addOnActivate(void delegate(FlowBoxChild) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "activate" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"activate",
				cast(GCallback)&callBackActivate,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkFlowBoxChild* flowboxchildStruct, FlowBoxChild _flowboxchild)
	{
		foreach ( void delegate(FlowBoxChild) dlg; _flowboxchild.onActivateListeners )
		{
			dlg(_flowboxchild);
		}
	}
}
