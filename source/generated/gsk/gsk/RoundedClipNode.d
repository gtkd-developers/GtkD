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


module gsk.RoundedClipNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.RoundedRect;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node applying a rounded rectangle clip to its single child.
 */
public class RoundedClipNode : RenderNode
{
	/** the main Gtk struct */
	protected GskRoundedClipNode* gskRoundedClipNode;

	/** Get the main Gtk struct */
	public GskRoundedClipNode* getRoundedClipNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRoundedClipNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskRoundedClipNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRoundedClipNode* gskRoundedClipNode, bool ownedRef = false)
	{
		this.gskRoundedClipNode = gskRoundedClipNode;
		super(cast(GskRenderNode*)gskRoundedClipNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_rounded_clip_node_get_type();
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
	public this(RenderNode child, RoundedRect clip)
	{
		auto __p = gsk_rounded_clip_node_new((child is null) ? null : child.getRenderNodeStruct(), (clip is null) ? null : clip.getRoundedRectStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskRoundedClipNode*) __p);
	}

	/**
	 * Gets the child node that is getting clipped by the given @node.
	 *
	 * Returns: The child that is getting clipped
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_rounded_clip_node_get_child(cast(GskRenderNode*)gskRoundedClipNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the rounded rectangle used to clip the contents of the @node.
	 *
	 * Returns: a rounded rectangle
	 */
	public RoundedRect getClip()
	{
		auto __p = gsk_rounded_clip_node_get_clip(cast(GskRenderNode*)gskRoundedClipNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}
}
