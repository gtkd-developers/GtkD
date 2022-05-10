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


module gdk.MemoryTexture;

private import gdk.Texture;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * A `GdkTexture` representing image data in memory.
 */
public class MemoryTexture : Texture
{
	/** the main Gtk struct */
	protected GdkMemoryTexture* gdkMemoryTexture;

	/** Get the main Gtk struct */
	public GdkMemoryTexture* getMemoryTextureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkMemoryTexture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkMemoryTexture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkMemoryTexture* gdkMemoryTexture, bool ownedRef = false)
	{
		this.gdkMemoryTexture = gdkMemoryTexture;
		super(cast(GdkTexture*)gdkMemoryTexture, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_memory_texture_get_type();
	}

	/**
	 * Creates a new texture for a blob of image data.
	 *
	 * The `GBytes` must contain @stride × @height pixels
	 * in the given format.
	 *
	 * Params:
	 *     width = the width of the texture
	 *     height = the height of the texture
	 *     format = the format of the data
	 *     bytes = the `GBytes` containing the pixel data
	 *     stride = rowstride for the data
	 *
	 * Returns: A newly-created `GdkTexture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int width, int height, GdkMemoryFormat format, Bytes bytes, size_t stride)
	{
		auto __p = gdk_memory_texture_new(width, height, format, (bytes is null) ? null : bytes.getBytesStruct(), stride);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkMemoryTexture*) __p, true);
	}
}
