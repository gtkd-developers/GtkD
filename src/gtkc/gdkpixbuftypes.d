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

module gtkc.gdkpixbuftypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.gdktypes;
public import gtkc.atktypes;

version(Tango)
private import tango.stdc.stdio;
else
private import std.stdio;

/**
 * An enumeration containing three sets of flags for a GdkPixdata struct:
 * one for the used colorspace, one for the width of the samples and one
 * for the encoding of the pixel data.
 * GDK_PIXDATA_COLOR_TYPE_RGB
 * each pixel has red, green and blue samples.
 * GDK_PIXDATA_COLOR_TYPE_RGBA
 * each pixel has red, green and blue samples
 *  and an alpha value.
 * GDK_PIXDATA_COLOR_TYPE_MASK
 * mask for the colortype flags of the enum.
 * GDK_PIXDATA_SAMPLE_WIDTH_8
 * each sample has 8 bits.
 * GDK_PIXDATA_SAMPLE_WIDTH_MASK
 * mask for the sample width flags of the enum.
 * GDK_PIXDATA_ENCODING_RAW
 * the pixel data is in raw form.
 * GDK_PIXDATA_ENCODING_RLE
 * the pixel data is run-length encoded. Runs may
 *  be up to 127 bytes long; their length is stored in a single byte
 *  preceding the pixel data for the run. If a run is constant, its length
 *  byte has the high bit set and the pixel data consists of a single pixel
 *  which must be repeated.
 * GDK_PIXDATA_ENCODING_MASK
 * mask for the encoding flags of the enum.
 */
public enum GdkPixdataType
{
	COLOR_TYPE_RGB = 0x01,
	COLOR_TYPE_RGBA = 0x02,
	COLOR_TYPE_MASK = 0xff,
	/+* width, support 8bits only currently +/
	SAMPLE_WIDTH_8 = 0x01 << 16,
	SAMPLE_WIDTH_MASK = 0x0f << 16,
	/+* encoding +/
	ENCODING_RAW = 0x01 << 24,
	ENCODING_RLE = 0x02 << 24,
	ENCODING_MASK = 0x0f << 24
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
 * Generate pixbuf data stream (a single
 *  string containing a serialized GdkPixdata structure in network byte
 *  order).
 * GDK_PIXDATA_DUMP_PIXDATA_STRUCT
 * Generate GdkPixdata structure (needs
 *  the GdkPixdata structure definition from gdk-pixdata.h).
 * GDK_PIXDATA_DUMP_MACROS
 * Generate *_ROWSTRIDE,
 *  *_WIDTH, *_HEIGHT,
 *  *_BYTES_PER_PIXEL and
 *  *_RLE_PIXEL_DATA or *_PIXEL_DATA
 *  macro definitions for the image.
 * GDK_PIXDATA_DUMP_GTYPES
 * Generate GLib data types instead of
 *  standard C data types.
 * GDK_PIXDATA_DUMP_CTYPES
 * Generate standard C data types instead of
 *  GLib data types.
 * GDK_PIXDATA_DUMP_STATIC
 * Generate static symbols.
 * GDK_PIXDATA_DUMP_CONST
 * Generate const symbols.
 * GDK_PIXDATA_DUMP_RLE_DECODER
 * Provide a *_RUN_LENGTH_DECODE(image_buf, rle_data, size, bpp)
 *  macro definition to decode run-length encoded image data.
 */
public enum GdkPixdataDumpType
{
	PIXDATA_STREAM = 0,
	PIXDATA_STRUCT = 1,
	MACROS = 2,
	/+* type of variables to use +/
	GTYPES = 0,
	CTYPES = 1 << 8,
	STATIC = 1 << 9,
	CONST = 1 << 10,
	/+* save RLE decoder macro? +/
	RLE_DECODER = 1 << 16
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
 *  set, gdk-pixbuf; will use a lock to prevent multiple threads from using
 *  this module at the same time. (Since 2.6)
 * Since 2.2
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
 * guint32 magic;
 * magic number. A valid GdkPixdata structure must have
 * GDK_PIXBUF_MAGIC_NUMBER here.
 * gint32 length;
 * less than 1 to disable length checks, otherwise
 * GDK_PIXDATA_HEADER_LENGTH + length of pixel_data.
 * guint32 pixdata_type;
 * information about colorspace, sample width and
 * encoding, in a GdkPixdataType.
 * guint32 rowstride;
 * Distance in bytes between rows.
 * guint32 width;
 * Width of the image in pixels.
 * guint32 height;
 * Height of the image in pixels.
 * guint8 *pixel_data;
 * width x height pixels, encoded according to pixdata_type
 * and rowstride. [array][element-type guint8]
 */
public struct GdkPixdata
{
	uint magic; /+* GDK_PIXBUF_MAGIC_NUMBER +/
	int length; /+* <1 to disable length checks, otherwise:
	 * GDK_PIXDATA_HEADER_LENGTH + pixelData length
	+/
	uint pixdataType; /+* GdkPixdataType +/
	uint rowstride;
	uint width;
	uint height;
	ubyte *pixelData;
}


/**
 * Main Gtk struct.
 * An opaque struct representing an animation.
 */
public struct GdkPixbufAnimation{}


/**
 * An opaque struct representing an iterator which points to a
 * certain position in an animation.
 */
public struct GdkPixbufAnimationIter{}


/**
 * An opaque struct representing a simple animation.
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
 * gchar *name;
 * the name of the image format.
 * GdkPixbufModulePattern *signature;
 * the signature of the module.
 * gchar *domain;
 * the message domain for the description.
 * gchar *description;
 * a description of the image format.
 * gchar **mime_types;
 * a NULL-terminated array of MIME types for the image format.
 * gchar **extensions;
 * a NULL-terminated array of typical filename extensions for the
 * image format.
 * guint32 flags;
 * a combination of GdkPixbufFormatFlags.
 * gboolean disabled;
 * a boolean determining whether the loader is disabled.
 * gchar *license;
 * a string containing license information, typically set to
 * shorthands like "GPL", "LGPL", etc.
 * Since 2.2
 */
public struct GdkPixbufFormat
{
	char *name;
	GdkPixbufModulePattern *signature;
	char *domain;
	char *description;
	char **mimeTypes;
	char **extensions;
	uint flags;
	int disabled;
	char *license;
}


/**
 * The signature of a module is a set of prefixes. Prefixes are encoded as
 * pairs of ordinary strings, where the second string, called the mask, if
 * not NULL, must be of the same length as the first one and may contain
 * ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
 * not matched, "don't-care"-bytes, zeros and non-zeros.
 * Each prefix has an associated integer that describes the relevance of
 * the prefix, with 0 meaning a mismatch and 100 a "perfect match".
 * Starting with gdk-pixbuf; 2.8, the first byte of the mask may be '*',
 * indicating an unanchored pattern that matches not only at the beginning,
 * but also in the middle. Versions prior to 2.8 will interpret the '*'
 * like an 'x'.
 * The signature of a module is stored as an array of
 * GdkPixbufModulePatterns. The array is terminated by a pattern
 * where the prefix is NULL.
 * $(DDOC_COMMENT example)
 * char *prefix;
 * the prefix for this pattern
 * char *mask;
 * mask containing bytes which modify how the prefix is matched against
 * test data
 * int relevance;
 * relevance of this pattern
 * Since 2.2
 */
public struct GdkPixbufModulePattern
{
	char *prefix;
	char *mask;
	int relevance;
}


/**
 * A GdkPixbufModule contains the necessary functions to load and save
 * images in a certain file format.
 * A GdkPixbufModule can be loaded dynamically from a GModule.
 * Each loadable module must contain a GdkPixbufModuleFillVtableFunc function
 * named fill_vtable, which will get called when the module
 * is loaded and must set the function pointers of the GdkPixbufModule.
 * char *module_name;
 * the name of the module, usually the same as the
 * usual file extension for images of this type, eg. "xpm", "jpeg" or "png".
 * char *module_path;
 * the path from which the module is loaded.
 * GModule *module;
 * the loaded GModule.
 * GdkPixbufFormat *info;
 * a GdkPixbufFormat holding information about the module.
 * load ()
 * loads an image from a file.
 * load_xpm_data ()
 * loads an image from data in memory.
 * begin_load ()
 * begins an incremental load.
 * stop_load ()
 * stops an incremental load.
 * load_increment ()
 * continues an incremental load.
 * load_animation ()
 * loads an animation from a file.
 * save ()
 * saves a GdkPixbuf to a file.
 * save_to_callback ()
 * saves a GdkPixbuf by calling the given GdkPixbufSaveFunc.
 */
public struct GdkPixbufModule
{
	char *moduleName;
	char *modulePath;
	GModule *modul;
	GdkPixbufFormat *info;
	extern(C) GdkPixbuf * function(FILE* f, GError** error)  load;
	extern(C) GdkPixbuf * function(char** data)  loadXpmData;
	/+* Incremental loading +/
	extern(C) void* function(GdkPixbufModuleSizeFunc sizeFunc, GdkPixbufModulePreparedFunc prepareFunc, GdkPixbufModuleUpdatedFunc updateFunc, void* userData, GError** error)  beginLoad;
	extern(C) int function(void* context, GError** error)  stopLoad;
	extern(C) int function(void* context, char* buf, uint size, GError** error)  loadIncrement;
	/+* Animation loading +/
	extern(C) GdkPixbufAnimation * function(FILE* f, GError** error)  loadAnimation;
	/+* Saving +/
	extern(C) int function(FILE* f, GdkPixbuf* pixbuf, char** paramKeys, char** paramValues, GError** error)  save;
	extern(C) int function(GdkPixbufSaveFunc saveFunc, void* userData, GdkPixbuf* pixbuf, char** optionKeys, char** optionValues, GError** error) saveToCallback;
}


/**
 * Modules supporting animations must derive a type from
 * GdkPixbufAnimation, providing suitable implementations of the
 * virtual functions.
 * GObjectClass parent_class;
 * the parent class
 * is_static_image ()
 * returns whether the given animation is just a static image.
 * get_static_image ()
 * returns a static image representing the given animation.
 * get_size ()
 * fills width and height with the frame size of the animation.
 * get_iter ()
 * returns an iterator for the given animation.
 */
public struct GdkPixbufAnimationClass
{
	GObjectClass parentClass;
	extern(C) int function(GdkPixbufAnimation* anim) isStaticImage;
	extern(C) GdkPixbuf* function(GdkPixbufAnimation* anim) getStaticImage;
	extern(C) void function(GdkPixbufAnimation* anim, int* width, int* height) getSize;
	extern(C) GdkPixbufAnimationIter* function(GdkPixbufAnimation* anim, GTimeVal* startTime) getIter;
}


/**
 * Modules supporting animations must derive a type from
 * GdkPixbufAnimationIter, providing suitable implementations of the
 * virtual functions.
 * GObjectClass parent_class;
 * the parent class
 * get_delay_time ()
 * returns the time in milliseconds that the current frame
 * should be shown.
 * get_pixbuf ()
 * returns the current frame.
 * on_currently_loading_frame ()
 * returns whether the current frame of iter is
 * being loaded.
 * advance ()
 * advances the iterator to current_time, possibly changing the
 * current frame.
 */
public struct GdkPixbufAnimationIterClass
{
	GObjectClass parentClass;
	extern(C) int function(GdkPixbufAnimationIter* iter) getDelayTime;
	extern(C) GdkPixbuf* function(GdkPixbufAnimationIter* iter) getPixbuf;
	extern(C) int function(GdkPixbufAnimationIter* iter) onCurrentlyLoadingFrame;
	extern(C) int function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime) advance;
}


/*
 * Defines the type of the function used to set the vtable of a
 * GdkPixbufModule when it is loaded.
 * module :
 * a GdkPixbufModule.
 * Since 2.2
 */
// void (*GdkPixbufModuleFillVtableFunc) (GdkPixbufModule *module);
public alias extern(C) void function(GdkPixbufModule* modul) GdkPixbufModuleFillVtableFunc;

/*
 * Defines the type of the function used to fill a
 * GdkPixbufFormat structure with information about a module.
 * info :
 * a GdkPixbufFormat.
 * Since 2.2
 */
// void (*GdkPixbufModuleFillInfoFunc) (GdkPixbufFormat *info);
public alias extern(C) void function(GdkPixbufFormat* info) GdkPixbufModuleFillInfoFunc;

/*
 * Defines the type of the function that gets called once the size
 * of the loaded image is known.
 * The function is expected to set width and height to the desired
 * size to which the image should be scaled. If a module has no efficient
 * way to achieve the desired scaling during the loading of the image, it may
 * either ignore the size request, or only approximate it -- gdk-pixbuf; will
 * then perform the required scaling on the completely loaded image.
 * If the function sets width or height to zero, the module should interpret
 * this as a hint that it will be closed soon and shouldn't allocate further
 * resources. This convention is used to implement gdk_pixbuf_get_file_info()
 * efficiently.
 * width :
 * pointer to a location containing the current image width
 * height :
 * pointer to a location containing the current image height
 * user_data :
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModuleSizeFunc) (gint *width,  gint *height,  gpointer user_data);
public alias extern(C) void function(gint* width, gint* height, void* userData) GdkPixbufModuleSizeFunc;

/*
 * Defines the type of the function that gets called once the initial
 * setup of pixbuf is done.
 * GdkPixbufLoader uses a function of this type to emit the
 * "area_prepared"
 * signal.
 * pixbuf :
 * the GdkPixbuf that is currently being loaded.
 * anim :
 * if an animation is being loaded, the GdkPixbufAnimation, else NULL.
 * user_data :
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModulePreparedFunc) (GdkPixbuf *pixbuf,  GdkPixbufAnimation *anim,  gpointer user_data);
public alias extern(C) void function(GdkPixbuf* pixbuf, GdkPixbufAnimation* anim, void* userData) GdkPixbufModulePreparedFunc;

/*
 * Defines the type of the function that gets called every time a region
 * of pixbuf is updated.
 * GdkPixbufLoader uses a function of this type to emit the
 * "area_updated"
 * signal.
 * pixbuf :
 * the GdkPixbuf that is currently being loaded.
 * x :
 * the X origin of the updated area.
 * y :
 * the Y origin of the updated area.
 * width :
 * the width of the updated area.
 * height :
 * the height of the updated area.
 * user_data :
 * the loader.
 * Since 2.2
 */
// void (*GdkPixbufModuleUpdatedFunc) (GdkPixbuf *pixbuf,  int x,  int y,  int width,  int height,  gpointer user_data);
public alias extern(C) void function(GdkPixbuf* pixbuf, int x, int y, int width, int height, void* userData) GdkPixbufModuleUpdatedFunc;
