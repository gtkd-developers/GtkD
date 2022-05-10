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


module gdk.GLTexture;

private import gdk.GLContext;
private import gdk.Texture;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * A GdkTexture representing a GL texture object.
 */
public class GLTexture : Texture
{
	/** the main Gtk struct */
	protected GdkGLTexture* gdkGLTexture;

	/** Get the main Gtk struct */
	public GdkGLTexture* getGLTextureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkGLTexture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGLTexture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkGLTexture* gdkGLTexture, bool ownedRef = false)
	{
		this.gdkGLTexture = gdkGLTexture;
		super(cast(GdkTexture*)gdkGLTexture, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_gl_texture_get_type();
	}

	/**
	 * Creates a new texture for an existing GL texture.
	 *
	 * Note that the GL texture must not be modified until @destroy is called,
	 * which will happen when the GdkTexture object is finalized, or due to
	 * an explicit call of [method@Gdk.GLTexture.release].
	 *
	 * Params:
	 *     context = a `GdkGLContext`
	 *     id = the ID of a texture that was created with @context
	 *     width = the nominal width of the texture
	 *     height = the nominal height of the texture
	 *     destroy = a destroy notify that will be called when the GL resources
	 *         are released
	 *     data = data that gets passed to @destroy
	 *
	 * Returns: A newly-created
	 *     `GdkTexture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLContext context, uint id, int width, int height, GDestroyNotify destroy, void* data)
	{
		auto __p = gdk_gl_texture_new((context is null) ? null : context.getGLContextStruct(), id, width, height, destroy, data);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkGLTexture*) __p, true);
	}

	/**
	 * Releases the GL resources held by a `GdkGLTexture`.
	 *
	 * The texture contents are still available via the
	 * [method@Gdk.Texture.download] function, after this
	 * function has been called.
	 */
	public void release()
	{
		gdk_gl_texture_release(gdkGLTexture);
	}
}
