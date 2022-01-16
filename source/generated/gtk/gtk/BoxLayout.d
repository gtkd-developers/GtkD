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


module gtk.BoxLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkBoxLayout` is a layout manager that arranges children in a single
 * row or column.
 * 
 * Whether it is a row or column depends on the value of its
 * [property@Gtk.Orientable:orientation] property. Within the other dimension
 * all children all allocated the same size. The `GtkBoxLayout` will respect
 * the [property@Gtk.Widget:halign] and [property@Gtk.Widget:valign]
 * properties of each child widget.
 * 
 * If you want all children to be assigned the same size, you can use
 * the [property@Gtk.BoxLayout:homogeneous] property.
 * 
 * If you want to specify the amount of space placed between each child,
 * you can use the [property@Gtk.BoxLayout:spacing] property.
 */
public class BoxLayout : LayoutManager, OrientableIF
{
	/** the main Gtk struct */
	protected GtkBoxLayout* gtkBoxLayout;

	/** Get the main Gtk struct */
	public GtkBoxLayout* getBoxLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBoxLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBoxLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBoxLayout* gtkBoxLayout, bool ownedRef = false)
	{
		this.gtkBoxLayout = gtkBoxLayout;
		super(cast(GtkLayoutManager*)gtkBoxLayout, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkBoxLayout);


	/** */
	public static GType getType()
	{
		return gtk_box_layout_get_type();
	}

	/**
	 * Creates a new `GtkBoxLayout`.
	 *
	 * Params:
	 *     orientation = the orientation for the new layout
	 *
	 * Returns: a new box layout
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto __p = gtk_box_layout_new(orientation);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBoxLayout*) __p, true);
	}

	/**
	 * Gets the value set by gtk_box_layout_set_baseline_position().
	 *
	 * Returns: the baseline position
	 */
	public GtkBaselinePosition getBaselinePosition()
	{
		return gtk_box_layout_get_baseline_position(gtkBoxLayout);
	}

	/**
	 * Returns whether the layout is set to be homogeneous.
	 *
	 * Returns: %TRUE if the layout is homogeneous
	 */
	public bool getHomogeneous()
	{
		return gtk_box_layout_get_homogeneous(gtkBoxLayout) != 0;
	}

	/**
	 * Returns the space that @box_layout puts between children.
	 *
	 * Returns: the spacing of the layout
	 */
	public uint getSpacing()
	{
		return gtk_box_layout_get_spacing(gtkBoxLayout);
	}

	/**
	 * Sets the baseline position of a box layout.
	 *
	 * The baseline position affects only horizontal boxes with at least one
	 * baseline aligned child. If there is more vertical space available than
	 * requested, and the baseline is not allocated by the parent then the
	 * given @position is used to allocate the baseline within the extra
	 * space available.
	 *
	 * Params:
	 *     position = a `GtkBaselinePosition`
	 */
	public void setBaselinePosition(GtkBaselinePosition position)
	{
		gtk_box_layout_set_baseline_position(gtkBoxLayout, position);
	}

	/**
	 * Sets whether the box layout will allocate the same
	 * size to all children.
	 *
	 * Params:
	 *     homogeneous = %TRUE to set the box layout as homogeneous
	 */
	public void setHomogeneous(bool homogeneous)
	{
		gtk_box_layout_set_homogeneous(gtkBoxLayout, homogeneous);
	}

	/**
	 * Sets how much spacing to put between children.
	 *
	 * Params:
	 *     spacing = the spacing to apply between children
	 */
	public void setSpacing(uint spacing)
	{
		gtk_box_layout_set_spacing(gtkBoxLayout, spacing);
	}
}
