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


module gsk.BorderNode;

private import gdk.RGBA;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.RenderNode;
private import gsk.RoundedRect;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a border.
 */
public class BorderNode : RenderNode
{
	/** the main Gtk struct */
	protected GskBorderNode* gskBorderNode;

	/** Get the main Gtk struct */
	public GskBorderNode* getBorderNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskBorderNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskBorderNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskBorderNode* gskBorderNode, bool ownedRef = false)
	{
		this.gskBorderNode = gskBorderNode;
		super(cast(GskRenderNode*)gskBorderNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_border_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will stroke a border rectangle inside the
	 * given @outline.
	 *
	 * The 4 sides of the border can have different widths and colors.
	 *
	 * Params:
	 *     outline = a `GskRoundedRect` describing the outline of the border
	 *     borderWidth = the stroke width of the border on
	 *         the top, right, bottom and left side respectively.
	 *     borderColor = the color used on the top, right,
	 *         bottom and left side.
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RoundedRect outline, float[4] borderWidth, RGBA[4] borderColor)
	{
		GdkRGBA[] borderColorArray = new GdkRGBA[borderColor.length];
		for ( int i = 0; i < borderColor.length; i++ )
		{
			borderColorArray[i] = *(borderColor[i].getRGBAStruct());
		}

		auto __p = gsk_border_node_new((outline is null) ? null : outline.getRoundedRectStruct(), borderWidth.ptr, borderColorArray.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskBorderNode*) __p);
	}

	/**
	 * Retrieves the colors of the border.
	 *
	 * Returns: an array of 4 `GdkRGBA` structs
	 *     for the top, right, bottom and left color of the border
	 */
	public RGBA getColors()
	{
		auto __p = gsk_border_node_get_colors(cast(GskRenderNode*)gskBorderNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RGBA)(cast(GdkRGBA*) __p);
	}

	/**
	 * Retrieves the outline of the border.
	 *
	 * Returns: the outline of the border
	 */
	public RoundedRect getOutline()
	{
		auto __p = gsk_border_node_get_outline(cast(GskRenderNode*)gskBorderNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Retrieves the stroke widths of the border.
	 *
	 * Returns: an array of 4 floats
	 *     for the top, right, bottom and left stroke width of the border,
	 *     respectively
	 */
	public float[4] getWidths()
	{
		auto __p = gsk_border_node_get_widths(cast(GskRenderNode*)gskBorderNode);

		return __p[0 .. 4];
	}
}
