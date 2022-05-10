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


module shumate.Marker;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import shumate.LocationIF;
private import shumate.LocationT;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * Markers represent points of interest on a map. Markers need to be
 * placed on a layer (a [class@MarkerLayer]). Layers have to be added to a
 * [class@Map] for the markers to show on the map.
 * 
 * A marker is nothing more than a regular [class@Gtk.Widget]. You can draw on
 * it what ever you want. Set the marker's position on the map using
 * [method@Location.set_location].
 * 
 * This is a base class of all markers. A typical usage of a marker is for
 * instance to add a [class@Gtk.Image] with a pin image and add the
 * [class@Gtk.GestureClick] controller to listen to click events and show
 * a [class@Gtk.Popover] with the description of the marker.
 */
public class Marker : Widget, LocationIF
{
	/** the main Gtk struct */
	protected ShumateMarker* shumateMarker;

	/** Get the main Gtk struct */
	public ShumateMarker* getMarkerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateMarker;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateMarker;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateMarker* shumateMarker, bool ownedRef = false)
	{
		this.shumateMarker = shumateMarker;
		super(cast(GtkWidget*)shumateMarker, ownedRef);
	}

	// add the Location capabilities
	mixin LocationT!(ShumateMarker);


	/** */
	public static GType getType()
	{
		return shumate_marker_get_type();
	}

	/**
	 * Creates an instance of #ShumateMarker.
	 *
	 * Returns: a new #ShumateMarker.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = shumate_marker_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateMarker*) __p);
	}

	/** */
	public void animateIn()
	{
		shumate_marker_animate_in(shumateMarker);
	}

	/** */
	public void animateInWithDelay(uint delay)
	{
		shumate_marker_animate_in_with_delay(shumateMarker, delay);
	}

	/** */
	public void animateOut()
	{
		shumate_marker_animate_out(shumateMarker);
	}

	/** */
	public void animateOutWithDelay(uint delay)
	{
		shumate_marker_animate_out_with_delay(shumateMarker, delay);
	}

	/**
	 * Retrieves the current child of @marker.
	 *
	 * Returns: a #GtkWidget.
	 */
	public Widget getChild()
	{
		auto __p = shumate_marker_get_child(shumateMarker);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Checks whether the marker is draggable.
	 *
	 * Returns: the draggable or not state of the marker.
	 */
	public bool getDraggable()
	{
		return shumate_marker_get_draggable(shumateMarker) != 0;
	}

	/**
	 * Checks whether the marker is selectable.
	 *
	 * Returns: the selectable or not state of the marker.
	 */
	public bool getSelectable()
	{
		return shumate_marker_get_selectable(shumateMarker) != 0;
	}

	/**
	 * Checks whether the marker is selected.
	 *
	 * Returns: %TRUE if the marker is selected, otherwise %FALSE
	 */
	public bool isSelected()
	{
		return shumate_marker_is_selected(shumateMarker) != 0;
	}

	/**
	 * Sets the child widget of @marker.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 */
	public void setChild(Widget child)
	{
		shumate_marker_set_child(shumateMarker, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the marker as draggable or not.
	 *
	 * Params:
	 *     value = the draggable state
	 */
	public void setDraggable(bool value)
	{
		shumate_marker_set_draggable(shumateMarker, value);
	}

	/**
	 * Sets the marker as selectable or not.
	 *
	 * Params:
	 *     value = the selectable state
	 */
	public void setSelectable(bool value)
	{
		shumate_marker_set_selectable(shumateMarker, value);
	}
}
