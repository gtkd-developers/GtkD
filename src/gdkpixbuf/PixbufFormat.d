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


module gdkpixbuf.PixbufFormat;

private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gdkpixbuf;
public  import gtkc.gdkpixbuftypes;


/** */
public class PixbufFormat
{
	/** the main Gtk struct */
	protected GdkPixbufFormat* gdkPixbufFormat;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkPixbufFormat* getPixbufFormatStruct()
	{
		return gdkPixbufFormat;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixbufFormat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufFormat* gdkPixbufFormat, bool ownedRef = false)
	{
		this.gdkPixbufFormat = gdkPixbufFormat;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gdk_pixbuf_format_get_type();
	}

	/**
	 * Creates a copy of @format
	 *
	 * Return: the newly allocated copy of a #GdkPixbufFormat. Use
	 *     gdk_pixbuf_format_free() to free the resources when done
	 *
	 * Since: 2.22
	 */
	public PixbufFormat copy()
	{
		auto p = gdk_pixbuf_format_copy(gdkPixbufFormat);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) p, true);
	}

	/**
	 * Frees the resources allocated when copying a #GdkPixbufFormat
	 * using gdk_pixbuf_format_copy()
	 *
	 * Since: 2.22
	 */
	public void free()
	{
		gdk_pixbuf_format_free(gdkPixbufFormat);
	}

	/**
	 * Returns a description of the format.
	 *
	 * Return: a description of the format.
	 *
	 * Since: 2.2
	 */
	public string getDescription()
	{
		auto retStr = gdk_pixbuf_format_get_description(gdkPixbufFormat);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the filename extensions typically used for files in the
	 * given format.
	 *
	 * Return: a %NULL-terminated array of filename extensions which must be
	 *     freed with g_strfreev() when it is no longer needed.
	 *
	 * Since: 2.2
	 */
	public string[] getExtensions()
	{
		auto retStr = gdk_pixbuf_format_get_extensions(gdkPixbufFormat);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns information about the license of the image loader for the format. The
	 * returned string should be a shorthand for a wellknown license, e.g. "LGPL",
	 * "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
	 * string should be freed with g_free() when it's no longer needed.
	 *
	 * Return: a string describing the license of @format.
	 *
	 * Since: 2.6
	 */
	public string getLicense()
	{
		auto retStr = gdk_pixbuf_format_get_license(gdkPixbufFormat);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the mime types supported by the format.
	 *
	 * Return: a %NULL-terminated array of mime types which must be freed with
	 *     g_strfreev() when it is no longer needed.
	 *
	 * Since: 2.2
	 */
	public string[] getMimeTypes()
	{
		auto retStr = gdk_pixbuf_format_get_mime_types(gdkPixbufFormat);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the name of the format.
	 *
	 * Return: the name of the format.
	 *
	 * Since: 2.2
	 */
	public string getName()
	{
		auto retStr = gdk_pixbuf_format_get_name(gdkPixbufFormat);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns whether this image format is disabled. See
	 * gdk_pixbuf_format_set_disabled().
	 *
	 * Return: whether this image format is disabled.
	 *
	 * Since: 2.6
	 */
	public bool isDisabled()
	{
		return gdk_pixbuf_format_is_disabled(gdkPixbufFormat) != 0;
	}

	/**
	 * Returns whether this image format is scalable. If a file is in a
	 * scalable format, it is preferable to load it at the desired size,
	 * rather than loading it at the default size and scaling the
	 * resulting pixbuf to the desired size.
	 *
	 * Return: whether this image format is scalable.
	 *
	 * Since: 2.6
	 */
	public bool isScalable()
	{
		return gdk_pixbuf_format_is_scalable(gdkPixbufFormat) != 0;
	}

	/**
	 * Returns whether pixbufs can be saved in the given format.
	 *
	 * Return: whether pixbufs can be saved in the given format.
	 *
	 * Since: 2.2
	 */
	public bool isWritable()
	{
		return gdk_pixbuf_format_is_writable(gdkPixbufFormat) != 0;
	}

	/**
	 * Disables or enables an image format. If a format is disabled,
	 * gdk-pixbuf won't use the image loader for this format to load
	 * images. Applications can use this to avoid using image loaders
	 * with an inappropriate license, see gdk_pixbuf_format_get_license().
	 *
	 * Params:
	 *     disabled = %TRUE to disable the format @format
	 *
	 * Since: 2.6
	 */
	public void setDisabled(bool disabled)
	{
		gdk_pixbuf_format_set_disabled(gdkPixbufFormat, disabled);
	}
}
