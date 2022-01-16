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


module gsk.GLShaderNode;

private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Rect;
private import gsk.GLShader;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node using a GL shader when drawing its children nodes.
 */
public class GLShaderNode : RenderNode
{
	/** the main Gtk struct */
	protected GskGLShaderNode* gskGLShaderNode;

	/** Get the main Gtk struct */
	public GskGLShaderNode* getGLShaderNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskGLShaderNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskGLShaderNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskGLShaderNode* gskGLShaderNode, bool ownedRef = false)
	{
		this.gskGLShaderNode = gskGLShaderNode;
		super(cast(GskRenderNode*)gskGLShaderNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_gl_shader_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will render the given @shader into the
	 * area given by @bounds.
	 *
	 * The @args is a block of data to use for uniform input, as per types and
	 * offsets defined by the @shader. Normally this is generated by
	 * [method@Gsk.GLShader.format_args] or [struct@Gsk.ShaderArgsBuilder].
	 *
	 * See [class@Gsk.GLShader] for details about how the shader should be written.
	 *
	 * All the children will be rendered into textures (if they aren't already
	 * `GskTextureNodes`, which will be used directly). These textures will be
	 * sent as input to the shader.
	 *
	 * If the renderer doesn't support GL shaders, or if there is any problem
	 * when compiling the shader, then the node will draw pink. You should use
	 * [method@Gsk.GLShader.compile] to ensure the @shader will work for the
	 * renderer before using it.
	 *
	 * Params:
	 *     shader = the `GskGLShader`
	 *     bounds = the rectangle to render the shader into
	 *     args = Arguments for the uniforms
	 *     children = array of child nodes, these will
	 *         be rendered to textures and used as input.
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLShader shader, Rect bounds, Bytes args, RenderNode[] children)
	{
		GskRenderNode*[] childrenArray = new GskRenderNode*[children.length];
		for ( int i = 0; i < children.length; i++ )
		{
			childrenArray[i] = children[i].getRenderNodeStruct();
		}

		auto __p = gsk_gl_shader_node_new((shader is null) ? null : shader.getGLShaderStruct(), (bounds is null) ? null : bounds.getRectStruct(), (args is null) ? null : args.getBytesStruct(), childrenArray.ptr, cast(uint)children.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskGLShaderNode*) __p);
	}

	/**
	 * Gets args for the node.
	 *
	 * Returns: A `GBytes` with the uniform arguments
	 */
	public Bytes getArgs()
	{
		auto __p = gsk_gl_shader_node_get_args(cast(GskRenderNode*)gskGLShaderNode);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p);
	}

	/**
	 * Gets one of the children.
	 *
	 * Params:
	 *     idx = the position of the child to get
	 *
	 * Returns: the @idx'th child of @node
	 */
	public RenderNode getChild(uint idx)
	{
		auto __p = gsk_gl_shader_node_get_child(cast(GskRenderNode*)gskGLShaderNode, idx);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p);
	}

	/**
	 * Returns the number of children
	 *
	 * Returns: The number of children
	 */
	public uint getNChildren()
	{
		return gsk_gl_shader_node_get_n_children(cast(GskRenderNode*)gskGLShaderNode);
	}

	/**
	 * Gets shader code for the node.
	 *
	 * Returns: the `GskGLShader` shader
	 */
	public GLShader getShader()
	{
		auto __p = gsk_gl_shader_node_get_shader(cast(GskRenderNode*)gskGLShaderNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GLShader)(cast(GskGLShader*) __p);
	}
}
