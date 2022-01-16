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


module gsk.ShadowNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node drawing one or more shadows behind its single child node.
 */
public class ShadowNode : RenderNode
{
	/** the main Gtk struct */
	protected GskShadowNode* gskShadowNode;

	/** Get the main Gtk struct */
	public GskShadowNode* getShadowNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskShadowNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskShadowNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskShadowNode* gskShadowNode, bool ownedRef = false)
	{
		this.gskShadowNode = gskShadowNode;
		super(cast(GskRenderNode*)gskShadowNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_shadow_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will draw a @child with the given
	 * @shadows below it.
	 *
	 * Params:
	 *     child = The node to draw
	 *     shadows = The shadows to apply
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, GskShadow[] shadows)
	{
		auto __p = gsk_shadow_node_new((child is null) ? null : child.getRenderNodeStruct(), shadows.ptr, cast(size_t)shadows.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskShadowNode*) __p);
	}

	/**
	 * Retrieves the child `GskRenderNode` of the shadow @node.
	 *
	 * Returns: the child render node
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_shadow_node_get_child(cast(GskRenderNode*)gskShadowNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the number of shadows in the @node.
	 *
	 * Returns: the number of shadows.
	 */
	public size_t getNShadows()
	{
		return gsk_shadow_node_get_n_shadows(cast(GskRenderNode*)gskShadowNode);
	}

	/**
	 * Retrieves the shadow data at the given index @i.
	 *
	 * Params:
	 *     i = the given index
	 *
	 * Returns: the shadow data
	 */
	public GskShadow* getShadow(size_t i)
	{
		return gsk_shadow_node_get_shadow(cast(GskRenderNode*)gskShadowNode, i);
	}
}
