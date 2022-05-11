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


module gsk.ConicGradientNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a conic gradient.
 */
public class ConicGradientNode : RenderNode
{
	/** the main Gtk struct */
	protected GskConicGradientNode* gskConicGradientNode;

	/** Get the main Gtk struct */
	public GskConicGradientNode* getConicGradientNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskConicGradientNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskConicGradientNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskConicGradientNode* gskConicGradientNode, bool ownedRef = false)
	{
		this.gskConicGradientNode = gskConicGradientNode;
		super(cast(GskRenderNode*)gskConicGradientNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_conic_gradient_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that draws a conic gradient.
	 *
	 * The conic gradient
	 * starts around @center in the direction of @rotation. A rotation of 0 means
	 * that the gradient points up. Color stops are then added clockwise.
	 *
	 * Params:
	 *     bounds = the bounds of the node
	 *     center = the center of the gradient
	 *     rotation = the rotation of the gradient in degrees
	 *     colorStops = a pointer to an array of
	 *         `GskColorStop` defining the gradient. The offsets of all color stops
	 *         must be increasing. The first stop's offset must be >= 0 and the last
	 *         stop's offset must be <= 1.
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Rect bounds, Point center, float rotation, GskColorStop[] colorStops)
	{
		auto __p = gsk_conic_gradient_node_new((bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), rotation, colorStops.ptr, cast(size_t)colorStops.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskConicGradientNode*) __p);
	}

	/**
	 * Retrieves the angle for the gradient in radians, normalized in [0, 2 * PI].
	 *
	 * The angle is starting at the top and going clockwise, as expressed
	 * in the css specification:
	 *
	 * angle = 90 - gsk_conic_gradient_node_get_rotation()
	 *
	 * Returns: the angle for the gradient
	 *
	 * Since: 4.2
	 */
	public float getAngle()
	{
		return gsk_conic_gradient_node_get_angle(cast(GskRenderNode*)gskConicGradientNode);
	}

	/**
	 * Retrieves the center pointer for the gradient.
	 *
	 * Returns: the center point for the gradient
	 */
	public Point getCenter()
	{
		auto __p = gsk_conic_gradient_node_get_center(cast(GskRenderNode*)gskConicGradientNode);

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

		auto __p = gsk_conic_gradient_node_get_color_stops(cast(GskRenderNode*)gskConicGradientNode, &nStops);

		return __p[0 .. nStops];
	}

	/**
	 * Retrieves the number of color stops in the gradient.
	 *
	 * Returns: the number of color stops
	 */
	public size_t getNColorStops()
	{
		return gsk_conic_gradient_node_get_n_color_stops(cast(GskRenderNode*)gskConicGradientNode);
	}

	/**
	 * Retrieves the rotation for the gradient in degrees.
	 *
	 * Returns: the rotation for the gradient
	 */
	public float getRotation()
	{
		return gsk_conic_gradient_node_get_rotation(cast(GskRenderNode*)gskConicGradientNode);
	}
}
