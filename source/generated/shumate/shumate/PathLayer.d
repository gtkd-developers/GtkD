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


module shumate.PathLayer;

private import gdk.RGBA;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import shumate.Layer;
private import shumate.LocationIF;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A layer displaying line path between inserted [iface@Location] objects
 * 
 * This layer shows a connection between inserted objects implementing the
 * [iface@Location] interface. This means that both #ShumateMarker
 * objects and [class@Coordinate] objects can be inserted into the layer.
 * Of course, custom objects implementing the #ShumateLocation interface
 * can be used as well.
 */
public class PathLayer : Layer
{
	/** the main Gtk struct */
	protected ShumatePathLayer* shumatePathLayer;

	/** Get the main Gtk struct */
	public ShumatePathLayer* getPathLayerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumatePathLayer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumatePathLayer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumatePathLayer* shumatePathLayer, bool ownedRef = false)
	{
		this.shumatePathLayer = shumatePathLayer;
		super(cast(ShumateLayer*)shumatePathLayer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_path_layer_get_type();
	}

	/**
	 * Creates a new instance of #ShumatePathLayer.
	 *
	 * Params:
	 *     viewport = the @ShumateViewport
	 *
	 * Returns: a new instance of #ShumatePathLayer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Viewport viewport)
	{
		auto __p = shumate_path_layer_new((viewport is null) ? null : viewport.getViewportStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumatePathLayer*) __p);
	}

	/**
	 * Adds a #ShumateLocation object to the layer.
	 * The node is prepended to the list.
	 *
	 * Params:
	 *     location = a #ShumateLocation
	 */
	public void addNode(LocationIF location)
	{
		shumate_path_layer_add_node(shumatePathLayer, (location is null) ? null : location.getLocationStruct());
	}

	/**
	 * Gets information whether the path is closed.
	 *
	 * Returns: %TRUE when the path is closed, %FALSE otherwise
	 */
	public bool getClosed()
	{
		return shumate_path_layer_get_closed(shumatePathLayer) != 0;
	}

	/**
	 * Returns the list of dash segment lengths.
	 *
	 * Returns: the list
	 */
	public ListG getDash()
	{
		auto __p = shumate_path_layer_get_dash(shumatePathLayer);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Checks whether the path is filled.
	 *
	 * Returns: %TRUE if the path is filled, %FALSE otherwise.
	 */
	public bool getFill()
	{
		return shumate_path_layer_get_fill(shumatePathLayer) != 0;
	}

	/**
	 * Gets the path's fill color.
	 *
	 * Returns: the path's fill color.
	 */
	public RGBA getFillColor()
	{
		auto __p = shumate_path_layer_get_fill_color(shumatePathLayer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p, true);
	}

	/**
	 * Gets a copy of the list of all #ShumateLocation objects inserted into the layer. You should
	 * free the list but not its contents.
	 *
	 * Returns: the list
	 */
	public ListG getNodes()
	{
		auto __p = shumate_path_layer_get_nodes(shumatePathLayer);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the path's outline color.
	 *
	 * Returns: the path's outline color.
	 */
	public RGBA getOutlineColor()
	{
		auto __p = shumate_path_layer_get_outline_color(shumatePathLayer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p, true);
	}

	/**
	 * Gets the width of the outline.
	 *
	 * Returns: the width of the outline
	 */
	public double getOutlineWidth()
	{
		return shumate_path_layer_get_outline_width(shumatePathLayer);
	}

	/**
	 * Checks whether the path is stroked.
	 *
	 * Returns: %TRUE if the path is stroked, %FALSE otherwise.
	 */
	public bool getStroke()
	{
		return shumate_path_layer_get_stroke(shumatePathLayer) != 0;
	}

	/**
	 * Gets the path's stroke color.
	 *
	 * Returns: the path's stroke color.
	 */
	public RGBA getStrokeColor()
	{
		auto __p = shumate_path_layer_get_stroke_color(shumatePathLayer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p, true);
	}

	/**
	 * Gets the width of the stroke.
	 *
	 * Returns: the width of the stroke
	 */
	public double getStrokeWidth()
	{
		return shumate_path_layer_get_stroke_width(shumatePathLayer);
	}

	/**
	 * Inserts a #ShumateLocation object to the specified position.
	 *
	 * Params:
	 *     location = a #ShumateLocation
	 *     position = position in the list where the #ShumateLocation object should be inserted
	 */
	public void insertNode(LocationIF location, uint position)
	{
		shumate_path_layer_insert_node(shumatePathLayer, (location is null) ? null : location.getLocationStruct(), position);
	}

	/**
	 * Removes all #ShumateLocation objects from the layer.
	 */
	public void removeAll()
	{
		shumate_path_layer_remove_all(shumatePathLayer);
	}

	/**
	 * Removes the #ShumateLocation object from the layer.
	 *
	 * Params:
	 *     location = a #ShumateLocation
	 */
	public void removeNode(LocationIF location)
	{
		shumate_path_layer_remove_node(shumatePathLayer, (location is null) ? null : location.getLocationStruct());
	}

	/**
	 * Makes the path closed.
	 *
	 * Params:
	 *     value = %TRUE to make the path closed
	 */
	public void setClosed(bool value)
	{
		shumate_path_layer_set_closed(shumatePathLayer, value);
	}

	/**
	 * Sets dashed line pattern in a way similar to cairo_set_dash() of cairo. This
	 * method supports only integer values for segment lengths. The values have to be
	 * passed inside the data pointer of the list (using the %GUINT_TO_POINTER conversion)
	 *
	 * Pass %NULL to use solid line.
	 *
	 * Params:
	 *     dashPattern = list of integer values representing lengths
	 *         of dashes/spaces (see cairo documentation of cairo_set_dash())
	 */
	public void setDash(ListG dashPattern)
	{
		shumate_path_layer_set_dash(shumatePathLayer, (dashPattern is null) ? null : dashPattern.getListGStruct());
	}

	/**
	 * Sets the path to be filled
	 *
	 * Params:
	 *     value = if the path is filled
	 */
	public void setFill(bool value)
	{
		shumate_path_layer_set_fill(shumatePathLayer, value);
	}

	/**
	 * Set the path's fill color.
	 *
	 * Params:
	 *     color = The path's fill color or %NULL to reset to the
	 *         default color. The color parameter is copied.
	 */
	public void setFillColor(RGBA color)
	{
		shumate_path_layer_set_fill_color(shumatePathLayer, (color is null) ? null : color.getRGBAStruct());
	}

	/**
	 * Set the path's outline color.
	 *
	 * Params:
	 *     color = The path's outline color or %NULL to reset to the
	 *         default color. The color parameter is copied.
	 */
	public void setOutlineColor(RGBA color)
	{
		shumate_path_layer_set_outline_color(shumatePathLayer, (color is null) ? null : color.getRGBAStruct());
	}

	/**
	 * Sets the width of the outline
	 *
	 * Params:
	 *     value = the width of the outline (in pixels)
	 */
	public void setOutlineWidth(double value)
	{
		shumate_path_layer_set_outline_width(shumatePathLayer, value);
	}

	/**
	 * Sets the path to be stroked
	 *
	 * Params:
	 *     value = if the path is stroked
	 */
	public void setStroke(bool value)
	{
		shumate_path_layer_set_stroke(shumatePathLayer, value);
	}

	/**
	 * Set the path's stroke color.
	 *
	 * Params:
	 *     color = The path's stroke color or %NULL to reset to the
	 *         default color. The color parameter is copied.
	 */
	public void setStrokeColor(RGBA color)
	{
		shumate_path_layer_set_stroke_color(shumatePathLayer, (color is null) ? null : color.getRGBAStruct());
	}

	/**
	 * Sets the width of the stroke
	 *
	 * Params:
	 *     value = the width of the stroke (in pixels)
	 */
	public void setStrokeWidth(double value)
	{
		shumate_path_layer_set_stroke_width(shumatePathLayer, value);
	}
}
