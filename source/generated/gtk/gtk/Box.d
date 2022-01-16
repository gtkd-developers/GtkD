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


module gtk.Box;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkBox` widget arranges child widgets into a single row or column.
 * 
 * ![An example GtkBox](box.png)
 * 
 * Whether it is a row or column depends on the value of its
 * [property@Gtk.Orientable:orientation] property. Within the other
 * dimension, all children are allocated the same size. Of course, the
 * [property@Gtk.Widget:halign] and [property@Gtk.Widget:valign] properties
 * can be used on the children to influence their allocation.
 * 
 * Use repeated calls to [method@Gtk.Box.append] to pack widgets into a
 * `GtkBox` from start to end. Use [method@Gtk.Box.remove] to remove widgets
 * from the `GtkBox`. [method@Gtk.Box.insert_child_after] can be used to add
 * a child at a particular position.
 * 
 * Use [method@Gtk.Box.set_homogeneous] to specify whether or not all children
 * of the `GtkBox` are forced to get the same amount of space.
 * 
 * Use [method@Gtk.Box.set_spacing] to determine how much space will be minimally
 * placed between all children in the `GtkBox`. Note that spacing is added
 * *between* the children.
 * 
 * Use [method@Gtk.Box.reorder_child_after] to move a child to a different
 * place in the box.
 * 
 * # CSS nodes
 * 
 * `GtkBox` uses a single CSS node with name box.
 * 
 * # Accessibility
 * 
 * `GtkBox` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class Box : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkBox* gtkBox;

	/** Get the main Gtk struct */
	public GtkBox* getBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBox* gtkBox, bool ownedRef = false)
	{
		this.gtkBox = gtkBox;
		super(cast(GtkWidget*)gtkBox, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkBox);


	/** */
	public static GType getType()
	{
		return gtk_box_get_type();
	}

	/**
	 * Creates a new `GtkBox`.
	 *
	 * Params:
	 *     orientation = the box’s orientation
	 *     spacing = the number of pixels to place by default between children
	 *
	 * Returns: a new `GtkBox`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation, int spacing)
	{
		auto __p = gtk_box_new(orientation, spacing);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBox*) __p);
	}

	/**
	 * Adds @child as the last child to @box.
	 *
	 * Params:
	 *     child = the `GtkWidget` to append
	 */
	public void append(Widget child)
	{
		gtk_box_append(gtkBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets the value set by gtk_box_set_baseline_position().
	 *
	 * Returns: the baseline position
	 */
	public GtkBaselinePosition getBaselinePosition()
	{
		return gtk_box_get_baseline_position(gtkBox);
	}

	/**
	 * Returns whether the box is homogeneous (all children are the
	 * same size).
	 *
	 * Returns: %TRUE if the box is homogeneous.
	 */
	public bool getHomogeneous()
	{
		return gtk_box_get_homogeneous(gtkBox) != 0;
	}

	/**
	 * Gets the value set by gtk_box_set_spacing().
	 *
	 * Returns: spacing between children
	 */
	public int getSpacing()
	{
		return gtk_box_get_spacing(gtkBox);
	}

	/**
	 * Inserts @child in the position after @sibling in the list
	 * of @box children.
	 *
	 * If @sibling is %NULL, insert @child at the first position.
	 *
	 * Params:
	 *     child = the `GtkWidget` to insert
	 *     sibling = the sibling after which to insert @child
	 */
	public void insertChildAfter(Widget child, Widget sibling)
	{
		gtk_box_insert_child_after(gtkBox, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct());
	}

	/**
	 * Adds @child as the first child to @box.
	 *
	 * Params:
	 *     child = the `GtkWidget` to prepend
	 */
	public void prepend(Widget child)
	{
		gtk_box_prepend(gtkBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes a child widget from @box.
	 *
	 * The child must have been added before with
	 * [method@Gtk.Box.append], [method@Gtk.Box.prepend], or
	 * [method@Gtk.Box.insert_child_after].
	 *
	 * Params:
	 *     child = the child to remove
	 */
	public void remove(Widget child)
	{
		gtk_box_remove(gtkBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Moves @child to the position after @sibling in the list
	 * of @box children.
	 *
	 * If @sibling is %NULL, move @child to the first position.
	 *
	 * Params:
	 *     child = the `GtkWidget` to move, must be a child of @box
	 *     sibling = the sibling to move @child after
	 */
	public void reorderChildAfter(Widget child, Widget sibling)
	{
		gtk_box_reorder_child_after(gtkBox, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct());
	}

	/**
	 * Sets the baseline position of a box.
	 *
	 * This affects only horizontal boxes with at least one baseline
	 * aligned child. If there is more vertical space available than
	 * requested, and the baseline is not allocated by the parent then
	 * @position is used to allocate the baseline with respect to the
	 * extra space available.
	 *
	 * Params:
	 *     position = a `GtkBaselinePosition`
	 */
	public void setBaselinePosition(GtkBaselinePosition position)
	{
		gtk_box_set_baseline_position(gtkBox, position);
	}

	/**
	 * Sets whether or not all children of @box are given equal space
	 * in the box.
	 *
	 * Params:
	 *     homogeneous = a boolean value, %TRUE to create equal allotments,
	 *         %FALSE for variable allotments
	 */
	public void setHomogeneous(bool homogeneous)
	{
		gtk_box_set_homogeneous(gtkBox, homogeneous);
	}

	/**
	 * Sets the number of pixels to place between children of @box.
	 *
	 * Params:
	 *     spacing = the number of pixels to put between children
	 */
	public void setSpacing(int spacing)
	{
		gtk_box_set_spacing(gtkBox, spacing);
	}
}
