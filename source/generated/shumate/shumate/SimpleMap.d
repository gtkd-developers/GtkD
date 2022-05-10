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


module shumate.SimpleMap;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import shumate.Compass;
private import shumate.Layer;
private import shumate.LicenseSh;
private import shumate.MapSource;
private import shumate.Scale;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A ready-to-use map [class@Gtk.Widget].If you want to use your own implementation,
 * you can look at the [class@Shumate.Map] widget.
 * 
 * The simple map contains a zoom widget, a [class@Shumate.License] at the bottom,
 * a [class@Shumate.Scale] and a [class@Shumate.Compass].
 */
public class SimpleMap : Widget
{
	/** the main Gtk struct */
	protected ShumateSimpleMap* shumateSimpleMap;

	/** Get the main Gtk struct */
	public ShumateSimpleMap* getSimpleMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateSimpleMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateSimpleMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateSimpleMap* shumateSimpleMap, bool ownedRef = false)
	{
		this.shumateSimpleMap = shumateSimpleMap;
		super(cast(GtkWidget*)shumateSimpleMap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_simple_map_get_type();
	}

	/** */
	public this()
	{
		auto __p = shumate_simple_map_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateSimpleMap*) __p);
	}

	/**
	 * Adds a map layer as an overlay on top of the base map.
	 *
	 * Params:
	 *     layer = a [class@Layer] to add
	 */
	public void addOverlayLayer(Layer layer)
	{
		shumate_simple_map_add_overlay_layer(shumateSimpleMap, (layer is null) ? null : layer.getLayerStruct());
	}

	/**
	 * Gets the compass widget for the map.
	 *
	 * Returns: a [class@Compass]
	 */
	public Compass getCompass()
	{
		auto __p = shumate_simple_map_get_compass(shumateSimpleMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Compass)(cast(ShumateCompass*) __p);
	}

	/**
	 * Gets the license widget for the map.
	 *
	 * Returns: a [class@License]
	 */
	public LicenseSh getLicense()
	{
		auto __p = shumate_simple_map_get_license(shumateSimpleMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LicenseSh)(cast(ShumateLicense*) __p);
	}

	/**
	 * Gets the map source for the current base layer.
	 *
	 * Returns: a [class@MapSource]
	 */
	public MapSource getMapSource()
	{
		auto __p = shumate_simple_map_get_map_source(shumateSimpleMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MapSource)(cast(ShumateMapSource*) __p);
	}

	/**
	 * Gets the scale widget for the map.
	 *
	 * Returns: a [class@Scale]
	 */
	public Scale getScale()
	{
		auto __p = shumate_simple_map_get_scale(shumateSimpleMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Scale)(cast(ShumateScale*) __p);
	}

	/**
	 * Gets whether or not the zoom buttons are shown.
	 *
	 * Returns: %TRUE if the zoom buttons are visible, otherwise %FALSE
	 */
	public bool getShowZoomButtons()
	{
		return shumate_simple_map_get_show_zoom_buttons(shumateSimpleMap) != 0;
	}

	/**
	 * Gets the map's viewport, needed for constructing map layers that will be added
	 * to it.
	 *
	 * Returns: a [class@Viewport]
	 */
	public Viewport getViewport()
	{
		auto __p = shumate_simple_map_get_viewport(shumateSimpleMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Viewport)(cast(ShumateViewport*) __p);
	}

	/** */
	public void insertOverlayLayer(Layer layer, uint idx)
	{
		shumate_simple_map_insert_overlay_layer(shumateSimpleMap, (layer is null) ? null : layer.getLayerStruct(), idx);
	}

	/**
	 * Removes a layer from the map.
	 *
	 * Params:
	 *     layer = a [class@Layer] that was added to the map previously
	 */
	public void removeOverlayLayer(Layer layer)
	{
		shumate_simple_map_remove_overlay_layer(shumateSimpleMap, (layer is null) ? null : layer.getLayerStruct());
	}

	/**
	 * Sets the source for the base map.
	 *
	 * Params:
	 *     mapSource = a [class@MapSource]
	 */
	public void setMapSource(MapSource mapSource)
	{
		shumate_simple_map_set_map_source(shumateSimpleMap, (mapSource is null) ? null : mapSource.getMapSourceStruct());
	}

	/**
	 * Sets whether or not the zoom buttons are shown.
	 *
	 * Params:
	 *     showZoomButtons = %TRUE to show the zoom buttons, %FALSE to hide them
	 */
	public void setShowZoomButtons(bool showZoomButtons)
	{
		shumate_simple_map_set_show_zoom_buttons(shumateSimpleMap, showZoomButtons);
	}
}
