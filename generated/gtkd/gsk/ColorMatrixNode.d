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


module gsk.ColorMatrixNode;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Matrix;
private import graphene.Vec4;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node controlling the color matrix of its single child node.
 */
public class ColorMatrixNode : RenderNode
{
	/** the main Gtk struct */
	protected GskColorMatrixNode* gskColorMatrixNode;

	/** Get the main Gtk struct */
	public GskColorMatrixNode* getColorMatrixNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskColorMatrixNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskColorMatrixNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskColorMatrixNode* gskColorMatrixNode, bool ownedRef = false)
	{
		this.gskColorMatrixNode = gskColorMatrixNode;
		super(cast(GskRenderNode*)gskColorMatrixNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_color_matrix_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will drawn the @child with
	 * @color_matrix.
	 *
	 * In particular, the node will transform the operation
	 *
	 * pixel = color_matrix * pixel + color_offset
	 *
	 * for every pixel.
	 *
	 * Params:
	 *     child = The node to draw
	 *     colorMatrix = The matrix to apply
	 *     colorOffset = Values to add to the color
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RenderNode child, Matrix colorMatrix, Vec4 colorOffset)
	{
		auto __p = gsk_color_matrix_node_new((child is null) ? null : child.getRenderNodeStruct(), (colorMatrix is null) ? null : colorMatrix.getMatrixStruct(), (colorOffset is null) ? null : colorOffset.getVec4Struct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskColorMatrixNode*) __p);
	}

	/**
	 * Gets the child node that is getting its colors modified by the given @node.
	 *
	 * Returns: The child that is getting its colors modified
	 */
	public RenderNode getChild()
	{
		auto __p = gsk_color_matrix_node_get_child(cast(GskRenderNode*)gskColorMatrixNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Retrieves the color matrix used by the @node.
	 *
	 * Returns: a 4x4 color matrix
	 */
	public Matrix getColorMatrix()
	{
		auto __p = gsk_color_matrix_node_get_color_matrix(cast(GskRenderNode*)gskColorMatrixNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Matrix)(cast(graphene_matrix_t*) __p);
	}

	/**
	 * Retrieves the color offset used by the @node.
	 *
	 * Returns: a color vector
	 */
	public Vec4 getColorOffset()
	{
		auto __p = gsk_color_matrix_node_get_color_offset(cast(GskRenderNode*)gskColorMatrixNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vec4)(cast(graphene_vec4_t*) __p);
	}
}
