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


module gsk.ShaderArgsBuilder;

private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Vec2;
private import graphene.Vec3;
private import graphene.Vec4;
private import gsk.GLShader;
private import gsk.c.functions;
public  import gsk.c.types;
private import linker.Loader;


/**
 * An object to build the uniforms data for a `GskGLShader`.
 */
public class ShaderArgsBuilder
{
	/** the main Gtk struct */
	protected GskShaderArgsBuilder* gskShaderArgsBuilder;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GskShaderArgsBuilder* getShaderArgsBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskShaderArgsBuilder;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gskShaderArgsBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskShaderArgsBuilder* gskShaderArgsBuilder, bool ownedRef = false)
	{
		this.gskShaderArgsBuilder = gskShaderArgsBuilder;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSK[0]) && ownedRef )
			gsk_shader_args_builder_unref(gskShaderArgsBuilder);
	}


	/** */
	public static GType getType()
	{
		return gsk_shader_args_builder_get_type();
	}

	/**
	 * Allocates a builder that can be used to construct a new uniform data
	 * chunk.
	 *
	 * Params:
	 *     shader = a `GskGLShader`
	 *     initialValues = optional `GBytes` with initial values
	 *
	 * Returns: The newly allocated builder, free with
	 *     [method@Gsk.ShaderArgsBuilder.unref]
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLShader shader, Bytes initialValues)
	{
		auto __p = gsk_shader_args_builder_new((shader is null) ? null : shader.getGLShaderStruct(), (initialValues is null) ? null : initialValues.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskShaderArgsBuilder*) __p);
	}

	/**
	 * Creates a new `GBytes` args from the current state of the
	 * given @builder, and frees the @builder instance.
	 *
	 * Any uniforms of the shader that have not been explicitly set
	 * on the @builder are zero-initialized.
	 *
	 * Returns: the newly allocated buffer with
	 *     all the args added to @builder
	 */
	public Bytes freeToArgs()
	{
		auto __p = gsk_shader_args_builder_free_to_args(gskShaderArgsBuilder);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of a `GskShaderArgsBuilder` by one.
	 *
	 * Returns: the passed in `GskShaderArgsBuilder`
	 */
	public ShaderArgsBuilder ref_()
	{
		auto __p = gsk_shader_args_builder_ref(gskShaderArgsBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ShaderArgsBuilder)(cast(GskShaderArgsBuilder*) __p, true);
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of bool type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform to
	 */
	public void setBool(int idx, bool value)
	{
		gsk_shader_args_builder_set_bool(gskShaderArgsBuilder, idx, value);
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of float type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform to
	 */
	public void setFloat(int idx, float value)
	{
		gsk_shader_args_builder_set_float(gskShaderArgsBuilder, idx, value);
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of int type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform to
	 */
	public void setInt(int idx, int value)
	{
		gsk_shader_args_builder_set_int(gskShaderArgsBuilder, idx, value);
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of uint type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform to
	 */
	public void setUint(int idx, uint value)
	{
		gsk_shader_args_builder_set_uint(gskShaderArgsBuilder, idx, value);
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of vec2 type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform too
	 */
	public void setVec2(int idx, Vec2 value)
	{
		gsk_shader_args_builder_set_vec2(gskShaderArgsBuilder, idx, (value is null) ? null : value.getVec2Struct());
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of vec3 type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform too
	 */
	public void setVec3(int idx, Vec3 value)
	{
		gsk_shader_args_builder_set_vec3(gskShaderArgsBuilder, idx, (value is null) ? null : value.getVec3Struct());
	}

	/**
	 * Sets the value of the uniform @idx.
	 *
	 * The uniform must be of vec4 type.
	 *
	 * Params:
	 *     idx = index of the uniform
	 *     value = value to set the uniform too
	 */
	public void setVec4(int idx, Vec4 value)
	{
		gsk_shader_args_builder_set_vec4(gskShaderArgsBuilder, idx, (value is null) ? null : value.getVec4Struct());
	}

	/**
	 * Creates a new `GBytes` args from the current state of the
	 * given @builder.
	 *
	 * Any uniforms of the shader that have not been explicitly set on
	 * the @builder are zero-initialized.
	 *
	 * The given `GskShaderArgsBuilder` is reset once this function returns;
	 * you cannot call this function multiple times on the same @builder instance.
	 *
	 * This function is intended primarily for bindings. C code should use
	 * [method@Gsk.ShaderArgsBuilder.free_to_args].
	 *
	 * Returns: the newly allocated buffer with
	 *     all the args added to @builder
	 */
	public Bytes toArgs()
	{
		auto __p = gsk_shader_args_builder_to_args(gskShaderArgsBuilder);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Decreases the reference count of a `GskShaderArgBuilder` by one.
	 *
	 * If the resulting reference count is zero, frees the builder.
	 */
	public void unref()
	{
		gsk_shader_args_builder_unref(gskShaderArgsBuilder);
	}
}
