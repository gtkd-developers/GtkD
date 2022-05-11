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


module gsk.ClipNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node applying a rectangular clip to its single child node.
 */
public class ClipNode : RenderNode
{
	/** the main Gtk struct */
	protected GskClipNode* gskClipNode;

	/** Get the main Gtk struct */
	public GskClipNode* getClipNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskClipNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskClipNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskClipNode* gskClipNode, bool ownedRef = false)
	{
		this.gskClipNode = gskClipNode;
		super(cast(GskRenderNode*)gskClipNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_clip_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will clip the @child to the area
	 * given by @clip.
	 *
	 * Params:
	 *     child = The node to draw
	 *     clip = The clip to apply
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, Rect clip)
	{
		auto __p = gsk_clip_node_new((child is null) ? null : child.getRenderNodeStruct(), (clip is null) ? null : clip.getRectStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskClipNode*) __p);
	}

	/**
	 * Gets the child node that is getting clipped by the given @node.
	 *
	 * Returns: The child that is getting clipped
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_clip_node_get_child(cast(GskRenderNode*)gskClipNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the clip rectangle for @node.
	 *
	 * Returns: a clip rectangle
	 */
	public Rect getClip()
	{
		auto __p = gsk_clip_node_get_clip(cast(GskRenderNode*)gskClipNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rect)(cast(graphene_rect_t*) __p);
	}
}
