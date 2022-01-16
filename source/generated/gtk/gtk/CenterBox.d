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


module gtk.CenterBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkCenterBox` arranges three children in a row, keeping the middle child
 * centered as well as possible.
 * 
 * ![An example GtkCenterBox](centerbox.png)
 * 
 * To add children to `GtkCenterBox`, use [method@Gtk.CenterBox.set_start_widget],
 * [method@Gtk.CenterBox.set_center_widget] and
 * [method@Gtk.CenterBox.set_end_widget].
 * 
 * The sizing and positioning of children can be influenced with the
 * align and expand properties of the children.
 * 
 * # GtkCenterBox as GtkBuildable
 * 
 * The `GtkCenterBox` implementation of the `GtkBuildable` interface
 * supports placing children in the 3 positions by specifying “start”, “center”
 * or “end” as the “type” attribute of a <child> element.
 * 
 * # CSS nodes
 * 
 * `GtkCenterBox` uses a single CSS node with the name “box”,
 * 
 * The first child of the `GtkCenterBox` will be allocated depending on the
 * text direction, i.e. in left-to-right layouts it will be allocated on the
 * left and in right-to-left layouts on the right.
 * 
 * In vertical orientation, the nodes of the children are arranged from top to
 * bottom.
 * 
 * # Accessibility
 * 
 * `GtkCenterBox` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class CenterBox : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkCenterBox* gtkCenterBox;

	/** Get the main Gtk struct */
	public GtkCenterBox* getCenterBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCenterBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCenterBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCenterBox* gtkCenterBox, bool ownedRef = false)
	{
		this.gtkCenterBox = gtkCenterBox;
		super(cast(GtkWidget*)gtkCenterBox, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkCenterBox);


	/** */
	public static GType getType()
	{
		return gtk_center_box_get_type();
	}

	/**
	 * Creates a new `GtkCenterBox`.
	 *
	 * Returns: the new `GtkCenterBox`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_center_box_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCenterBox*) __p);
	}

	/**
	 * Gets the value set by gtk_center_box_set_baseline_position().
	 *
	 * Returns: the baseline position
	 */
	public GtkBaselinePosition getBaselinePosition()
	{
		return gtk_center_box_get_baseline_position(gtkCenterBox);
	}

	/**
	 * Gets the center widget, or %NULL if there is none.
	 *
	 * Returns: the center widget.
	 */
	public Widget getCenterWidget()
	{
		auto __p = gtk_center_box_get_center_widget(gtkCenterBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the end widget, or %NULL if there is none.
	 *
	 * Returns: the end widget.
	 */
	public Widget getEndWidget()
	{
		auto __p = gtk_center_box_get_end_widget(gtkCenterBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the start widget, or %NULL if there is none.
	 *
	 * Returns: the start widget.
	 */
	public Widget getStartWidget()
	{
		auto __p = gtk_center_box_get_start_widget(gtkCenterBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the baseline position of a center box.
	 *
	 * This affects only horizontal boxes with at least one baseline
	 * aligned child. If there is more vertical space available than
	 * requested, and the baseline is not allocated by the parent then
	 * @position is used to allocate the baseline wrt. the extra space
	 * available.
	 *
	 * Params:
	 *     position = a `GtkBaselinePosition`
	 */
	public void setBaselinePosition(GtkBaselinePosition position)
	{
		gtk_center_box_set_baseline_position(gtkCenterBox, position);
	}

	/**
	 * Sets the center widget.
	 *
	 * To remove the existing center widget, pas %NULL.
	 *
	 * Params:
	 *     child = the new center widget
	 */
	public void setCenterWidget(Widget child)
	{
		gtk_center_box_set_center_widget(gtkCenterBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the end widget.
	 *
	 * To remove the existing end widget, pass %NULL.
	 *
	 * Params:
	 *     child = the new end widget
	 */
	public void setEndWidget(Widget child)
	{
		gtk_center_box_set_end_widget(gtkCenterBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the start widget.
	 *
	 * To remove the existing start widget, pass %NULL.
	 *
	 * Params:
	 *     child = the new start widget
	 */
	public void setStartWidget(Widget child)
	{
		gtk_center_box_set_start_widget(gtkCenterBox, (child is null) ? null : child.getWidgetStruct());
	}
}
