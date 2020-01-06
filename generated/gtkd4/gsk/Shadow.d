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


module gsk.Shadow;

private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/** */
public struct Shadow
{

	/** */
	public static RenderNode nodeGetChild(RenderNode node)
	{
		auto __p = gsk_shadow_node_get_child((node is null) ? null : node.getRenderNodeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/** */
	public static size_t nodeGetNShadows(RenderNode node)
	{
		return gsk_shadow_node_get_n_shadows((node is null) ? null : node.getRenderNodeStruct());
	}

	/**
	 * Creates a #GskRenderNode that will draw a @child with the given
	 * @shadows below it.
	 *
	 * Params:
	 *     child = The node to draw
	 *     shadows = The shadows to apply
	 *
	 * Returns: A new #GskRenderNode
	 */
	public static RenderNode nodeNew(RenderNode child, GskShadow[] shadows)
	{
		auto __p = gsk_shadow_node_new((child is null) ? null : child.getRenderNodeStruct(), shadows.ptr, cast(size_t)shadows.length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/** */
	public static GskShadow* nodePeekShadow(RenderNode node, size_t i)
	{
		return gsk_shadow_node_peek_shadow((node is null) ? null : node.getRenderNodeStruct(), i);
	}
}
