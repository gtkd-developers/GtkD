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


module gsk.OutsetShadowNode;

private import gdk.RGBA;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.RoundedRect;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for an outset shadow.
 */
public class OutsetShadowNode : RenderNode
{
	/** the main Gtk struct */
	protected GskOutsetShadowNode* gskOutsetShadowNode;

	/** Get the main Gtk struct */
	public GskOutsetShadowNode* getOutsetShadowNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskOutsetShadowNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskOutsetShadowNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskOutsetShadowNode* gskOutsetShadowNode, bool ownedRef = false)
	{
		this.gskOutsetShadowNode = gskOutsetShadowNode;
		super(cast(GskRenderNode*)gskOutsetShadowNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_outset_shadow_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will render an outset shadow
	 * around the box given by @outline.
	 *
	 * Params:
	 *     outline = outline of the region surrounded by shadow
	 *     color = color of the shadow
	 *     dx = horizontal offset of shadow
	 *     dy = vertical offset of shadow
	 *     spread = how far the shadow spreads towards the inside
	 *     blurRadius = how much blur to apply to the shadow
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RoundedRect outline, RGBA color, float dx, float dy, float spread, float blurRadius)
	{
		auto __p = gsk_outset_shadow_node_new((outline is null) ? null : outline.getRoundedRectStruct(), (color is null) ? null : color.getRGBAStruct(), dx, dy, spread, blurRadius);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskOutsetShadowNode*) __p);
	}

	/**
	 * Retrieves the blur radius of the shadow.
	 *
	 * Returns: the blur radius, in pixels
	 */
	public float getBlurRadius()
	{
		return gsk_outset_shadow_node_get_blur_radius(cast(GskRenderNode*)gskOutsetShadowNode);
	}

	/**
	 * Retrieves the color of the outset shadow.
	 *
	 * Returns: a color
	 */
	public RGBA getColor()
	{
		auto __p = gsk_outset_shadow_node_get_color(cast(GskRenderNode*)gskOutsetShadowNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p);
	}

	/**
	 * Retrieves the horizontal offset of the outset shadow.
	 *
	 * Returns: an offset, in pixels
	 */
	public float getDx()
	{
		return gsk_outset_shadow_node_get_dx(cast(GskRenderNode*)gskOutsetShadowNode);
	}

	/**
	 * Retrieves the vertical offset of the outset shadow.
	 *
	 * Returns: an offset, in pixels
	 */
	public float getDy()
	{
		return gsk_outset_shadow_node_get_dy(cast(GskRenderNode*)gskOutsetShadowNode);
	}

	/**
	 * Retrieves the outline rectangle of the outset shadow.
	 *
	 * Returns: a rounded rectangle
	 */
	public RoundedRect getOutline()
	{
		auto __p = gsk_outset_shadow_node_get_outline(cast(GskRenderNode*)gskOutsetShadowNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Retrieves how much the shadow spreads outwards.
	 *
	 * Returns: the size of the shadow, in pixels
	 */
	public float getSpread()
	{
		return gsk_outset_shadow_node_get_spread(cast(GskRenderNode*)gskOutsetShadowNode);
	}
}
