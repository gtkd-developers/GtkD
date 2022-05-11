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


module gsk.ColorNode;

private import gdk.RGBA;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a solid color.
 */
public class ColorNode : RenderNode
{
	/** the main Gtk struct */
	protected GskColorNode* gskColorNode;

	/** Get the main Gtk struct */
	public GskColorNode* getColorNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskColorNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskColorNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskColorNode* gskColorNode, bool ownedRef = false)
	{
		this.gskColorNode = gskColorNode;
		super(cast(GskRenderNode*)gskColorNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_color_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will render the color specified by @rgba into
	 * the area given by @bounds.
	 *
	 * Params:
	 *     rgba = a `GdkRGBA` specifying a color
	 *     bounds = the rectangle to render the color into
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RGBA rgba, Rect bounds)
	{
		auto __p = gsk_color_node_new((rgba is null) ? null : rgba.getRGBAStruct(), (bounds is null) ? null : bounds.getRectStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskColorNode*) __p);
	}

	/**
	 * Retrieves the color of the given @node.
	 *
	 * Returns: the color of the node
	 */
	public RGBA getColor()
	{
		auto __p = gsk_color_node_get_color(cast(GskRenderNode*)gskColorNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p);
	}
}
