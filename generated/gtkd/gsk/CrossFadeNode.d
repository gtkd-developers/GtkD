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


module gsk.CrossFadeNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node cross fading between two child nodes.
 */
public class CrossFadeNode : RenderNode
{
	/** the main Gtk struct */
	protected GskCrossFadeNode* gskCrossFadeNode;

	/** Get the main Gtk struct */
	public GskCrossFadeNode* getCrossFadeNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskCrossFadeNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskCrossFadeNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskCrossFadeNode* gskCrossFadeNode, bool ownedRef = false)
	{
		this.gskCrossFadeNode = gskCrossFadeNode;
		super(cast(GskRenderNode*)gskCrossFadeNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_cross_fade_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will do a cross-fade between @start and @end.
	 *
	 * Params:
	 *     start = The start node to be drawn
	 *     end = The node to be cross_fadeed onto the @start node
	 *     progress = How far the fade has progressed from start to end. The value will
	 *         be clamped to the range [0 ... 1]
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode start, RenderNode end, float progress)
	{
		auto __p = gsk_cross_fade_node_new((start is null) ? null : start.getRenderNodeStruct(), (end is null) ? null : end.getRenderNodeStruct(), progress);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskCrossFadeNode*) __p);
	}

	/**
	 * Retrieves the child `GskRenderNode` at the end of the cross-fade.
	 *
	 * Returns: a `GskRenderNode`
	 */
	public RenderNode getEndChild()
	{
		auto __p = gsk_cross_fade_node_get_end_child(cast(GskRenderNode*)gskCrossFadeNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the progress value of the cross fade.
	 *
	 * Returns: the progress value, between 0 and 1
	 */
	public float getProgress()
	{
		return gsk_cross_fade_node_get_progress(cast(GskRenderNode*)gskCrossFadeNode);
	}

	/**
	 * Retrieves the child `GskRenderNode` at the beginning of the cross-fade.
	 *
	 * Returns: a `GskRenderNode`
	 */
	public RenderNode getStartChild()
	{
		auto __p = gsk_cross_fade_node_get_start_child(cast(GskRenderNode*)gskCrossFadeNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}
}
