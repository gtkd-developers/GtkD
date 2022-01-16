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


module gsk.NglRenderer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.Renderer;
private import gsk.c.functions;
public  import gsk.c.types;


/** */
public class NglRenderer : Renderer
{
	/** the main Gtk struct */
	protected GskNglRenderer* gskNglRenderer;

	/** Get the main Gtk struct */
	public GskNglRenderer* getNglRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskNglRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskNglRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskNglRenderer* gskNglRenderer, bool ownedRef = false)
	{
		this.gskNglRenderer = gskNglRenderer;
		super(cast(GskRenderer*)gskNglRenderer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_ngl_renderer_get_type();
	}

	/**
	 * Same as gsk_gl_renderer_new().
	 *
	 * Deprecated: Use gsk_gl_renderer_new()
	 *
	 * Returns: a new GL renderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gsk_ngl_renderer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskNglRenderer*) __p, true);
	}
}
