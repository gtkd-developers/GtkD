/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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

/*
 * Conversion parameters:
 * inFile  = gdk-pixbuf-Module-Interface.html
 * outPack = gdkpixbuf
 * outFile = PixbufFormat
 * strct   = GdkPixbufFormat
 * realStrct=
 * ctorStrct=
 * clss    = PixbufFormat
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_format_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Pixbuf
 * 	- glib.ListSG
 * 	- glib.Str
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufFormat* -> PixbufFormat
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdkpixbuf.PixbufFormat;

public  import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;
private import glib.ConstructionException;


private import gdk.Pixbuf;
private import glib.ListSG;
private import glib.Str;




/**
 * Description
 */
public class PixbufFormat
{
	
	/** the main Gtk struct */
	protected GdkPixbufFormat* gdkPixbufFormat;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbufFormat* gdkPixbufFormat)
	{
		if(gdkPixbufFormat is null)
		{
			this = null;
			return;
		}
		this.gdkPixbufFormat = gdkPixbufFormat;
	}
	
	/**
	 * Description
	 */
	
	/**
	 * Attaches a key/value pair as an option to a GdkPixbuf. If key already
	 * exists in the list of options attached to pixbuf, the new value is
	 * ignored and FALSE is returned.
	 * Since 2.2
	 * Params:
	 * pixbuf = a GdkPixbuf
	 * key = a nul-terminated string.
	 * value = a nul-terminated string.
	 * Returns: TRUE on success.
	 */
	public static int gdkPixbufSetOption(Pixbuf pixbuf, string key, string value)
	{
		// gboolean gdk_pixbuf_set_option (GdkPixbuf *pixbuf,  const gchar *key,  const gchar *value);
		return gdk_pixbuf_set_option((pixbuf is null) ? null : pixbuf.getPixbufStruct(), Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Obtains the available information about the image formats supported
	 * by GdkPixbuf.
	 * Since 2.2
	 * Returns: A list of GdkPixbufFormats describing the supported image formats. The list should be freed when it is no longer needed, but the structures themselves are owned by GdkPixbuf and should not be freed. [transfer container][element-type GdkPixbufFormat]
	 */
	public static ListSG gdkPixbufGetFormats()
	{
		// GSList * gdk_pixbuf_get_formats (void);
		auto p = gdk_pixbuf_get_formats();
		if(p is null)
		{
			return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Creates a copy of format
	 * Since 2.22
	 * Returns: the newly allocated copy of a GdkPixbufFormat. Use gdk_pixbuf_format_free() to free the resources when done
	 */
	public PixbufFormat copy()
	{
		// GdkPixbufFormat * gdk_pixbuf_format_copy (const GdkPixbufFormat *format);
		auto p = gdk_pixbuf_format_copy(gdkPixbufFormat);
		if(p is null)
		{
			return null;
		}
		return new PixbufFormat(cast(GdkPixbufFormat*) p);
	}
	
	/**
	 * Frees the resources allocated when copying a GdkPixbufFormat
	 * using gdk_pixbuf_format_copy()
	 * Since 2.22
	 */
	public void free()
	{
		// void gdk_pixbuf_format_free (GdkPixbufFormat *format);
		gdk_pixbuf_format_free(gdkPixbufFormat);
	}
	
	/**
	 * Returns the name of the format.
	 * Since 2.2
	 * Returns: the name of the format.
	 */
	public string getName()
	{
		// gchar * gdk_pixbuf_format_get_name (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_name(gdkPixbufFormat));
	}
	
	/**
	 * Returns a description of the format.
	 * Since 2.2
	 * Returns: a description of the format.
	 */
	public string getDescription()
	{
		// gchar * gdk_pixbuf_format_get_description (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_description(gdkPixbufFormat));
	}
	
	/**
	 * Returns the mime types supported by the format.
	 * Since 2.2
	 * Returns: a NULL-terminated array of mime types which must be freed with g_strfreev() when it is no longer needed. [transfer full]
	 */
	public string[] getMimeTypes()
	{
		// gchar ** gdk_pixbuf_format_get_mime_types (GdkPixbufFormat *format);
		return Str.toStringArray(gdk_pixbuf_format_get_mime_types(gdkPixbufFormat));
	}
	
	/**
	 * Returns the filename extensions typically used for files in the
	 * given format.
	 * Since 2.2
	 * Returns: a NULL-terminated array of filename extensions which must be freed with g_strfreev() when it is no longer needed. [transfer full]
	 */
	public string[] getExtensions()
	{
		// gchar ** gdk_pixbuf_format_get_extensions (GdkPixbufFormat *format);
		return Str.toStringArray(gdk_pixbuf_format_get_extensions(gdkPixbufFormat));
	}
	
	/**
	 * Returns whether pixbufs can be saved in the given format.
	 * Since 2.2
	 * Returns: whether pixbufs can be saved in the given format.
	 */
	public int isWritable()
	{
		// gboolean gdk_pixbuf_format_is_writable (GdkPixbufFormat *format);
		return gdk_pixbuf_format_is_writable(gdkPixbufFormat);
	}
	
	/**
	 * Returns whether this image format is scalable. If a file is in a
	 * scalable format, it is preferable to load it at the desired size,
	 * rather than loading it at the default size and scaling the
	 * resulting pixbuf to the desired size.
	 * Since 2.6
	 * Returns: whether this image format is scalable.
	 */
	public int isScalable()
	{
		// gboolean gdk_pixbuf_format_is_scalable (GdkPixbufFormat *format);
		return gdk_pixbuf_format_is_scalable(gdkPixbufFormat);
	}
	
	/**
	 * Returns whether this image format is disabled. See
	 * gdk_pixbuf_format_set_disabled().
	 * Since 2.6
	 * Returns: whether this image format is disabled.
	 */
	public int isDisabled()
	{
		// gboolean gdk_pixbuf_format_is_disabled (GdkPixbufFormat *format);
		return gdk_pixbuf_format_is_disabled(gdkPixbufFormat);
	}
	
	/**
	 * Disables or enables an image format. If a format is disabled,
	 * gdk-pixbuf won't use the image loader for this format to load
	 * images. Applications can use this to avoid using image loaders
	 * with an inappropriate license, see gdk_pixbuf_format_get_license().
	 * Since 2.6
	 * Params:
	 * disabled = TRUE to disable the format format
	 */
	public void setDisabled(int disabled)
	{
		// void gdk_pixbuf_format_set_disabled (GdkPixbufFormat *format,  gboolean disabled);
		gdk_pixbuf_format_set_disabled(gdkPixbufFormat, disabled);
	}
	
	/**
	 * Returns information about the license of the image loader for the format. The
	 * returned string should be a shorthand for a wellknown license, e.g. "LGPL",
	 * "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license. This
	 * string should be freed with g_free() when it's no longer needed.
	 * Since 2.6
	 * Returns: a string describing the license of format.
	 */
	public string getLicense()
	{
		// gchar * gdk_pixbuf_format_get_license (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_license(gdkPixbufFormat));
	}
	
	/**
	 * Parses an image file far enough to determine its format and size.
	 * Since 2.4
	 * Params:
	 * filename = The name of the file to identify.
	 * width = Return location for the width of the image, or NULL
	 * height = Return location for the height of the image, or NULL
	 * Returns: A GdkPixbufFormat describing the image format of the file or NULL if the image format wasn't recognized. The return value is owned by GdkPixbuf and should not be freed.
	 */
	public static PixbufFormat getFileInfo(string filename, out int width, out int height)
	{
		// GdkPixbufFormat * gdk_pixbuf_get_file_info (const gchar *filename,  gint *width,  gint *height);
		auto p = gdk_pixbuf_get_file_info(Str.toStringz(filename), &width, &height);
		if(p is null)
		{
			return null;
		}
		return new PixbufFormat(cast(GdkPixbufFormat*) p);
	}
}
