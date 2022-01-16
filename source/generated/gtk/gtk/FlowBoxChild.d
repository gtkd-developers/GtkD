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
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkFlowBoxChild` is the kind of widget that can be added to a `GtkFlowBox`.
 */
public class FlowBoxChild : Widget
{
	/** the main Gtk struct */
	protected GtkFlowBoxChild* gtkFlowBoxChild;

	/** Get the main Gtk struct */
	public GtkFlowBoxChild* getFlowBoxChildStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFlowBoxChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFlowBoxChild;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFlowBoxChild* gtkFlowBoxChild, bool ownedRef = false)
	{
		this.gtkFlowBoxChild = gtkFlowBoxChild;
		super(cast(GtkWidget*)gtkFlowBoxChild, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_flow_box_child_get_type();
	}

	/**
	 * Creates a new `GtkFlowBoxChild`.
	 *
	 * This should only be used as a child of a `GtkFlowBox`.
	 *
	 * Returns: a new `GtkFlowBoxChild`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_flow_box_child_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFlowBoxChild*) __p);
	}

	/**
	 * Marks @child as changed, causing any state that depends on this
	 * to be updated.
	 *
	 * This affects sorting and filtering.
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
	 * and filtering functions into the widgets themselves.
	 *
	 * Another alternative is to call [method@Gtk.FlowBox.invalidate_sort]
	 * on any model change, but that is more expensive.
	 */
	public void changed()
	{
		gtk_flow_box_child_changed(gtkFlowBoxChild);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self
	 */
	public Widget getChild()
	{
		auto __p = gtk_flow_box_child_get_child(gtkFlowBoxChild);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the current index of the @child in its `GtkFlowBox` container.
	 *
	 * Returns: the index of the @child, or -1 if the @child is not
	 *     in a flow box
	 */
	public int getIndex()
	{
		return gtk_flow_box_child_get_index(gtkFlowBoxChild);
	}

	/**
	 * Returns whether the @child is currently selected in its
	 * `GtkFlowBox` container.
	 *
	 * Returns: %TRUE if @child is selected
	 */
	public bool isSelected()
	{
		return gtk_flow_box_child_is_selected(gtkFlowBoxChild) != 0;
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_flow_box_child_set_child(gtkFlowBoxChild, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Emitted when the user activates a child widget in a `GtkFlowBox`.
	 *
	 * This can be happen either by clicking or double-clicking,
	 * or via a keybinding.
	 *
	 * This is a [keybinding signal](class.SignalAction.html),
	 * but it can be used by applications for their own purposes.
	 *
	 * The default bindings are <kbd>Space</kbd> and <kbd>Enter</kbd>.
	 */
	gulong addOnActivate(void delegate(FlowBoxChild) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
