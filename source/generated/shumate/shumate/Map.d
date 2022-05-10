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


module shumate.Map;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import shumate.Layer;
private import shumate.MapSource;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;
private import std.algorithm;


/**
 * The Map widget is a [class@Gtk.Widget] that show and allows interaction with
 * the user.
 * 
 * This is the base widget and doesn't have advanced features. You can check the
 * [class@Shumate.SimpleMap] for a ready-to-use widget.
 * 
 * By default, a [class@Shumate.Viewport] is created and can be accessed with
 * [method@Shumate.Map.get_viewport].
 * 
 * Unless created with [ctor@Shumate.Map.new_simple], the widget doesn't hold any
 * layer and won't show anything. A [class@Shumate.Layer] can be added or removed
 * using the [method@Shumate.Map.add_layer] or [method@Shumate.Map.remove_layer]
 * methods.
 */
public class Map : Widget
{
	/** the main Gtk struct */
	protected ShumateMap* shumateMap;

	/** Get the main Gtk struct */
	public ShumateMap* getMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateMap* shumateMap, bool ownedRef = false)
	{
		this.shumateMap = shumateMap;
		super(cast(GtkWidget*)shumateMap, ownedRef);
	}

	/**
	 * Creates an instance of #ShumateMap.
	 *
	 * Returns: a new #ShumateMap ready to be used as a #GtkWidget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool simple = false)
	{
		auto __p = (simple ? shumate_map_new_simple() : shumate_map_new());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateMap*) __p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return shumate_map_get_type();
	}

	/**
	 * Adds a new layer to the view
	 *
	 * Params:
	 *     layer = a #ShumateLayer
	 */
	public void addLayer(Layer layer)
	{
		shumate_map_add_layer(shumateMap, (layer is null) ? null : layer.getLayerStruct());
	}

	/**
	 * Centers the map on these coordinates.
	 *
	 * Params:
	 *     latitude = the longitude to center the map at
	 *     longitude = the longitude to center the map at
	 */
	public void centerOn(double latitude, double longitude)
	{
		shumate_map_center_on(shumateMap, latitude, longitude);
	}

	/**
	 * Checks whether the view animates zoom level changes.
	 *
	 * Returns: TRUE if the view animates zooms, FALSE otherwise.
	 */
	public bool getAnimateZoom()
	{
		return shumate_map_get_animate_zoom(shumateMap) != 0;
	}

	/**
	 * Get the 'go-to-duration' property.
	 *
	 * Returns: the animation duration when calling [method@Map.go_to],
	 *     in milliseconds.
	 */
	public uint getGoToDuration()
	{
		return shumate_map_get_go_to_duration(shumateMap);
	}

	/**
	 * Gets the view's state.
	 *
	 * Returns: the state.
	 */
	public ShumateState getState()
	{
		return shumate_map_get_state(shumateMap);
	}

	/**
	 * Get the #ShumateViewport used by this view.
	 *
	 * Returns: the #ShumateViewport
	 */
	public Viewport getViewport()
	{
		auto __p = shumate_map_get_viewport(shumateMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Viewport)(cast(ShumateViewport*) __p);
	}

	/**
	 * Checks whether the view zooms on double click.
	 *
	 * Returns: TRUE if the view zooms on double click, FALSE otherwise.
	 */
	public bool getZoomOnDoubleClick()
	{
		return shumate_map_get_zoom_on_double_click(shumateMap) != 0;
	}

	/**
	 * Move from the current position to these coordinates. All tiles in the
	 * intermediate view WILL be loaded!
	 *
	 * Params:
	 *     latitude = the longitude to center the map at
	 *     longitude = the longitude to center the map at
	 */
	public void goTo(double latitude, double longitude)
	{
		shumate_map_go_to(shumateMap, latitude, longitude);
	}

	/**
	 * Adds @layer to @self above @next_sibling or, if @next_sibling is %NULL, at
	 * the bottom of the layer list.
	 *
	 * Params:
	 *     layer = a #ShumateLayer
	 *     nextSibling = a #ShumateLayer that is a child of @self, or %NULL
	 */
	public void insertLayerAbove(Layer layer, Layer nextSibling)
	{
		shumate_map_insert_layer_above(shumateMap, (layer is null) ? null : layer.getLayerStruct(), (nextSibling is null) ? null : nextSibling.getLayerStruct());
	}

	/**
	 * Adds @layer to @self behind @next_sibling or, if @next_sibling is %NULL, at
	 * the top of the layer list.
	 *
	 * Params:
	 *     layer = a #ShumateLayer
	 *     nextSibling = a #ShumateLayer that is a child of @self, or %NULL
	 */
	public void insertLayerBehind(Layer layer, Layer nextSibling)
	{
		shumate_map_insert_layer_behind(shumateMap, (layer is null) ? null : layer.getLayerStruct(), (nextSibling is null) ? null : nextSibling.getLayerStruct());
	}

	/**
	 * Removes the given layer from the view
	 *
	 * Params:
	 *     layer = a #ShumateLayer
	 */
	public void removeLayer(Layer layer)
	{
		shumate_map_remove_layer(shumateMap, (layer is null) ? null : layer.getLayerStruct());
	}

	/**
	 * Should the view animate zoom level changes.
	 *
	 * Params:
	 *     value = a #gboolean
	 */
	public void setAnimateZoom(bool value)
	{
		shumate_map_set_animate_zoom(shumateMap, value);
	}

	/**
	 * Set the duration of the transition of [method@Map.go_to].
	 *
	 * Params:
	 *     duration = the animation duration, in milliseconds
	 */
	public void setGoToDuration(uint duration)
	{
		shumate_map_set_go_to_duration(shumateMap, duration);
	}

	/**
	 * Changes the currently used map source. #g_object_unref() will be called on
	 * the previous one.
	 *
	 * As a side effect, changing the primary map source will also clear all
	 * secondary map sources.
	 *
	 * Params:
	 *     mapSource = a #ShumateMapSource
	 */
	public void setMapSource(MapSource mapSource)
	{
		shumate_map_set_map_source(shumateMap, (mapSource is null) ? null : mapSource.getMapSourceStruct());
	}

	/**
	 * Should the view zoom in and recenter when the user double click on the map.
	 *
	 * Params:
	 *     value = a #gboolean
	 */
	public void setZoomOnDoubleClick(bool value)
	{
		shumate_map_set_zoom_on_double_click(shumateMap, value);
	}

	/**
	 * Stop the go to animation.  The view will stay where it was when the
	 * animation was stopped.
	 */
	public void stopGoTo()
	{
		shumate_map_stop_go_to(shumateMap);
	}

	/**
	 * The #ShumateMap::animation-completed signal is emitted when any animation in the view
	 * ends.  This is a detailed signal.  For example, if you want to be signaled
	 * only for go-to animation, you should connect to
	 * "animation-completed::go-to". And for zoom, connect to "animation-completed::zoom".
	 */
	gulong addOnAnimationCompleted(void delegate(Map) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "animation-completed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
