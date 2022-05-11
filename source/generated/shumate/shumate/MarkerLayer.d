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


module shumate.MarkerLayer;

private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import shumate.Layer;
private import shumate.Marker;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;
private import std.algorithm;


/**
 * Displays markers on the map. It is responsible for positioning markers
 * correctly, marker selections and group marker operations.
 */
public class MarkerLayer : Layer
{
	/** the main Gtk struct */
	protected ShumateMarkerLayer* shumateMarkerLayer;

	/** Get the main Gtk struct */
	public ShumateMarkerLayer* getMarkerLayerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateMarkerLayer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateMarkerLayer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateMarkerLayer* shumateMarkerLayer, bool ownedRef = false)
	{
		this.shumateMarkerLayer = shumateMarkerLayer;
		super(cast(ShumateLayer*)shumateMarkerLayer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_marker_layer_get_type();
	}

	/**
	 * Creates a new instance of #ShumateMarkerLayer.
	 *
	 * Params:
	 *     viewport = the @ShumateViewport
	 *
	 * Returns: a new #ShumateMarkerLayer ready to be used as a container for the markers.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Viewport viewport)
	{
		auto __p = shumate_marker_layer_new((viewport is null) ? null : viewport.getViewportStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateMarkerLayer*) __p);
	}

	/**
	 * Creates a new instance of #ShumateMarkerLayer with the specified selection mode.
	 *
	 * Params:
	 *     viewport = the @ShumateViewport
	 *     mode = Selection mode
	 *
	 * Returns: a new #ShumateMarkerLayer ready to be used as a container for the markers.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Viewport viewport, GtkSelectionMode mode)
	{
		auto __p = shumate_marker_layer_new_full((viewport is null) ? null : viewport.getViewportStruct(), mode);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(ShumateMarkerLayer*) __p);
	}

	/**
	 * Adds the marker to the layer.
	 *
	 * Params:
	 *     marker = a #ShumateMarker
	 */
	public void addMarker(Marker marker)
	{
		shumate_marker_layer_add_marker(shumateMarkerLayer, (marker is null) ? null : marker.getMarkerStruct());
	}

	/**
	 * Fade in all markers in the layer with an animation
	 */
	public void animateInAllMarkers()
	{
		shumate_marker_layer_animate_in_all_markers(shumateMarkerLayer);
	}

	/**
	 * Fade out all markers in the layer with an animation
	 */
	public void animateOutAllMarkers()
	{
		shumate_marker_layer_animate_out_all_markers(shumateMarkerLayer);
	}

	/**
	 * Gets a copy of the list of all markers inserted into the layer. You should
	 * free the list but not its contents.
	 *
	 * Returns: the list
	 */
	public ListG getMarkers()
	{
		auto __p = shumate_marker_layer_get_markers(shumateMarkerLayer);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets a list of selected markers in the layer.
	 *
	 * Returns: the list
	 */
	public ListG getSelected()
	{
		auto __p = shumate_marker_layer_get_selected(shumateMarkerLayer);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the selection mode of the layer.
	 *
	 * Returns: the selection mode of the layer.
	 */
	public GtkSelectionMode getSelectionMode()
	{
		return shumate_marker_layer_get_selection_mode(shumateMarkerLayer);
	}

	/**
	 * Hides all the markers in the layer
	 */
	public void hideAllMarkers()
	{
		shumate_marker_layer_hide_all_markers(shumateMarkerLayer);
	}

	/**
	 * Removes all markers from the layer.
	 */
	public void removeAll()
	{
		shumate_marker_layer_remove_all(shumateMarkerLayer);
	}

	/**
	 * Removes the marker from the layer.
	 *
	 * Params:
	 *     marker = a #ShumateMarker
	 */
	public void removeMarker(Marker marker)
	{
		shumate_marker_layer_remove_marker(shumateMarkerLayer, (marker is null) ? null : marker.getMarkerStruct());
	}

	/**
	 * Selects all selectable markers in the layer.
	 */
	public void selectAllMarkers()
	{
		shumate_marker_layer_select_all_markers(shumateMarkerLayer);
	}

	/**
	 * Selects a marker in this layer.
	 *
	 * If #ShumateMarkerLayer:selection-mode is %GTK_SELECTION_SINGLE or
	 * %GTK_SELECTION_BROWSE, all other markers will be unselected. If the mode is
	 * %GTK_SELECTION_NONE or @marker is not selectable, nothing will happen.
	 *
	 * Params:
	 *     marker = a #ShumateMarker that is a child of @self
	 *
	 * Returns: %TRUE if the marker is now selected, otherwise %FALSE
	 */
	public bool selectMarker(Marker marker)
	{
		return shumate_marker_layer_select_marker(shumateMarkerLayer, (marker is null) ? null : marker.getMarkerStruct()) != 0;
	}

	/**
	 * Sets all markers draggable in the layer
	 */
	public void setAllMarkersDraggable()
	{
		shumate_marker_layer_set_all_markers_draggable(shumateMarkerLayer);
	}

	/**
	 * Sets all markers undraggable in the layer
	 */
	public void setAllMarkersUndraggable()
	{
		shumate_marker_layer_set_all_markers_undraggable(shumateMarkerLayer);
	}

	/**
	 * Sets the selection mode of the layer.
	 *
	 * NOTE: changing selection mode to %GTK_SELECTION_NONE, %GTK_SELECTION_SINGLE
	 * or %GTK_SELECTION_BROWSE will clear all previously selected markers.
	 *
	 * Params:
	 *     mode = a #GtkSelectionMode value
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		shumate_marker_layer_set_selection_mode(shumateMarkerLayer, mode);
	}

	/**
	 * Shows all markers in the layer
	 */
	public void showAllMarkers()
	{
		shumate_marker_layer_show_all_markers(shumateMarkerLayer);
	}

	/**
	 * Unselects all markers in the layer.
	 */
	public void unselectAllMarkers()
	{
		shumate_marker_layer_unselect_all_markers(shumateMarkerLayer);
	}

	/**
	 * Unselects a marker in this layer.
	 *
	 * This works even if #ShumateMarkerLayer:selection-mode is
	 * %GTK_SELECTION_BROWSE. Browse mode only prevents user interaction, not the
	 * program, from unselecting a marker.
	 *
	 * Params:
	 *     marker = a #ShumateMarker that is a child of @self
	 */
	public void unselectMarker(Marker marker)
	{
		shumate_marker_layer_unselect_marker(shumateMarkerLayer, (marker is null) ? null : marker.getMarkerStruct());
	}

	/**
	 * Emitted when a marker in the layer is selected.
	 *
	 * Params:
	 *     marker = The marker that was selected
	 */
	gulong addOnMarkerSelected(void delegate(Marker, MarkerLayer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "marker-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a marker in the layer is unselected.
	 *
	 * Params:
	 *     marker = The marker that was unselected
	 */
	gulong addOnMarkerUnselected(void delegate(Marker, MarkerLayer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "marker-unselected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
