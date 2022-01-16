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


module gsk.RepeatingRadialGradientNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a repeating radial gradient.
 */
public class RepeatingRadialGradientNode : RenderNode
{
	/** the main Gtk struct */
	protected GskRepeatingRadialGradientNode* gskRepeatingRadialGradientNode;

	/** Get the main Gtk struct */
	public GskRepeatingRadialGradientNode* getRepeatingRadialGradientNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRepeatingRadialGradientNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskRepeatingRadialGradientNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRepeatingRadialGradientNode* gskRepeatingRadialGradientNode, bool ownedRef = false)
	{
		this.gskRepeatingRadialGradientNode = gskRepeatingRadialGradientNode;
		super(cast(GskRenderNode*)gskRepeatingRadialGradientNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_repeating_radial_gradient_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that draws a repeating radial gradient.
	 *
	 * The radial gradient starts around @center. The size of the gradient
	 * is dictated by @hradius in horizontal orientation and by @vradius
	 * in vertial orientation.
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
		auto __p = gsk_repeating_radial_gradient_node_new((bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), hradius, vradius, start, end, colorStops.ptr, cast(size_t)colorStops.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskRepeatingRadialGradientNode*) __p);
	}
}
