/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gdkpixbuf.typedefs;


import glib.typedefs;


import gobject.typedefs;


import gdk.typedefs;


import pango.typedefs;


/**
 * An enumeration containing three sets of flags for a GdkPixdata struct:
 * one for the used colorspace, one for the width of the samples and one
 * for the encoding of the pixel data.
 * GDK_PIXDATA_COLOR_TYPE_RGB
 */
public enum GdkPixdataType
{
	/+* colorspace + alpha +/
	GDK_PIXDATA_COLOR_TYPE_RGB = 0x01,
	GDK_PIXDATA_COLOR_TYPE_RGBA = 0x02,
	GDK_PIXDATA_COLOR_TYPE_MASK = 0xff,
	/+* width, support 8bits only currently +/
	GDK_PIXDATA_SAMPLE_WIDTH_8 = 0x01 << 16,
	GDK_PIXDATA_SAMPLE_WIDTH_MASK = 0x0f << 16,
	/+* encoding +/
	GDK_PIXDATA_ENCODING_RAW = 0x01 << 24,
	GDK_PIXDATA_ENCODING_RLE = 0x02 << 24,
	GDK_PIXDATA_ENCODING_MASK = 0x0f << 24
}
alias GdkPixdataType dkPixdataType;

/**
 * An enumeration which is used by gdk_pixdata_to_csource() to
 * determine the form of C source to be generated. The three values
 * GDK_PIXDATA_DUMP_PIXDATA_STREAM, GDK_PIXDATA_DUMP_PIXDATA_STRUCT
 * and GDK_PIXDATA_DUMP_MACROS are mutually exclusive, as are
 * GDK_PIXBUF_DUMP_GTYPES and GDK_PIXBUF_DUMP_CTYPES. The remaining
 * elements are optional flags that can be freely added.
 * GDK_PIXDATA_DUMP_PIXDATA_STREAM
 */
public enum GdkPixdataDumpType
{
	/+* type of source to save +/
	GDK_PIXDATA_DUMP_PIXDATA_STREAM = 0,
	GDK_PIXDATA_DUMP_PIXDATA_STRUCT = 1,
	GDK_PIXDATA_DUMP_MACROS = 2,
	/+* type of variables to use +/
	GDK_PIXDATA_DUMP_GTYPES = 0,
	GDK_PIXDATA_DUMP_CTYPES = 1 << 8,
	GDK_PIXDATA_DUMP_STATIC = 1 << 9,
	GDK_PIXDATA_DUMP_CONST = 1 << 10,
	/+* save RLE decoder macro? +/
	GDK_PIXDATA_DUMP_RLE_DECODER = 1 << 16
}
alias GdkPixdataDumpType dkPixdataDumpType;

/**
 * Flags which allow a module to specify further details about the supported
 * operations.
 * GDK_PIXBUF_FORMAT_WRITABLE
 * the module can write out images in the format.
 * GDK_PIXBUF_FORMAT_SCALABLE
 * the image format is scalable
 * GDK_PIXBUF_FORMAT_THREADSAFE
 * the module is threadsafe. If this flag is not
 */
public enum GdkPixbufFormatFlags
{
	WRITABLE = 1 << 0,
	SCALABLE = 1 << 1,
	THREADSAFE = 1 << 2
}
alias GdkPixbufFormatFlags dkPixbufFormatFlags;


/**
 * Main Gtk struct.
 * A GdkPixdata contains pixbuf information in a form suitable for
 * serialization and streaming.
 * guint32magic;
 */
public struct GdkPixdata;
// uint magic; /+* GDK_PIXBUF_MAGIC_NUMBER +/
// int length; /+* <1 to disable length checks, otherwise:
// * GDK_PIXDATA_HEADER_LENGTH + pixelData length
// +/
// uint pixdataType; /+* GdkPixdataType +/
// uint rowstride;
// uint width;
// uint height;
// byte *pixelData;


/**
 * Main Gtk struct.
 */
public struct GdkPixbufAnimation;


public struct GdkPixbufAnimationIter;


public struct GdkPixbufSimpleAnim;


/**
 * Main Gtk struct.
 * The GdkPixbufLoader struct contains only private
 * fields.
 */
public struct GdkPixbufLoader;


/**
 * Main Gtk struct.
 * A GdkPixbufFormat contains information about the image format accepted by a
 * module. Only modules should access the fields directly, applications should
 * use the gdk_pixbuf_format_* functions.
 * gchar*name;
 * the name of the image format.
 * GdkPixbufModulePattern*signature;
 * the signature of the module.
 * gchar*domain;
 * the message domain for the description.
 * gchar*description;
 * a description of the image format.
 * gchar**mime_types;
 * a NULL-terminated array of MIME types for the image format.
 * gchar**extensions;
 * a NULL-terminated array of typical filename extensions for the
 * image format.
 * guint32flags;
 * a combination of GdkPixbufFormatFlags.
 * gbooleandisabled;
 * a boolean determining whether the loader is disabled.
 * gchar*license;
 * a string containing license information, typically set to
 */
public struct GdkPixbufFormat;
// char *name;
// GdkPixbufModulePattern *signature;
// char *domain;
// char *description;
// char **mimeTypes;
// char **extensions;
// uint flags;
// int disabled;
// char *license;


/**
 * The signature of a module is a set of prefixes. Prefixes are encoded as
 * pairs of ordinary strings, where the second string, called the mask, if
 * not NULL, must be of the same length as the first one and may contain
 * ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
 * not matched, "don't-care"-bytes, zeros and non-zeros.
 * Each prefix has an associated integer that describes the relevance of
 * the prefix, with 0 meaning a mismatch and 100 a "perfect match".
 * Starting with gdk-pixbuf 2.8, the first byte of the mask may be '*',
 * indicating an unanchored pattern that matches not only at the beginning,
 * but also in the middle. Versions prior to 2.8 will interpret the '*'
 * like an 'x'.
 * The signature of a module is stored as an array of
 * GdkPixbufModulePatterns. The array is terminated by a pattern
 * where the prefix is NULL.
 * GdkPixbufModulePattern *signature[] = {
	 */
	public struct GdkPixbufModulePattern;
	// unsigned char *prefix;
	// unsigned char *mask;
	// int relevance;
	
	
	/**
	 * A GdkPixbufModule contains the necessary functions to load and save
	 * images in a certain file format.
	 * A GdkPixbufModule can be loaded dynamically from a GModule.
	 * Each loadable module must contain a GdkPixbufModuleFillVtableFunc function
	 * named fill_vtable, which will get called when the module
	 * is loaded and must set the function pointers of the GdkPixbufModule.
	 * char*module_name;
	 * the name of the module, usually the same as the
	 */
	public struct GdkPixbufModule;
	// char *moduleName;
	// char *modulePath;
	// GModule *modul;
	// GdkPixbufFormat *info;
	// GdkPixbuf *(* load) (FILE *f,
	// GError **error);
	// GdkPixbuf *(* loadXpmData) ( char **data);
	// /+* Incremental loading +/
	// void* (* beginLoad) (GdkPixbufModuleSizeFunc sizeFunc,
	// GdkPixbufModulePreparedFunc prepareFunc,
	// GdkPixbufModuleUpdatedFunc updateFunc,
	// void* userData,
	// GError **error);
	// int (* stopLoad) (void* context,
	// GError **error);
	// int (* loadIncrement) (void* context,
	// char *buf,
	// uint size,
	// GError **error);
	// /+* Animation loading +/
	// GdkPixbufAnimation *(* loadAnimation) (FILE *f,
	// GError **error);
	// /+* Saving +/
	// int (* save) (FILE *f,
	// GdkPixbuf *pixbuf,
	// char **paramKeys,
	// char **paramValues,
	// GError **error);
	// int (*saveToCallback) (GdkPixbufSaveFunc saveFunc,
	// void* userData,
	// GdkPixbuf *pixbuf,
	// char **optionKeys,
	// char **optionValues,
	// GError **error);
	
	
	/**
	 * Modules supporting animations must derive a type from
	 * GdkPixbufAnimation, providing suitable implementations of the
	 * virtual functions.
	 * GObjectClassparent_class;
	 * is_static_image()
	 * returns whether the given animation is just a static image.
	 * get_static_image()
	 * returns a static image representing the given animation.
	 * get_size()
	 * fills width and height with the frame size of the animation.
	 * get_iter()
	 * returns an iterator for the given animation.
	 */
	public struct GdkPixbufAnimationClass;
	// GObjectClass parentClass;
	// int (*isStaticImage) (GdkPixbufAnimation *anim);
	// GdkPixbuf* (*getStaticImage) (GdkPixbufAnimation *anim);
	// void (*getSize) (GdkPixbufAnimation *anim,
	// int *width,
	// int *height);
	// GdkPixbufAnimationIter* (*getIter) (GdkPixbufAnimation *anim,
	// GTimeVal *startTime);
	
	
	/**
	 * Modules supporting animations must derive a type from
	 * GdkPixbufAnimationIter, providing suitable implementations of the
	 * virtual functions.
	 * GObjectClassparent_class;
	 * get_delay_time()
	 * returns the time in milliseconds that the current frame
	 */
	public struct GdkPixbufAnimationIterClass;
	// GObjectClass parentClass;
	// int (*getDelayTime) (GdkPixbufAnimationIter *iter);
	// GdkPixbuf* (*getPixbuf) (GdkPixbufAnimationIter *iter);
	// int (*onCurrentlyLoadingFrame) (GdkPixbufAnimationIter *iter);
	// int (*advance) (GdkPixbufAnimationIter *iter,
	// GTimeVal *currentTime);
	

/*
 * Defines the type of the function used to set the vtable of a
 * GdkPixbufModule when it is loaded.
 * module:
 * a GdkPixbufModule.
 * Since 2.2
 */
// void (*GdkPixbufModuleFillVtableFunc)  (GdkPixbufModule *module);
public typedef extern(C) void  function (GdkPixbufModule*) GdkPixbufModuleFillVtableFunc;

/*
 * Defines the type of the function used to fill a
 * GdkPixbufFormat structure with information about a module.
 * info:
 * a GdkPixbufFormat.
 * Since 2.2
 */
// void (*GdkPixbufModuleFillInfoFunc) (GdkPixbufFormat *info);
public typedef extern(C) void  function (GdkPixbufFormat*) GdkPixbufModuleFillInfoFunc;

/*
 * Defines the type of the function that gets called once the size
 * of the loaded image is known.
 * The function is expected to set width and height to the desired
 * size to which the image should be scaled. If a module has no efficient
 * way to achieve the desired scaling during the loading of the image, it may
 * either ignore the size request, or only approximate it -- gdk-pixbuf will
 * then perform the required scaling on the completely loaded image.
 * If the function sets width or height to zero, the module should interpret
 * this as a hint that it will be closed soon and shouldn't allocate further
 * resources. This convention is used to implement gdk_pixbuf_get_file_info()
 * efficiently.
 * width:
 * pointer to a location containing the current image width
 * height:
 * pointer to a location containing the current image height
 * user_data:
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModuleSizeFunc) (gint *width,  gint *height,  gpointer user_data);
public typedef extern(C) void  function (gint*, gint*, void*) GdkPixbufModuleSizeFunc;

/*
 * Defines the type of the function that gets called once the initial
 * setup of pixbuf is done.
 * GdkPixbufLoader uses a function of this type to emit the
 * "area_prepared"
 * signal.
 * pixbuf:
 * the GdkPixbuf that is currently being loaded.
 * anim:
 * if an animation is being loaded, the GdkPixbufAnimation, else NULL.
 * user_data:
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModulePreparedFunc) (GdkPixbuf *pixbuf,  GdkPixbufAnimation *anim,  gpointer user_data);
public typedef extern(C) void  function (GdkPixbuf*, GdkPixbufAnimation*, void*) GdkPixbufModulePreparedFunc;

/*
 * Defines the type of the function that gets called every time a region
 * of pixbuf is updated.
 * GdkPixbufLoader uses a function of this type to emit the
 * "area_updated"
 * signal.
 * pixbuf:
 * the GdkPixbuf that is currently being loaded.
 * x:
 * the X origin of the updated area.
 * y:
 * the Y origin of the updated area.
 * width:
 * the width of the updated area.
 * height:
 * the height of the updated area.
 * user_data:
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModuleUpdatedFunc) (GdkPixbuf *pixbuf,  int x,  int y,  int width,  int height,  gpointer user_data);
public typedef extern(C) void  function (GdkPixbuf*, int, int, int, int, void*) GdkPixbufModuleUpdatedFunc;
