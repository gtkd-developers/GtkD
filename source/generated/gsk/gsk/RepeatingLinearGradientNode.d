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


module gsk.RepeatingLinearGradientNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a repeating linear gradient.
 */
public class RepeatingLinearGradientNode : RenderNode
{
	/** the main Gtk struct */
	protected GskRepeatingLinearGradientNode* gskRepeatingLinearGradientNode;

	/** Get the main Gtk struct */
	public GskRepeatingLinearGradientNode* getRepeatingLinearGradientNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRepeatingLinearGradientNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskRepeatingLinearGradientNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRepeatingLinearGradientNode* gskRepeatingLinearGradientNode, bool ownedRef = false)
	{
		this.gskRepeatingLinearGradientNode = gskRepeatingLinearGradientNode;
		super(cast(GskRenderNode*)gskRepeatingLinearGradientNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_repeating_linear_gradient_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will create a repeating linear gradient
	 * from the given points and color stops, and render that into the area
	 * given by @bounds.
	 *
	 * Params:
	 *     bounds = the rectangle to render the linear gradient into
	 *     start = the point at which the linear gradient will begin
	 *     end = the point at which the linear gradient will finish
	 *     colorStops = a pointer to an array of
	 *         `GskColorStop` defining the gradient. The offsets of all color stops
	 *         must be increasing. The first stop's offset must be >= 0 and the last
	 *         stop's offset must be <= 1.
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Rect bounds, Point start, Point end, GskColorStop[] colorStops)
	{
		auto __p = gsk_repeating_linear_gradient_node_new((bounds is null) ? null : bounds.getRectStruct(), (start is null) ? null : start.getPointStruct(), (end is null) ? null : end.getPointStruct(), colorStops.ptr, cast(size_t)colorStops.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskRepeatingLinearGradientNode*) __p);
	}
}
