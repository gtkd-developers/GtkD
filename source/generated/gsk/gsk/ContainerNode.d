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


module gsk.ContainerNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node that can contain other render nodes.
 */
public class ContainerNode : RenderNode
{
	/** the main Gtk struct */
	protected GskContainerNode* gskContainerNode;

	/** Get the main Gtk struct */
	public GskContainerNode* getContainerNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskContainerNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskContainerNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskContainerNode* gskContainerNode, bool ownedRef = false)
	{
		this.gskContainerNode = gskContainerNode;
		super(cast(GskRenderNode*)gskContainerNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_container_node_get_type();
	}

	/**
	 * Creates a new `GskRenderNode` instance for holding the given @children.
	 *
	 * The new node will acquire a reference to each of the children.
	 *
	 * Params:
	 *     children = The children of the node
	 *
	 * Returns: the new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode[] children)
	{
		GskRenderNode*[] childrenArray = new GskRenderNode*[children.length];
		for ( int i = 0; i < children.length; i++ )
		{
			childrenArray[i] = children[i].getRenderNodeStruct();
		}

		auto __p = gsk_container_node_new(childrenArray.ptr, cast(uint)children.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskContainerNode*) __p);
	}

	/**
	 * Gets one of the children of @container.
	 *
	 * Params:
	 *     idx = the position of the child to get
	 *
	 * Returns: the @idx'th child of @container
	 */
	public RenderNode getChild(uint idx)
	{
		auto __p = gsk_container_node_get_child(cast(GskRenderNode*)gskContainerNode, idx);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the number of direct children of @node.
	 *
	 * Returns: the number of children of the `GskRenderNode`
	 */
	public uint getNChildren()
	{
		return gsk_container_node_get_n_children(cast(GskRenderNode*)gskContainerNode);
	}
}
