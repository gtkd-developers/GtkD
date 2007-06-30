/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * imports:
 * 	- gdk.Pixbuf
 * 	- glib.ListSG
 * 	- glib.Str
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 */

module gdkpixbuf.PixbufFormat;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;


private import gdk.Pixbuf;
private import glib.ListSG;
private import glib.Str;




/**
 * Description
 * If gdk-pixbuf has been compiled with GModule support, it can be extended by
 * modules which can load (and perhaps also save) new image and animation
 * formats. Each loadable module must export a
 * GdkPixbufModuleFillInfoFunc function named fill_info and
 * a GdkPixbufModuleFillVtableFunc function named
 * fill_vtable.
 * In order to make format-checking work before actually loading the modules
 * (which may require dlopening image libraries), modules export their
 * signatures (and other information) via the fill_info
 * function. An external utility, gdk-pixbuf-query-loaders,
 * uses this to create a text file containing a list of all available loaders and
 * their signatures. This file is then read at runtime by gdk-pixbuf to obtain
 * the list of available loaders and their signatures.
 * Modules may only implement a subset of the functionality available via
 * GdkPixbufModule. If a particular functionality is not implemented, the
 * fill_vtable function will simply not set the corresponding
 * function pointers of the GdkPixbufModule structure. If a module supports
 * incremental loading (i.e. provides begin_load, stop_load and
 * load_increment), it doesn't have to implement load, since gdk-pixbuf can
 * supply a generic load implementation wrapping the incremental loading.
 * Installing a module is a two-step process:
 * copy the module file(s) to the loader directory (normally
 * libdir/gtk-2.0/version/loaders,
 * unless overridden by the environment variable
 * GDK_PIXBUF_MODULEDIR)
 * call gdk-pixbuf-query-loaders to update the
 * module file (normally
 * sysconfdir/gtk-2.0/gdk-pixbuf.loaders,
 * unless overridden by the environment variable
 * GDK_PIXBUF_MODULE_FILE)
 * The gdk-pixbuf interfaces needed for implementing modules are contained in
 * gdk-pixbuf-io.h (and
 * gdk-pixbuf-animation.h if the module supports animations).
 * They are not covered by the same stability guarantees as the regular
 * gdk-pixbuf API. To underline this fact, they are protected by
 * #ifdef GDK_PIXBUF_ENABLE_BACKEND.
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
		version(noAssert)
		{
			if ( gdkPixbufFormat is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkPixbufFormat is null on constructor").newline;
				}
				else
				{
					printf("struct gdkPixbufFormat is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkPixbufFormat !is null, "struct gdkPixbufFormat is null on constructor");
		}
		this.gdkPixbufFormat = gdkPixbufFormat;
	}
	
	/**
	 * Description
	 *  The gdk-pixbuf library provides a simple mechanism for loading
	 *  an image from a file in synchronous fashion. This means that the
	 *  library takes control of the application while the file is being
	 *  loaded; from the user's point of view, the application will block
	 *  until the image is done loading.
	 *  This interface can be used by applications in which blocking is
	 *  acceptable while an image is being loaded. It can also be used to
	 *  load small images in general. Applications that need progressive
	 *  loading can use the GdkPixbufLoader functionality instead.
	 */
	
	/**
	 * Attaches a key/value pair as an option to a GdkPixbuf. If key already
	 * exists in the list of options attached to pixbuf, the new value is
	 * ignored and FALSE is returned.
	 * pixbuf:
	 *  a GdkPixbuf
	 * key:
	 *  a nul-terminated string.
	 * value:
	 *  a nul-terminated string.
	 * Returns:
	 *  TRUE on success.
	 * Since 2.2
	 */
	public static int gdkPixbufSetOption(Pixbuf pixbuf, char[] key, char[] value)
	{
		// gboolean gdk_pixbuf_set_option (GdkPixbuf *pixbuf,  const gchar *key,  const gchar *value);
		return gdk_pixbuf_set_option((pixbuf is null) ? null : pixbuf.getPixbufStruct(), Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Obtains the available information about the image formats supported
	 * by GdkPixbuf.
	 * Returns:
	 *  A list of GdkPixbufFormats describing the supported
	 * image formats. The list should be freed when it is no longer needed,
	 * but the structures themselves are owned by GdkPixbuf and should not be
	 * freed.
	 * Since 2.2
	 */
	public static ListSG gdkPixbufGetFormats()
	{
		// GSList* gdk_pixbuf_get_formats (void);
		return new ListSG( gdk_pixbuf_get_formats() );
	}
	
	/**
	 * Returns the name of the format.
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  the name of the format.
	 * Since 2.2
	 */
	public char[] getName()
	{
		// gchar* gdk_pixbuf_format_get_name (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_name(gdkPixbufFormat) );
	}
	
	/**
	 * Returns a description of the format.
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  a description of the format.
	 * Since 2.2
	 */
	public char[] getDescription()
	{
		// gchar* gdk_pixbuf_format_get_description (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_description(gdkPixbufFormat) );
	}
	
	/**
	 * Returns the mime types supported by the format.
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  a NULL-terminated array of mime types which must be freed with
	 * g_strfreev() when it is no longer needed.
	 * Since 2.2
	 */
	public char** getMimeTypes()
	{
		// gchar** gdk_pixbuf_format_get_mime_types (GdkPixbufFormat *format);
		return gdk_pixbuf_format_get_mime_types(gdkPixbufFormat);
	}
	
	/**
	 * Returns the filename extensions typically used for files in the
	 * given format.
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  a NULL-terminated array of filename extensions which must be
	 * freed with g_strfreev() when it is no longer needed.
	 * Since 2.2
	 */
	public char** getExtensions()
	{
		// gchar** gdk_pixbuf_format_get_extensions (GdkPixbufFormat *format);
		return gdk_pixbuf_format_get_extensions(gdkPixbufFormat);
	}
	
	/**
	 * Returns whether pixbufs can be saved in the given format.
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  whether pixbufs can be saved in the given format.
	 * Since 2.2
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
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  whether this image format is scalable.
	 * Since 2.6
	 */
	public int isScalable()
	{
		// gboolean gdk_pixbuf_format_is_scalable (GdkPixbufFormat *format);
		return gdk_pixbuf_format_is_scalable(gdkPixbufFormat);
	}
	
	/**
	 * Returns whether this image format is disabled. See
	 * gdk_pixbuf_format_set_disabled().
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  whether this image format is disabled.
	 * Since 2.6
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
	 * format:
	 *  a GdkPixbufFormat
	 * disabled:
	 *  TRUE to disable the format format
	 * Since 2.6
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
	 * format:
	 *  a GdkPixbufFormat
	 * Returns:
	 *  a string describing the license of format.
	 * Since 2.6
	 */
	public char[] getLicense()
	{
		// gchar* gdk_pixbuf_format_get_license (GdkPixbufFormat *format);
		return Str.toString(gdk_pixbuf_format_get_license(gdkPixbufFormat) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Parses an image file far enough to determine its format and size.
	 * filename:
	 *  The name of the file to identify.
	 * width:
	 *  Return location for the width of the image, or NULL
	 * height:
	 *  Return location for the height of the image, or NULL
	 * Returns:
	 *  A GdkPixbufFormat describing the image format of the file
	 *  or NULL if the image format wasn't recognized. The return value
	 *  is owned by GdkPixbuf and should not be freed.
	 * Since 2.4
	 * See Also
	 *  GdkPixbufLoader.
	 */
	public static GdkPixbufFormat* getFileInfo(char[] filename, int* width, int* height)
	{
		// GdkPixbufFormat* gdk_pixbuf_get_file_info (const gchar *filename,  gint *width,  gint *height);
		return gdk_pixbuf_get_file_info(Str.toStringz(filename), width, height);
	}
}
