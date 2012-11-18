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
private import gobject.ObjectG;


private import gdk.Pixbuf;
private import glib.ListSG;
private import glib.Str;




/**
 * Description
 * If GdkPixBuf has been compiled with GModule support, it can be extended by
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
 * their signatures. This file is then read at runtime by GdkPixBuf to obtain
 * the list of available loaders and their signatures.
 * Modules may only implement a subset of the functionality available via
 * GdkPixbufModule. If a particular functionality is not implemented, the
 * fill_vtable function will simply not set the corresponding
 * function pointers of the GdkPixbufModule structure. If a module supports
 * incremental loading (i.e. provides begin_load, stop_load and
 * load_increment), it doesn't have to implement load, since GdkPixBuf can
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
 * The GdkPixBuf interfaces needed for implementing modules are contained in
 * gdk-pixbuf-io.h (and
 * gdk-pixbuf-animation.h if the module supports animations).
 * They are not covered by the same stability guarantees as the regular
 * GdkPixBuf API. To underline this fact, they are protected by
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
		this.gdkPixbufFormat = gdkPixbufFormat;
	}
	
	/**
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
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
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
		
		return ObjectG.getDObject!(PixbufFormat)(cast(GdkPixbufFormat*) p);
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
}
