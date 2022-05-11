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


module gsk.BlurNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node applying a blur effect to its single child.
 */
public class BlurNode : RenderNode
{
	/** the main Gtk struct */
	protected GskBlurNode* gskBlurNode;

	/** Get the main Gtk struct */
	public GskBlurNode* getBlurNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskBlurNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskBlurNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskBlurNode* gskBlurNode, bool ownedRef = false)
	{
		this.gskBlurNode = gskBlurNode;
		super(cast(GskRenderNode*)gskBlurNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_blur_node_get_type();
	}

	/**
	 * Creates a render node that blurs the child.
	 *
	 * Params:
	 *     child = the child node to blur
	 *     radius = the blur radius. Must be positive
	 *
	 * Returns: a new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, float radius)
	{
		auto __p = gsk_blur_node_new((child is null) ? null : child.getRenderNodeStruct(), radius);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskBlurNode*) __p);
	}

	/**
	 * Retrieves the child `GskRenderNode` of the blur @node.
	 *
	 * Returns: the blurred child node
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_blur_node_get_child(cast(GskRenderNode*)gskBlurNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the blur radius of the @node.
	 *
	 * Returns: the blur radius
	 */
	public float getRadius()
	{
		return gsk_blur_node_get_radius(cast(GskRenderNode*)gskBlurNode);
	}
}
