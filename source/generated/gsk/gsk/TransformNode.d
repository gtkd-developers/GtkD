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


module gsk.TransformNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.Transform;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node applying a `GskTransform` to its single child node.
 */
public class TransformNode : RenderNode
{
	/** the main Gtk struct */
	protected GskTransformNode* gskTransformNode;

	/** Get the main Gtk struct */
	public GskTransformNode* getTransformNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskTransformNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskTransformNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskTransformNode* gskTransformNode, bool ownedRef = false)
	{
		this.gskTransformNode = gskTransformNode;
		super(cast(GskRenderNode*)gskTransformNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_transform_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will transform the given @child
	 * with the given @transform.
	 *
	 * Params:
	 *     child = The node to transform
	 *     transform = The transform to apply
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, Transform transform)
	{
		auto __p = gsk_transform_node_new((child is null) ? null : child.getRenderNodeStruct(), (transform is null) ? null : transform.getTransformStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskTransformNode*) __p);
	}

	/**
	 * Gets the child node that is getting transformed by the given @node.
	 *
	 * Returns: The child that is getting transformed
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_transform_node_get_child(cast(GskRenderNode*)gskTransformNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the `GskTransform` used by the @node.
	 *
	 * Returns: a `GskTransform`
	 */
	public Transform getTransform()
	{
		auto __p = gsk_transform_node_get_transform(cast(GskRenderNode*)gskTransformNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p);
	}
}
