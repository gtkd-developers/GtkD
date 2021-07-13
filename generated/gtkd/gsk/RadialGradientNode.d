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


module gsk.RadialGradientNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a radial gradient.
 */
public class RadialGradientNode : RenderNode
{
	/** the main Gtk struct */
	protected GskRadialGradientNode* gskRadialGradientNode;

	/** Get the main Gtk struct */
	public GskRadialGradientNode* getRadialGradientNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRadialGradientNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskRadialGradientNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRadialGradientNode* gskRadialGradientNode, bool ownedRef = false)
	{
		this.gskRadialGradientNode = gskRadialGradientNode;
		super(cast(GskRenderNode*)gskRadialGradientNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_radial_gradient_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that draws a radial gradient.
	 *
	 * The radial gradient
	 * starts around @center. The size of the gradient is dictated by @hradius
	 * in horizontal orientation and by @vradius in vertial orientation.
	 *
	 * Params:
	 *     bounds = the bounds of the node
	 *     center = the center of the gradient
	 *     hradius = the horizontal radius
	 *     vradius = the vertical radius
	 *     start = a percentage >= 0 that defines the start of the gradient around @center
	 *     end = a percentage >= 0 that defines the end of the gradient around @center
	 *     colorStops = a pointer to an array of
	 *         `GskColorStop` defining the gradient. The offsets of all color stops
	 *         must be increasing. The first stop's offset must be >= 0 and the last
	 *         stop's offset must be <= 1.
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Rect bounds, Point center, float hradius, float vradius, float start, float end, GskColorStop[] colorStops)
	{
		auto __p = gsk_radial_gradient_node_new((bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), hradius, vradius, start, end, colorStops.ptr, cast(size_t)colorStops.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskRadialGradientNode*) __p);
	}

	/**
	 * Retrieves the center pointer for the gradient.
	 *
	 * Returns: the center point for the gradient
	 */
	public Point getCenter()
	{
		auto __p = gsk_radial_gradient_node_get_center(cast(GskRenderNode*)gskRadialGradientNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}

	/**
	 * Retrieves the color stops in the gradient.
	 *
	 * Returns: the color stops in the gradient
	 */
	public GskColorStop[] getColorStops()
	{
		size_t nStops;

		auto __p = gsk_radial_gradient_node_get_color_stops(cast(GskRenderNode*)gskRadialGradientNode, &nStops);

		return __p[0 .. nStops];
	}

	/**
	 * Retrieves the end value for the gradient.
	 *
	 * Returns: the end value for the gradient
	 */
	public float getEnd()
	{
		return gsk_radial_gradient_node_get_end(cast(GskRenderNode*)gskRadialGradientNode);
	}

	/**
	 * Retrieves the horizonal radius for the gradient.
	 *
	 * Returns: the horizontal radius for the gradient
	 */
	public float getHradius()
	{
		return gsk_radial_gradient_node_get_hradius(cast(GskRenderNode*)gskRadialGradientNode);
	}

	/**
	 * Retrieves the number of color stops in the gradient.
	 *
	 * Returns: the number of color stops
	 */
	public size_t getNColorStops()
	{
		return gsk_radial_gradient_node_get_n_color_stops(cast(GskRenderNode*)gskRadialGradientNode);
	}

	/**
	 * Retrieves the start value for the gradient.
	 *
	 * Returns: the start value for the gradient
	 */
	public float getStart()
	{
		return gsk_radial_gradient_node_get_start(cast(GskRenderNode*)gskRadialGradientNode);
	}

	/**
	 * Retrieves the vertical radius for the gradient.
	 *
	 * Returns: the vertical radius for the gradient
	 */
	public float getVradius()
	{
		return gsk_radial_gradient_node_get_vradius(cast(GskRenderNode*)gskRadialGradientNode);
	}
}
