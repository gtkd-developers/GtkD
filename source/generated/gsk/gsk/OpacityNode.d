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


module gsk.OpacityNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node controlling the opacity of its single child node.
 */
public class OpacityNode : RenderNode
{
	/** the main Gtk struct */
	protected GskOpacityNode* gskOpacityNode;

	/** Get the main Gtk struct */
	public GskOpacityNode* getOpacityNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskOpacityNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskOpacityNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskOpacityNode* gskOpacityNode, bool ownedRef = false)
	{
		this.gskOpacityNode = gskOpacityNode;
		super(cast(GskRenderNode*)gskOpacityNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_opacity_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will drawn the @child with reduced
	 * @opacity.
	 *
	 * Params:
	 *     child = The node to draw
	 *     opacity = The opacity to apply
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, float opacity)
	{
		auto __p = gsk_opacity_node_new((child is null) ? null : child.getRenderNodeStruct(), opacity);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskOpacityNode*) __p);
	}

	/**
	 * Gets the child node that is getting opacityed by the given @node.
	 *
	 * Returns: The child that is getting opacityed
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_opacity_node_get_child(cast(GskRenderNode*)gskOpacityNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Gets the transparency factor for an opacity node.
	 *
	 * Returns: the opacity factor
	 */
	public float getOpacity()
	{
		return gsk_opacity_node_get_opacity(cast(GskRenderNode*)gskOpacityNode);
	}
}
