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


module gdk.Texture;

private import gdk.PaintableIF;
private import gdk.PaintableT;
private import gdk.c.functions;
public  import gdk.c.types;
private import gdkpixbuf.Pixbuf;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * The `GdkTexture` structure contains only private data.
 */
public class Texture : ObjectG, PaintableIF
{
	/** the main Gtk struct */
	protected GdkTexture* gdkTexture;

	/** Get the main Gtk struct */
	public GdkTexture* getTextureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkTexture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkTexture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkTexture* gdkTexture, bool ownedRef = false)
	{
		this.gdkTexture = gdkTexture;
		super(cast(GObject*)gdkTexture, ownedRef);
	}

	// add the Paintable capabilities
	mixin PaintableT!(GdkTexture);


	/** */
	public static GType getType()
	{
		return gdk_texture_get_type();
	}

	/**
	 * Creates a new texture object representing the #GdkPixbuf.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf
	 *
	 * Returns: a new #GdkTexture
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto __p = gdk_texture_new_for_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_pixbuf");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Creates a new texture by loading an image from a file.
	 * The file format is detected automatically, and can be any
	 * format that is supported by the gdk-pixbuf library, such as
	 * JPEG or PNG.
	 *
	 * If %NULL is returned, then @error will be set.
	 *
	 * Params:
	 *     file = #GFile to load
	 *
	 * Returns: A newly-created #GdkTexture or %NULL if an error occurred.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file)
	{
		GError* err = null;

		auto __p = gdk_texture_new_from_file((file is null) ? null : file.getFileStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Creates a new texture by loading an image from a resource.
	 * The file format is detected automatically, and can be any
	 * format that is supported by the gdk-pixbuf library, such as
	 * JPEG or PNG.
	 *
	 * It is a fatal error if @resource_path does not specify a valid
	 * image resource and the program will abort if that happens.
	 * If you are unsure about the validity of a resource, use
	 * gdk_texture_new_from_file() to load it.
	 *
	 * Params:
	 *     resourcePath = the path of the resource file
	 *
	 * Returns: A newly-created texture
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string resourcePath)
	{
		auto __p = gdk_texture_new_from_resource(Str.toStringz(resourcePath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_resource");
		}

		this(cast(GdkTexture*) __p, true);
	}

	/**
	 * Downloads the @texture into local memory. This may be
	 * an expensive operation, as the actual texture data may
	 * reside on a GPU or on a remote display server.
	 *
	 * The data format of the downloaded data is equivalent to
	 * %CAIRO_FORMAT_ARGB32, so every downloaded pixel requires
	 * 4 bytes of memory.
	 *
	 * Downloading a texture into a Cairo image surface:
	 * |[<!-- language="C" -->
	 * surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32,
	 * gdk_texture_get_width (texture),
	 * gdk_texture_get_height (texture));
	 * gdk_texture_download (texture,
	 * cairo_image_surface_get_data (surface),
	 * cairo_image_surface_get_stride (surface));
	 * cairo_surface_mark_dirty (surface);
	 * ]|
	 *
	 * Params:
	 *     data = pointer to enough memory to be filled with the
	 *         downloaded data of @texture
	 *     stride = rowstride in bytes
	 */
	public void download(char[] data, size_t stride)
	{
		gdk_texture_download(gdkTexture, data.ptr, stride);
	}

	/**
	 * Returns the height of the @texture, in pixels.
	 *
	 * Returns: the height of the #GdkTexture
	 */
	public int getHeight()
	{
		return gdk_texture_get_height(gdkTexture);
	}

	/**
	 * Returns the width of @texture, in pixels.
	 *
	 * Returns: the width of the #GdkTexture
	 */
	public int getWidth()
	{
		return gdk_texture_get_width(gdkTexture);
	}

	/**
	 * Store the given @texture to the @filename as a PNG file.
	 *
	 * This is a utility function intended for debugging and testing.
	 * If you want more control over formats, proper error handling or
	 * want to store to a #GFile or other location, you might want to
	 * look into using the gdk-pixbuf library.
	 *
	 * Params:
	 *     filename = the filename to store to
	 *
	 * Returns: %TRUE if saving succeeded, %FALSE on failure.
	 */
	public bool saveToPng(string filename)
	{
		return gdk_texture_save_to_png(gdkTexture, Str.toStringz(filename)) != 0;
	}
}
