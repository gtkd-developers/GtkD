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
private import glib.c.functions;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.Vec3;
private import graphene.Vec4;
private import gsk.Renderer;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A `GskGLShader` is a snippet of GLSL that is meant to run in the
 * fragment shader of the rendering pipeline.
 * 
 * A fragment shader gets the coordinates being rendered as input and
 * produces the pixel values for that particular pixel. Additionally,
 * the shader can declare a set of other input arguments, called
 * uniforms (as they are uniform over all the calls to your shader in
 * each instance of use). A shader can also receive up to 4
 * textures that it can use as input when producing the pixel data.
 * 
 * `GskGLShader` is usually used with gtk_snapshot_push_gl_shader()
 * to produce a [class@Gsk.GLShaderNode] in the rendering hierarchy,
 * and then its input textures are constructed by rendering the child
 * nodes to textures before rendering the shader node itself. (You can
 * pass texture nodes as children if you want to directly use a texture
 * as input).
 * 
 * The actual shader code is GLSL code that gets combined with
 * some other code into the fragment shader. Since the exact
 * capabilities of the GPU driver differs between different OpenGL
 * drivers and hardware, GTK adds some defines that you can use
 * to ensure your GLSL code runs on as many drivers as it can.
 * 
 * If the OpenGL driver is GLES, then the shader language version
 * is set to 100, and GSK_GLES will be defined in the shader.
 * 
 * Otherwise, if the OpenGL driver does not support the 3.2 core profile,
 * then the shader will run with language version 110 for GL2 and 130 for GL3,
 * and GSK_LEGACY will be defined in the shader.
 * 
 * If the OpenGL driver supports the 3.2 code profile, it will be used,
 * the shader language version is set to 150, and GSK_GL3 will be defined
 * in the shader.
 * 
 * The main function the shader must implement is:
 * 
 * ```glsl
 * void mainImage(out vec4 fragColor,
 * in vec2 fragCoord,
 * in vec2 resolution,
 * in vec2 uv)
 * ```
 * 
 * Where the input @fragCoord is the coordinate of the pixel we're
 * currently rendering, relative to the boundary rectangle that was
 * specified in the `GskGLShaderNode`, and @resolution is the width and
 * height of that rectangle. This is in the typical GTK coordinate
 * system with the origin in the top left. @uv contains the u and v
 * coordinates that can be used to index a texture at the
 * corresponding point. These coordinates are in the [0..1]x[0..1]
 * region, with 0, 0 being in the lower left corder (which is typical
 * for OpenGL).
 * 
 * The output @fragColor should be a RGBA color (with
 * premultiplied alpha) that will be used as the output for the
 * specified pixel location. Note that this output will be
 * automatically clipped to the clip region of the glshader node.
 * 
 * In addition to the function arguments the shader can define
 * up to 4 uniforms for textures which must be called u_textureN
 * (i.e. u_texture1 to u_texture4) as well as any custom uniforms
 * you want of types int, uint, bool, float, vec2, vec3 or vec4.
 * 
 * All textures sources contain premultiplied alpha colors, but if some
 * there are outer sources of colors there is a gsk_premultiply() helper
 * to compute premultiplication when needed.
 * 
 * Note that GTK parses the uniform declarations, so each uniform has to
 * be on a line by itself with no other code, like so:
 * 
 * ```glsl
 * uniform float u_time;
 * uniform vec3 u_color;
 * uniform sampler2D u_texture1;
 * uniform sampler2D u_texture2;
 * ```
 * 
 * GTK uses the "gsk" namespace in the symbols it uses in the
 * shader, so your code should not use any symbols with the prefix gsk
 * or GSK. There are some helper functions declared that you can use:
 * 
 * ```glsl
 * vec4 GskTexture(sampler2D sampler, vec2 texCoords);
 * ```
 * 
 * This samples a texture (e.g. u_texture1) at the specified
 * coordinates, and containes some helper ifdefs to ensure that
 * it works on all OpenGL versions.
 * 
 * You can compile the shader yourself using [method@Gsk.GLShader.compile],
 * otherwise the GSK renderer will do it when it handling the glshader
 * node. If errors occurs, the returned @error will include the glsl
 * sources, so you can see what GSK was passing to the compiler. You
 * can also set GSK_DEBUG=shaders in the environment to see the sources
 * and other relevant information about all shaders that GSK is handling.
 * 
 * # An example shader
 * 
 * ```glsl
 * uniform float position;
 * uniform sampler2D u_texture1;
 * uniform sampler2D u_texture2;
 * 
 * void mainImage(out vec4 fragColor,
 * in vec2 fragCoord,
 * in vec2 resolution,
 * in vec2 uv) {
 * vec4 source1 = GskTexture(u_texture1, uv);
 * vec4 source2 = GskTexture(u_texture2, uv);
 * 
 * fragColor = position * source1 + (1.0 - position) * source2;
 * }
 * ```
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
	 * Creates a `GskGLShader` that will render pixels using the specified code.
	 *
	 * Params:
	 *     sourcecode = GLSL sourcecode for the shader, as a `GBytes`
	 *
	 * Returns: A new `GskGLShader`
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
	 * Creates a `GskGLShader` that will render pixels using the specified code.
	 *
	 * Params:
	 *     resourcePath = path to a resource that contains the GLSL sourcecode for
	 *         the shader
	 *
	 * Returns: A new `GskGLShader`
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
	 * Tries to compile the @shader for the given @renderer.
	 *
	 * If there is a problem, this function returns %FALSE and reports
	 * an error. You should use this function before relying on the shader
	 * for rendering and use a fallback with a simpler shader or without
	 * shaders if it fails.
	 *
	 * Note that this will modify the rendering state (for example
	 * change the current GL context) and requires the renderer to be
	 * set up. This means that the widget has to be realized. Commonly you
	 * want to call this from the realize signal of a widget, or during
	 * widget snapshot.
	 *
	 * Params:
	 *     renderer = a `GskRenderer`
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
	 * values into the shader.
	 *
	 * The argument list is a list of pairs of names, and values for the
	 * types that match the declared uniforms (i.e. double/int/guint/gboolean
	 * for primitive values and `graphene_vecN_t *` for vecN uniforms).
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
	 *     passed to [ctor@Gsk.GLShaderNode.new].
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
	 *
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
	 *
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
	 *
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
	 *
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
	 *
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
	 *
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
	 *
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
	 * Returns: The resource path for the shader
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
