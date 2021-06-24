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

private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * A `GdkPixbufFormat` contains information about the image format accepted
 * by a module.
 * 
 * Only modules should access the fields directly, applications should
 * use the `gdk_pixbuf_format_*` family of functions.
 *
 * Since: 2.2
 */
public final class PixbufFormat
{
	/** the main Gtk struct */
	protected GdkPixbufFormat* gdkPixbufFormat;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkPixbufFormat* getPixbufFormatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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

	~this ()
	{
		if ( ownedRef )
			gdk_pixbuf_format_free(gdkPixbufFormat);
	}


	/**
	 * the name of the image format
	 */
	public @property string name()
	{
		return Str.toString(gdkPixbufFormat.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		gdkPixbufFormat.name = Str.toStringz(value);
	}

	/**
	 * the signature of the module
	 */
	public @property GdkPixbufModulePattern* signature()
	{
		return gdkPixbufFormat.signature;
	}

	/** Ditto */
	public @property void signature(GdkPixbufModulePattern* value)
	{
		gdkPixbufFormat.signature = value;
	}

	/**
	 * the message domain for the `description`
	 */
	public @property string domain()
	{
		return Str.toString(gdkPixbufFormat.domain);
	}

	/** Ditto */
	public @property void domain(string value)
	{
		gdkPixbufFormat.domain = Str.toStringz(value);
	}

	/**
	 * a description of the image format
	 */
	public @property string description()
	{
		return Str.toString(gdkPixbufFormat.description);
	}

	/** Ditto */
	public @property void description(string value)
	{
		gdkPixbufFormat.description = Str.toStringz(value);
	}

	/**
	 * the MIME types for the image format
	 */
	public @property string[] mimeTypes()
	{
		return Str.toStringArray(gdkPixbufFormat.mimeTypes);
	}

	/** Ditto */
	public @property void mimeTypes(string[] value)
	{
		gdkPixbufFormat.mimeTypes = Str.toStringzArray(value);
	}

	/**
	 * typical filename extensions for the
	 * image format
	 */
	public @property string[] extensions()
	{
		return Str.toStringArray(gdkPixbufFormat.extensions);
	}

	/** Ditto */
	public @property void extensions(string[] value)
	{
		gdkPixbufFormat.extensions = Str.toStringzArray(value);
	}

	/**
	 * a combination of `GdkPixbufFormatFlags`
	 */
	public @property uint flags()
	{
		return gdkPixbufFormat.flags;
	}

	/** Ditto */
	public @property void flags(uint value)
	{
		gdkPixbufFormat.flags = value;
	}

	/**
	 * a boolean determining whether the loader is disabled`
	 */
	public @property bool disabled()
	{
		return gdkPixbufFormat.disabled != 0;
	}

	/** Ditto */
	public @property void disabled(bool value)
	{
		gdkPixbufFormat.disabled = value;
	}

	/**
	 * a string containing license information, typically set to
	 * shorthands like "GPL", "LGPL", etc.
	 */
	public @property string license()
	{
		return Str.toString(gdkPixbufFormat.license);
	}

	/** Ditto */
	public @property void license(string value)
	{
		gdkPixbufFormat.license = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gdk_pixbuf_format_get_type();
	}

	/**
	 * Creates a copy of `format`.
	 *
	 * Returns: the newly allocated copy of a `GdkPixbufFormat`. Use
	 *     gdk_pixbuf_format_free() to free the resources when done
	 *
	 * Since: 2.22
	 */
	public PixbufFormat copy()
	{
		auto __p = gdk_pixbuf_format_copy(gdkPixbufFormat);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) __p, true);
	}

	/**
	 * Frees the resources allocated when copying a `GdkPixbufFormat`
	 * using gdk_pixbuf_format_copy()
	 *
	 * Since: 2.22
	 */
	public void free()
	{
		gdk_pixbuf_format_free(gdkPixbufFormat);
		ownedRef = false;
	}

	/**
	 * Returns a description of the format.
	 *
	 * Returns: a description of the format.
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
	 * Returns: an array of
	 *     filename extensions
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
	 * Returns information about the license of the image loader for the format.
	 *
	 * The returned string should be a shorthand for a well known license, e.g.
	 * "LGPL", "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.
	 *
	 * Returns: a string describing the license of the pixbuf format
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
	 * Returns: an array of mime types
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
	 * Returns: the name of the format.
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
	 * Returns whether this image format is disabled.
	 *
	 * See gdk_pixbuf_format_set_disabled().
	 *
	 * Returns: whether this image format is disabled.
	 *
	 * Since: 2.6
	 */
	public bool isDisabled()
	{
		return gdk_pixbuf_format_is_disabled(gdkPixbufFormat) != 0;
	}

	/**
	 * Returns `TRUE` if the save option specified by @option_key is supported when
	 * saving a pixbuf using the module implementing @format.
	 *
	 * See gdk_pixbuf_save() for more information about option keys.
	 *
	 * Params:
	 *     optionKey = the name of an option
	 *
	 * Returns: `TRUE` if the specified option is supported
	 *
	 * Since: 2.36
	 */
	public bool isSaveOptionSupported(string optionKey)
	{
		return gdk_pixbuf_format_is_save_option_supported(gdkPixbufFormat, Str.toStringz(optionKey)) != 0;
	}

	/**
	 * Returns whether this image format is scalable.
	 *
	 * If a file is in a scalable format, it is preferable to load it at
	 * the desired size, rather than loading it at the default size and
	 * scaling the resulting pixbuf to the desired size.
	 *
	 * Returns: whether this image format is scalable.
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
	 * Returns: whether pixbufs can be saved in the given format.
	 *
	 * Since: 2.2
	 */
	public bool isWritable()
	{
		return gdk_pixbuf_format_is_writable(gdkPixbufFormat) != 0;
	}

	/**
	 * Disables or enables an image format.
	 *
	 * If a format is disabled, GdkPixbuf won't use the image loader for
	 * this format to load images.
	 *
	 * Applications can use this to avoid using image loaders with an
	 * inappropriate license, see gdk_pixbuf_format_get_license().
	 *
	 * Params:
	 *     disabled = `TRUE` to disable the format @format
	 *
	 * Since: 2.6
	 */
	public void setDisabled(bool disabled)
	{
		gdk_pixbuf_format_set_disabled(gdkPixbufFormat, disabled);
	}
}
