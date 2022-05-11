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


module gsk.RenderNode;

private import cairo.Context;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import graphene.Rect;
private import gsk.c.functions;
public  import gsk.c.types;
private import linker.Loader;


/**
 * `GskRenderNode` is the basic block in a scene graph to be
 * rendered using [class@Gsk.Renderer].
 * 
 * Each node has a parent, except the top-level node; each node may have
 * children nodes.
 * 
 * Each node has an associated drawing surface, which has the size of
 * the rectangle set when creating it.
 * 
 * Render nodes are meant to be transient; once they have been associated
 * to a [class@Gsk.Renderer] it's safe to release any reference you have on
 * them. All [class@Gsk.RenderNode]s are immutable, you can only specify their
 * properties during construction.
 */
public class RenderNode
{
	/** the main Gtk struct */
	protected GskRenderNode* gskRenderNode;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GskRenderNode* getRenderNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRenderNode;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gskRenderNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRenderNode* gskRenderNode, bool ownedRef = false)
	{
		this.gskRenderNode = gskRenderNode;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSK[0]) && ownedRef )
			gsk_render_node_unref(gskRenderNode);
	}


	/** */
	public static GType getType()
	{
		return gsk_render_node_get_type();
	}

	/**
	 * Loads data previously created via [method@Gsk.RenderNode.serialize].
	 *
	 * For a discussion of the supported format, see that function.
	 *
	 * Params:
	 *     bytes = the bytes containing the data
	 *     errorFunc = Callback on parsing errors
	 *     userData = user_data for @error_func
	 *
	 * Returns: a new `GskRenderNode`
	 */
	public static RenderNode deserialize(Bytes bytes, GskParseErrorFunc errorFunc, void* userData)
	{
		auto __p = gsk_render_node_deserialize((bytes is null) ? null : bytes.getBytesStruct(), errorFunc, userData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/**
	 * Draw the contents of @node to the given cairo context.
	 *
	 * Typically, you'll use this function to implement fallback rendering
	 * of `GskRenderNode`s on an intermediate Cairo context, instead of using
	 * the drawing context associated to a [class@Gdk.Surface]'s rendering buffer.
	 *
	 * For advanced nodes that cannot be supported using Cairo, in particular
	 * for nodes doing 3D operations, this function may fail.
	 *
	 * Params:
	 *     cr = cairo context to draw to
	 */
	public void draw(Context cr)
	{
		gsk_render_node_draw(gskRenderNode, (cr is null) ? null : cr.getContextStruct());
	}

	/**
	 * Retrieves the boundaries of the @node.
	 *
	 * The node will not draw outside of its boundaries.
	 *
	 * Params:
	 *     bounds = return location for the boundaries
	 */
	public void getBounds(out Rect bounds)
	{
		graphene_rect_t* outbounds = sliceNew!graphene_rect_t();

		gsk_render_node_get_bounds(gskRenderNode, outbounds);

		bounds = ObjectG.getDObject!(Rect)(outbounds, true);
	}

	/**
	 * Returns the type of the @node.
	 *
	 * Returns: the type of the `GskRenderNode`
	 */
	public GskRenderNodeType getNodeType()
	{
		return gsk_render_node_get_node_type(gskRenderNode);
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given `GskRenderNode`.
	 *
	 * Returns: the `GskRenderNode` with an additional reference
	 */
	public RenderNode ref_()
	{
		auto __p = gsk_render_node_ref(gskRenderNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/**
	 * Serializes the @node for later deserialization via
	 * gsk_render_node_deserialize(). No guarantees are made about the format
	 * used other than that the same version of GTK will be able to deserialize
	 * the result of a call to gsk_render_node_serialize() and
	 * gsk_render_node_deserialize() will correctly reject files it cannot open
	 * that were created with previous versions of GTK.
	 *
	 * The intended use of this functions is testing, benchmarking and debugging.
	 * The format is not meant as a permanent storage format.
	 *
	 * Returns: a `GBytes` representing the node.
	 */
	public Bytes serialize()
	{
		auto __p = gsk_render_node_serialize(gskRenderNode);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Releases a reference on the given `GskRenderNode`.
	 *
	 * If the reference was the last, the resources associated to the @node are
	 * freed.
	 */
	public void unref()
	{
		gsk_render_node_unref(gskRenderNode);
	}

	/**
	 * This function is equivalent to calling [method@Gsk.RenderNode.serialize]
	 * followed by [func@GLib.file_set_contents].
	 *
	 * See those two functions for details on the arguments.
	 *
	 * It is mostly intended for use inside a debugger to quickly dump a render
	 * node to a file for later inspection.
	 *
	 * Params:
	 *     filename = the file to save it to.
	 *
	 * Returns: %TRUE if saving was successful
	 *
	 * Throws: GException on failure.
	 */
	public bool writeToFile(string filename)
	{
		GError* err = null;

		auto __p = gsk_render_node_write_to_file(gskRenderNode, Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
