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


module shumate.Viewport;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import shumate.LocationIF;
private import shumate.LocationT;
private import shumate.MapSource;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * The object holding the coordinate, zoom-level, and rotation state of the current view.
 * 
 * As the object implements [iface@Shumate.Location], the latitude and longitude are
 * accessible via the interface methods.
 */
public class Viewport : ObjectG, LocationIF
{
	/** the main Gtk struct */
	protected ShumateViewport* shumateViewport;

	/** Get the main Gtk struct */
	public ShumateViewport* getViewportStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateViewport;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateViewport;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateViewport* shumateViewport, bool ownedRef = false)
	{
		this.shumateViewport = shumateViewport;
		super(cast(GObject*)shumateViewport, ownedRef);
	}

	// add the Location capabilities
	mixin LocationT!(ShumateViewport);


	/** */
	public static GType getType()
	{
		return shumate_viewport_get_type();
	}

	/**
	 * Creates a new #ShumateViewport
	 *
	 * Returns: A new #ShumateViewport
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = shumate_viewport_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateViewport*) __p, true);
	}

	/**
	 * Get the maximal zoom level
	 *
	 * Returns: the maximal zoom level
	 */
	public uint getMaxZoomLevel()
	{
		return shumate_viewport_get_max_zoom_level(shumateViewport);
	}

	/**
	 * Get the minimal zoom level
	 *
	 * Returns: the minimal zoom level
	 */
	public uint getMinZoomLevel()
	{
		return shumate_viewport_get_min_zoom_level(shumateViewport);
	}

	/**
	 * Get the reference map source
	 *
	 * Returns: the reference #ShumateMapSource or %NULL
	 *     when none has been set.
	 */
	public MapSource getReferenceMapSource()
	{
		auto __p = shumate_viewport_get_reference_map_source(shumateViewport);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MapSource)(cast(ShumateMapSource*) __p);
	}

	/**
	 * Gets the current rotation
	 *
	 * Returns: the current rotation
	 */
	public double getRotation()
	{
		return shumate_viewport_get_rotation(shumateViewport);
	}

	/**
	 * Get the current zoom level
	 *
	 * Returns: the current zoom level
	 */
	public double getZoomLevel()
	{
		return shumate_viewport_get_zoom_level(shumateViewport);
	}

	/**
	 * Gets the position on @widget that correspond to the given latitude and
	 * longitude.
	 *
	 * Params:
	 *     widget = a #GtkWidget that uses @self as viewport
	 *     latitude = the latitude
	 *     longitude = the longitude
	 *     x = return value for the x coordinate
	 *     y = return value for the y coordinate
	 */
	public void locationToWidgetCoords(Widget widget, double latitude, double longitude, out double x, out double y)
	{
		shumate_viewport_location_to_widget_coords(shumateViewport, (widget is null) ? null : widget.getWidgetStruct(), latitude, longitude, &x, &y);
	}

	/**
	 * Set the maximal zoom level
	 *
	 * Params:
	 *     maxZoomLevel = the maximal zoom level
	 */
	public void setMaxZoomLevel(uint maxZoomLevel)
	{
		shumate_viewport_set_max_zoom_level(shumateViewport, maxZoomLevel);
	}

	/**
	 * Set the minimal zoom level
	 *
	 * Params:
	 *     minZoomLevel = the minimal zoom level
	 */
	public void setMinZoomLevel(uint minZoomLevel)
	{
		shumate_viewport_set_min_zoom_level(shumateViewport, minZoomLevel);
	}

	/**
	 * Set the reference map source
	 *
	 * Params:
	 *     mapSource = a #ShumateMapSource or %NULL to set none.
	 */
	public void setReferenceMapSource(MapSource mapSource)
	{
		shumate_viewport_set_reference_map_source(shumateViewport, (mapSource is null) ? null : mapSource.getMapSourceStruct());
	}

	/**
	 * Sets the rotation
	 *
	 * Params:
	 *     rotation = the rotation
	 */
	public void setRotation(double rotation)
	{
		shumate_viewport_set_rotation(shumateViewport, rotation);
	}

	/**
	 * Set the zoom level
	 *
	 * Params:
	 *     zoomLevel = the zoom level
	 */
	public void setZoomLevel(double zoomLevel)
	{
		shumate_viewport_set_zoom_level(shumateViewport, zoomLevel);
	}

	/**
	 * Gets the latitude and longitude corresponding to a position on @widget.
	 *
	 * Params:
	 *     widget = a #GtkWidget that uses @self as viewport
	 *     x = the x coordinate
	 *     y = the y coordinate
	 *     latitude = return location for the latitude
	 *     longitude = return location for the longitude
	 */
	public void widgetCoordsToLocation(Widget widget, double x, double y, out double latitude, out double longitude)
	{
		shumate_viewport_widget_coords_to_location(shumateViewport, (widget is null) ? null : widget.getWidgetStruct(), x, y, &latitude, &longitude);
	}

	/**
	 * Increases the zoom level
	 */
	public void zoomIn()
	{
		shumate_viewport_zoom_in(shumateViewport);
	}

	/**
	 * Decreases the zoom level
	 */
	public void zoomOut()
	{
		shumate_viewport_zoom_out(shumateViewport);
	}
}
