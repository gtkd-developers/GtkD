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

module gtkc.gdkpixbuftypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.gdktypes;
public alias void* AtkFocusHandler;
public struct AtkStateSet;
public struct AtkRectangle;

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
alias GdkPixdataType PixdataType;

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
alias GdkPixdataDumpType PixdataDumpType;

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
alias GdkPixbufFormatFlags PixbufFormatFlags;


/**
 * Main Gtk struct.
 * A GdkPixdata contains pixbuf information in a form suitable for
 * serialization and streaming.
 * guint32magic;
 */
public struct GdkPixdata{}
// uint magic; /+* GDK_PIXBUF_MAGIC_NUMBER +/
// gdk-pixbuf-inline.html
// int length; /+* <1 to disable length checks, otherwise:
// gdk-pixbuf-inline.html
// * GDK_PIXDATA_HEADER_LENGTH + pixelData length
// gdk-pixbuf-inline.html
// +/
// gdk-pixbuf-inline.html
// uint pixdataType; /+* GdkPixdataType +/
// gdk-pixbuf-inline.html
// uint rowstride;
// gdk-pixbuf-inline.html
// uint width;
// gdk-pixbuf-inline.html
// uint height;
// gdk-pixbuf-inline.html
// byte *pixelData;
// gdk-pixbuf-inline.html


/**
 * Main Gtk struct.
 * And opaque struct representing an animation.
 */
public struct GdkPixbufAnimation{}


/**
 * And opaque struct representing an iterator which points to a
 * certain position in an animation.
 */
public struct GdkPixbufAnimationIter{}


/**
 * An
 */
public struct GdkPixbufSimpleAnim{}


/**
 * Main Gtk struct.
 * The GdkPixbufLoader struct contains only private
 * fields.
 */
public struct GdkPixbufLoader{}


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
public struct GdkPixbufFormat{}
// char *name;
// gdk-pixbuf-Module-Interface.html
// GdkPixbufModulePattern *signature;
// gdk-pixbuf-Module-Interface.html
// char *domain;
// gdk-pixbuf-Module-Interface.html
// char *description;
// gdk-pixbuf-Module-Interface.html
// char **mimeTypes;
// gdk-pixbuf-Module-Interface.html
// char **extensions;
// gdk-pixbuf-Module-Interface.html
// uint flags;
// gdk-pixbuf-Module-Interface.html
// int disabled;
// gdk-pixbuf-Module-Interface.html
// char *license;
// gdk-pixbuf-Module-Interface.html


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
public struct GdkPixbufModulePattern{}
// char *prefix;
// gdk-pixbuf-Module-Interface.html
// char *mask;
// gdk-pixbuf-Module-Interface.html
// int relevance;
// gdk-pixbuf-Module-Interface.html


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
public struct GdkPixbufModule{}
// char *moduleName;
// gdk-pixbuf-Module-Interface.html
// char *modulePath;
// gdk-pixbuf-Module-Interface.html
// GModule *modul;
// gdk-pixbuf-Module-Interface.html
// GdkPixbufFormat *info;
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf *(* load) (FILE *f,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf *(* loadXpmData) ( char **data);
// gdk-pixbuf-Module-Interface.html
// /+* Incremental loading +/
// gdk-pixbuf-Module-Interface.html
// void* (* beginLoad) (GdkPixbufModuleSizeFunc sizeFunc,
// gdk-pixbuf-Module-Interface.html
// GdkPixbufModulePreparedFunc prepareFunc,
// gdk-pixbuf-Module-Interface.html
// GdkPixbufModuleUpdatedFunc updateFunc,
// gdk-pixbuf-Module-Interface.html
// void* userData,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// int (* stopLoad) (void* context,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// int (* loadIncrement) (void* context,
// gdk-pixbuf-Module-Interface.html
// char *buf,
// gdk-pixbuf-Module-Interface.html
// uint size,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// /+* Animation loading +/
// gdk-pixbuf-Module-Interface.html
// GdkPixbufAnimation *(* loadAnimation) (FILE *f,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// /+* Saving +/
// gdk-pixbuf-Module-Interface.html
// int (* save) (FILE *f,
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf *pixbuf,
// gdk-pixbuf-Module-Interface.html
// char **paramKeys,
// gdk-pixbuf-Module-Interface.html
// char **paramValues,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html
// int (*saveToCallback) (GdkPixbufSaveFunc saveFunc,
// gdk-pixbuf-Module-Interface.html
// void* userData,
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf *pixbuf,
// gdk-pixbuf-Module-Interface.html
// char **optionKeys,
// gdk-pixbuf-Module-Interface.html
// char **optionValues,
// gdk-pixbuf-Module-Interface.html
// GError **error);
// gdk-pixbuf-Module-Interface.html


/**
 * Modules supporting animations must derive a type from
 * GdkPixbufAnimation, providing suitable implementations of the
 * virtual functions.
 * GObjectClassparent_class;
 * the parent class
 * is_static_image()
 * returns whether the given animation is just a static image.
 * get_static_image()
 * returns a static image representing the given animation.
 * get_size()
 * fills width and height with the frame size of the animation.
 * get_iter()
 * returns an iterator for the given animation.
 */
public struct GdkPixbufAnimationClass{}
// GObjectClass parentClass;
// gdk-pixbuf-Module-Interface.html
// int (*isStaticImage) (GdkPixbufAnimation *anim);
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf* (*getStaticImage) (GdkPixbufAnimation *anim);
// gdk-pixbuf-Module-Interface.html
// void (*getSize) (GdkPixbufAnimation *anim,
// gdk-pixbuf-Module-Interface.html
// int *width,
// gdk-pixbuf-Module-Interface.html
// int *height);
// gdk-pixbuf-Module-Interface.html
// GdkPixbufAnimationIter* (*getIter) (GdkPixbufAnimation *anim,
// gdk-pixbuf-Module-Interface.html
// GTimeVal *startTime);
// gdk-pixbuf-Module-Interface.html


/**
 * Modules supporting animations must derive a type from
 * GdkPixbufAnimationIter, providing suitable implementations of the
 * virtual functions.
 * GObjectClassparent_class;
 * the parent class
 * get_delay_time()
 * returns the time in milliseconds that the current frame
 */
public struct GdkPixbufAnimationIterClass{}
// GObjectClass parentClass;
// gdk-pixbuf-Module-Interface.html
// int (*getDelayTime) (GdkPixbufAnimationIter *iter);
// gdk-pixbuf-Module-Interface.html
// GdkPixbuf* (*getPixbuf) (GdkPixbufAnimationIter *iter);
// gdk-pixbuf-Module-Interface.html
// int (*onCurrentlyLoadingFrame) (GdkPixbufAnimationIter *iter);
// gdk-pixbuf-Module-Interface.html
// int (*advance) (GdkPixbufAnimationIter *iter,
// gdk-pixbuf-Module-Interface.html
// GTimeVal *currentTime);
// gdk-pixbuf-Module-Interface.html


/*
 * Defines the type of the function used to set the vtable of a
 * GdkPixbufModule when it is loaded.
 * module:
 * a GdkPixbufModule.
 * Since 2.2
 */
// void (*GdkPixbufModuleFillVtableFunc) (GdkPixbufModule *module);
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
