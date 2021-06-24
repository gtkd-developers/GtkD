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


module gtk.CenterLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkCenterLayout` is a layout manager that manages up to three children.
 * 
 * The start widget is allocated at the start of the layout (left in
 * left-to-right locales and right in right-to-left ones), and the end
 * widget at the end.
 * 
 * The center widget is centered regarding the full width of the layout's.
 */
public class CenterLayout : LayoutManager
{
	/** the main Gtk struct */
	protected GtkCenterLayout* gtkCenterLayout;

	/** Get the main Gtk struct */
	public GtkCenterLayout* getCenterLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCenterLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCenterLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCenterLayout* gtkCenterLayout, bool ownedRef = false)
	{
		this.gtkCenterLayout = gtkCenterLayout;
		super(cast(GtkLayoutManager*)gtkCenterLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_center_layout_get_type();
	}

	/**
	 * Creates a new `GtkCenterLayout`.
	 *
	 * Returns: the newly created `GtkCenterLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_center_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCenterLayout*) __p, true);
	}

	/**
	 * Returns the baseline position of the layout.
	 *
	 * Returns: The current baseline position of @self.
	 */
	public GtkBaselinePosition getBaselinePosition()
	{
		return gtk_center_layout_get_baseline_position(gtkCenterLayout);
	}

	/**
	 * Returns the center widget of the layout.
	 *
	 * Returns: the current center widget of @self
	 */
	public Widget getCenterWidget()
	{
		auto __p = gtk_center_layout_get_center_widget(gtkCenterLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the end widget of the layout.
	 *
	 * Returns: the current end widget of @self
	 */
	public Widget getEndWidget()
	{
		auto __p = gtk_center_layout_get_end_widget(gtkCenterLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the current orienration of the layout manager.
	 *
	 * Returns: The current orientation of @self
	 */
	public GtkOrientation getOrientation()
	{
		return gtk_center_layout_get_orientation(gtkCenterLayout);
	}

	/**
	 * Returns the start widget fo the layout.
	 *
	 * Returns: The current start widget of @self
	 */
	public Widget getStartWidget()
	{
		auto __p = gtk_center_layout_get_start_widget(gtkCenterLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the new baseline position of @self
	 *
	 * Params:
	 *     baselinePosition = the new baseline position
	 */
	public void setBaselinePosition(GtkBaselinePosition baselinePosition)
	{
		gtk_center_layout_set_baseline_position(gtkCenterLayout, baselinePosition);
	}

	/**
	 * Sets the new center widget of @self.
	 *
	 * To remove the existing center widget, pass %NULL.
	 *
	 * Params:
	 *     widget = the new center widget
	 */
	public void setCenterWidget(Widget widget)
	{
		gtk_center_layout_set_center_widget(gtkCenterLayout, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the new end widget of @self.
	 *
	 * To remove the existing center widget, pass %NULL.
	 *
	 * Params:
	 *     widget = the new end widget
	 */
	public void setEndWidget(Widget widget)
	{
		gtk_center_layout_set_end_widget(gtkCenterLayout, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the orientation of @self.
	 *
	 * Params:
	 *     orientation = the new orientation
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		gtk_center_layout_set_orientation(gtkCenterLayout, orientation);
	}

	/**
	 * Sets the new start widget of @self.
	 *
	 * To remove the existing start widget, pass %NULL.
	 *
	 * Params:
	 *     widget = the new start widget
	 */
	public void setStartWidget(Widget widget)
	{
		gtk_center_layout_set_start_widget(gtkCenterLayout, (widget is null) ? null : widget.getWidgetStruct());
	}
}
