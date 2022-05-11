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


module gsk.GLRenderer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.Renderer;
private import gsk.c.functions;
public  import gsk.c.types;


/** */
public class GLRenderer : Renderer
{
	/** the main Gtk struct */
	protected GskGLRenderer* gskGLRenderer;

	/** Get the main Gtk struct */
	public GskGLRenderer* getGLRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskGLRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskGLRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskGLRenderer* gskGLRenderer, bool ownedRef = false)
	{
		this.gskGLRenderer = gskGLRenderer;
		super(cast(GskRenderer*)gskGLRenderer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_gl_renderer_get_type();
	}

	/**
	 * Creates a new `GskRenderer` using the new OpenGL renderer.
	 *
	 * Returns: a new GL renderer
	 *
	 * Since: 4.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gsk_gl_renderer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskGLRenderer*) __p, true);
	}
}
