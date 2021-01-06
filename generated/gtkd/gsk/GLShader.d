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


module gsk.GLShader;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.Vec3;
private import graphene.Vec4;
private import gsk.Renderer;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * An object representing a GL shader program.
 */
public class GLShader : ObjectG
{
	/** the main Gtk struct */
	protected GskGLShader* gskGLShader;

	/** Get the main Gtk struct */
	public GskGLShader* getGLShaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskGLShader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskGLShader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskGLShader* gskGLShader, bool ownedRef = false)
	{
		this.gskGLShader = gskGLShader;
		super(cast(GObject*)gskGLShader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_gl_shader_get_type();
	}

	/**
	 * Creates a #GskGLShader that will render pixels using the specified code.
	 *
	 * Params:
	 *     sourcecode = GLSL sourcecode for the shader, as a #GBytes
	 *
	 * Returns: A new #GskGLShader
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes sourcecode)
	{
		auto __p = gsk_gl_shader_new_from_bytes((sourcecode is null) ? null : sourcecode.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GskGLShader*) __p, true);
	}

	/**
	 * Creates a #GskGLShader that will render pixels using the specified code.
	 *
	 * Params:
	 *     resourcePath = path to a resource that contains the GLSL sourcecode for
	 *         the shader
	 *
	 * Returns: A new #GskGLShader
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string resourcePath)
	{
		auto __p = gsk_gl_shader_new_from_resource(Str.toStringz(resourcePath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_resource");
		}

		this(cast(GskGLShader*) __p, true);
	}

	/**
	 * Tries to compile the @shader for the given @renderer, and reports
	 * %FALSE with an error if there is a problem. You should use this
	 * function before relying on the shader for rendering and use a
	 * fallback with a simpler shader or without shaders if it fails.
	 *
	 * Note that this will modify the rendering state (for example
	 * change the current GL context) and requires the renderer to be
	 * set up. This means that the widget has to be realized. Commonly you
	 * want to call this from the realize signal of a widget, or during
	 * widget snapshot.
	 *
	 * Params:
	 *     renderer = a #GskRenderer
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool compile(Renderer renderer)
	{
		GError* err = null;

		auto __p = gsk_gl_shader_compile(gskGLShader, (renderer is null) ? null : renderer.getRendererStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Looks for a uniform by the name @name, and returns the index
	 * of the uniform, or -1 if it was not found.
	 *
	 * Params:
	 *     name = uniform name
	 *
	 * Returns: The index of the uniform, or -1
	 */
	public int findUniformByName(string name)
	{
		return gsk_gl_shader_find_uniform_by_name(gskGLShader, Str.toStringz(name));
	}

	/**
	 * Formats the uniform data as needed for feeding the named uniforms
	 * values into the shader. The argument list is a list of pairs of
	 * names, and values for the types that match the declared uniforms
	 * (i.e. double/int/guint/gboolean for primitive values and
	 * `graphene_vecN_t *` for vecN uniforms).
	 *
	 * It is an error to pass a uniform name that is not declared by the shader.
	 *
	 * Any uniforms of the shader that are not included in the argument list
	 * are zero-initialized.
	 *
	 * Params:
	 *     uniforms = name-Value pairs for the uniforms of @shader, ending
	 *         with a %NULL name
	 *
	 * Returns: A newly allocated block of data which can be
	 *     passed to gsk_gl_shader_node_new().
	 */
	public Bytes formatArgsVa(void* uniforms)
	{
		auto __p = gsk_gl_shader_format_args_va(gskGLShader, uniforms);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of bool type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *
	 * Returns: The value
	 */
	public bool getArgBool(Bytes args, int idx)
	{
		return gsk_gl_shader_get_arg_bool(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx) != 0;
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of float type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *
	 * Returns: The value
	 */
	public float getArgFloat(Bytes args, int idx)
	{
		return gsk_gl_shader_get_arg_float(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx);
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of int type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *
	 * Returns: The value
	 */
	public int getArgInt(Bytes args, int idx)
	{
		return gsk_gl_shader_get_arg_int(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx);
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of uint type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *
	 * Returns: The value
	 */
	public uint getArgUint(Bytes args, int idx)
	{
		return gsk_gl_shader_get_arg_uint(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx);
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of vec2 type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *     outValue = location to store the uniform value in
	 */
	public void getArgVec2(Bytes args, int idx, Vec2 outValue)
	{
		gsk_gl_shader_get_arg_vec2(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx, (outValue is null) ? null : outValue.getVec2Struct());
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of vec3 type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *     outValue = location to store the uniform value in
	 */
	public void getArgVec3(Bytes args, int idx, Vec3 outValue)
	{
		gsk_gl_shader_get_arg_vec3(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx, (outValue is null) ? null : outValue.getVec3Struct());
	}

	/**
	 * Gets the value of the uniform @idx in the @args block.
	 * The uniform must be of vec4 type.
	 *
	 * Params:
	 *     args = uniform arguments
	 *     idx = index of the uniform
	 *     outValue = location to store set the uniform value in
	 */
	public void getArgVec4(Bytes args, int idx, Vec4 outValue)
	{
		gsk_gl_shader_get_arg_vec4(gskGLShader, (args is null) ? null : args.getBytesStruct(), idx, (outValue is null) ? null : outValue.getVec4Struct());
	}

	/**
	 * Get the size of the data block used to specify arguments for this shader.
	 *
	 * Returns: The size of the data block
	 */
	public size_t getArgsSize()
	{
		return gsk_gl_shader_get_args_size(gskGLShader);
	}

	/**
	 * Returns the number of textures that the shader requires.
	 *
	 * This can be used to check that the a passed shader works
	 * in your usecase. It is determined by looking at the highest
	 * u_textureN value that the shader defines.
	 *
	 * Returns: The number of texture inputs required by @shader
	 */
	public int getNTextures()
	{
		return gsk_gl_shader_get_n_textures(gskGLShader);
	}

	/**
	 * Get the number of declared uniforms for this shader.
	 *
	 * Returns: The number of declared uniforms
	 */
	public int getNUniforms()
	{
		return gsk_gl_shader_get_n_uniforms(gskGLShader);
	}

	/**
	 * Gets the resource path for the GLSL sourcecode being used
	 * to render this shader.
	 *
	 * Returns: The resource path for the shader,
	 *     or %NULL if none.
	 */
	public string getResource()
	{
		return Str.toString(gsk_gl_shader_get_resource(gskGLShader));
	}

	/**
	 * Gets the GLSL sourcecode being used to render this shader.
	 *
	 * Returns: The source code for the shader
	 */
	public Bytes getSource()
	{
		auto __p = gsk_gl_shader_get_source(gskGLShader);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p);
	}

	/**
	 * Get the name of the declared uniform for this shader at index @idx.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *
	 * Returns: The name of the declared uniform
	 */
	public string getUniformName(int idx)
	{
		return Str.toString(gsk_gl_shader_get_uniform_name(gskGLShader, idx));
	}

	/**
	 * Get the offset into the data block where data for this uniforms is stored.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *
	 * Returns: The data offset
	 */
	public int getUniformOffset(int idx)
	{
		return gsk_gl_shader_get_uniform_offset(gskGLShader, idx);
	}

	/**
	 * Get the type of the declared uniform for this shader at index @idx.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *
	 * Returns: The type of the declared uniform
	 */
	public GskGLUniformType getUniformType(int idx)
	{
		return gsk_gl_shader_get_uniform_type(gskGLShader, idx);
	}
}
