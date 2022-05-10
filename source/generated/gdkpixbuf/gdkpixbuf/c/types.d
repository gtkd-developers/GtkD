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


module gdkpixbuf.c.types;

public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;


/**
 * This enumeration defines the color spaces that are supported by
 * the gdk-pixbuf library.
 *
 * Currently only RGB is supported.
 */
public enum GdkColorspace
{
	/**
	 * Indicates a red/green/blue additive color space.
	 */
	RGB = 0,
}
alias GdkColorspace Colorspace;

/**
 * Interpolation modes for scaling functions.
 *
 * The `GDK_INTERP_NEAREST` mode is the fastest scaling method, but has
 * horrible quality when scaling down; `GDK_INTERP_BILINEAR` is the best
 * choice if you aren't sure what to choose, it has a good speed/quality
 * balance.
 *
 * **Note**: Cubic filtering is missing from the list; hyperbolic
 * interpolation is just as fast and results in higher quality.
 */
public enum GdkInterpType
{
	/**
	 * Nearest neighbor sampling; this is the fastest
	 * and lowest quality mode. Quality is normally unacceptable when scaling
	 * down, but may be OK when scaling up.
	 */
	NEAREST = 0,
	/**
	 * This is an accurate simulation of the PostScript
	 * image operator without any interpolation enabled.  Each pixel is
	 * rendered as a tiny parallelogram of solid color, the edges of which
	 * are implemented with antialiasing.  It resembles nearest neighbor for
	 * enlargement, and bilinear for reduction.
	 */
	TILES = 1,
	/**
	 * Best quality/speed balance; use this mode by
	 * default. Bilinear interpolation.  For enlargement, it is
	 * equivalent to point-sampling the ideal bilinear-interpolated image.
	 * For reduction, it is equivalent to laying down small tiles and
	 * integrating over the coverage area.
	 */
	BILINEAR = 2,
	/**
	 * This is the slowest and highest quality
	 * reconstruction function. It is derived from the hyperbolic filters in
	 * Wolberg's "Digital Image Warping", and is formally defined as the
	 * hyperbolic-filter sampling the ideal hyperbolic-filter interpolated
	 * image (the filter is designed to be idempotent for 1:1 pixel mapping).
	 * **Deprecated**: this interpolation filter is deprecated, as in reality
	 * it has a lower quality than the @GDK_INTERP_BILINEAR filter
	 * (Since: 2.38)
	 */
	HYPER = 3,
}
alias GdkInterpType InterpType;

/**
 * Control the alpha channel for drawables.
 *
 * These values can be passed to gdk_pixbuf_xlib_render_to_drawable_alpha()
 * in gdk-pixbuf-xlib to control how the alpha channel of an image should
 * be handled.
 *
 * This function can create a bilevel clipping mask (black and white) and use
 * it while painting the image.
 *
 * In the future, when the X Window System gets an alpha channel extension,
 * it will be possible to do full alpha compositing onto arbitrary drawables.
 * For now both cases fall back to a bilevel clipping mask.
 *
 * Deprecated: There is no user of GdkPixbufAlphaMode in GdkPixbuf,
 * and the Xlib utility functions have been split out to their own
 * library, gdk-pixbuf-xlib
 */
public enum GdkPixbufAlphaMode
{
	/**
	 * A bilevel clipping mask (black and white)
	 * will be created and used to draw the image.  Pixels below 0.5 opacity
	 * will be considered fully transparent, and all others will be
	 * considered fully opaque.
	 */
	BILEVEL = 0,
	/**
	 * For now falls back to #GDK_PIXBUF_ALPHA_BILEVEL.
	 * In the future it will do full alpha compositing.
	 */
	FULL = 1,
}
alias GdkPixbufAlphaMode PixbufAlphaMode;

/**
 * An error code in the `GDK_PIXBUF_ERROR` domain.
 *
 * Many gdk-pixbuf operations can cause errors in this domain, or in
 * the `G_FILE_ERROR` domain.
 */
public enum GdkPixbufError
{
	/**
	 * An image file was broken somehow.
	 */
	CORRUPT_IMAGE = 0,
	/**
	 * Not enough memory.
	 */
	INSUFFICIENT_MEMORY = 1,
	/**
	 * A bad option was passed to a pixbuf save module.
	 */
	BAD_OPTION = 2,
	/**
	 * Unknown image type.
	 */
	UNKNOWN_TYPE = 3,
	/**
	 * Don't know how to perform the
	 * given operation on the type of image at hand.
	 */
	UNSUPPORTED_OPERATION = 4,
	/**
	 * Generic failure code, something went wrong.
	 */
	FAILED = 5,
	/**
	 * Only part of the animation was loaded.
	 */
	INCOMPLETE_ANIMATION = 6,
}
alias GdkPixbufError PixbufError;

/**
 * Flags which allow a module to specify further details about the supported
 * operations.
 *
 * Since: 2.2
 */
public enum GdkPixbufFormatFlags
{
	/**
	 * the module can write out images in the format.
	 */
	WRITABLE = 1,
	/**
	 * the image format is scalable
	 */
	SCALABLE = 2,
	/**
	 * the module is threadsafe. gdk-pixbuf
	 * ignores modules that are not marked as threadsafe. (Since 2.28).
	 */
	THREADSAFE = 4,
}
alias GdkPixbufFormatFlags PixbufFormatFlags;

/**
 * The possible rotations which can be passed to gdk_pixbuf_rotate_simple().
 *
 * To make them easier to use, their numerical values are the actual degrees.
 */
public enum GdkPixbufRotation
{
	/**
	 * No rotation.
	 */
	NONE = 0,
	/**
	 * Rotate by 90 degrees.
	 */
	COUNTERCLOCKWISE = 90,
	/**
	 * Rotate by 180 degrees.
	 */
	UPSIDEDOWN = 180,
	/**
	 * Rotate by 270 degrees.
	 */
	CLOCKWISE = 270,
}
alias GdkPixbufRotation PixbufRotation;

/**
 * An enumeration which is used by gdk_pixdata_to_csource() to
 * determine the form of C source to be generated. The three values
 * @GDK_PIXDATA_DUMP_PIXDATA_STREAM, @GDK_PIXDATA_DUMP_PIXDATA_STRUCT
 * and @GDK_PIXDATA_DUMP_MACROS are mutually exclusive, as are
 * @GDK_PIXBUF_DUMP_GTYPES and @GDK_PIXBUF_DUMP_CTYPES. The remaining
 * elements are optional flags that can be freely added.
 */
public enum GdkPixdataDumpType
{
	/**
	 * Generate pixbuf data stream (a single
	 * string containing a serialized #GdkPixdata structure in network byte
	 * order).
	 */
	PIXDATA_STREAM = 0,
	/**
	 * Generate #GdkPixdata structure (needs
	 * the #GdkPixdata structure definition from gdk-pixdata.h).
	 */
	PIXDATA_STRUCT = 1,
	/**
	 * Generate <function>*_ROWSTRIDE</function>,
	 * <function>*_WIDTH</function>, <function>*_HEIGHT</function>,
	 * <function>*_BYTES_PER_PIXEL</function> and
	 * <function>*_RLE_PIXEL_DATA</function> or <function>*_PIXEL_DATA</function>
	 * macro definitions for the image.
	 */
	MACROS = 2,
	/**
	 * Generate GLib data types instead of
	 * standard C data types.
	 */
	GTYPES = 0,
	/**
	 * Generate standard C data types instead of
	 * GLib data types.
	 */
	CTYPES = 256,
	/**
	 * Generate static symbols.
	 */
	STATIC = 512,
	/**
	 * Generate const symbols.
	 */
	CONST = 1024,
	/**
	 * Provide a <function>*_RUN_LENGTH_DECODE(image_buf, rle_data, size, bpp)</function>
	 * macro definition  to  decode  run-length encoded image data.
	 */
	RLE_DECODER = 65536,
}
alias GdkPixdataDumpType PixdataDumpType;

/**
 * An enumeration containing three sets of flags for a #GdkPixdata struct:
 * one for the used colorspace, one for the width of the samples and one
 * for the encoding of the pixel data.
 */
public enum GdkPixdataType
{
	/**
	 * each pixel has red, green and blue samples.
	 */
	COLOR_TYPE_RGB = 1,
	/**
	 * each pixel has red, green and blue samples
	 * and an alpha value.
	 */
	COLOR_TYPE_RGBA = 2,
	/**
	 * mask for the colortype flags of the enum.
	 */
	COLOR_TYPE_MASK = 255,
	/**
	 * each sample has 8 bits.
	 */
	SAMPLE_WIDTH_8 = 65536,
	/**
	 * mask for the sample width flags of the enum.
	 */
	SAMPLE_WIDTH_MASK = 983040,
	/**
	 * the pixel data is in raw form.
	 */
	ENCODING_RAW = 16777216,
	/**
	 * the pixel data is run-length encoded. Runs may
	 * be up to 127 bytes long; their length is stored in a single byte
	 * preceding the pixel data for the run. If a run is constant, its length
	 * byte has the high bit set and the pixel data consists of a single pixel
	 * which must be repeated.
	 */
	ENCODING_RLE = 33554432,
	/**
	 * mask for the encoding flags of the enum.
	 */
	ENCODING_MASK = 251658240,
}
alias GdkPixdataType PixdataType;

struct GdkPixbuf;

struct GdkPixbufAnimation
{
	GObject parentInstance;
}

/**
 * Modules supporting animations must derive a type from
 * #GdkPixbufAnimation, providing suitable implementations of the
 * virtual functions.
 */
struct GdkPixbufAnimationClass
{
	/**
	 * the parent class
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     animation = a #GdkPixbufAnimation
	 * Returns: `TRUE` if the "animation" was really just an image
	 */
	extern(C) int function(GdkPixbufAnimation* animation) isStaticImage;
	/**
	 *
	 * Params:
	 *     animation = a #GdkPixbufAnimation
	 * Returns: unanimated image representing the animation
	 */
	extern(C) GdkPixbuf* function(GdkPixbufAnimation* animation) getStaticImage;
	/** */
	extern(C) void function(GdkPixbufAnimation* animation, int* width, int* height) getSize;
	/**
	 *
	 * Params:
	 *     animation = a #GdkPixbufAnimation
	 *     startTime = time when the animation starts playing
	 * Returns: an iterator to move over the animation
	 */
	extern(C) GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime) getIter;
}

struct GdkPixbufAnimationIter
{
	GObject parentInstance;
}

/**
 * Modules supporting animations must derive a type from
 * #GdkPixbufAnimationIter, providing suitable implementations of the
 * virtual functions.
 */
struct GdkPixbufAnimationIterClass
{
	/**
	 * the parent class
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     iter = an animation iterator
	 * Returns: delay time in milliseconds (thousandths of a second)
	 */
	extern(C) int function(GdkPixbufAnimationIter* iter) getDelayTime;
	/**
	 *
	 * Params:
	 *     iter = an animation iterator
	 * Returns: the pixbuf to be displayed
	 */
	extern(C) GdkPixbuf* function(GdkPixbufAnimationIter* iter) getPixbuf;
	/**
	 *
	 * Params:
	 *     iter = a #GdkPixbufAnimationIter
	 * Returns: `TRUE` if the frame we're on is partially loaded, or the last frame
	 */
	extern(C) int function(GdkPixbufAnimationIter* iter) onCurrentlyLoadingFrame;
	/**
	 *
	 * Params:
	 *     iter = a #GdkPixbufAnimationIter
	 *     currentTime = current time
	 * Returns: `TRUE` if the image may need updating
	 */
	extern(C) int function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime) advance;
}

struct GdkPixbufFormat
{
	/**
	 * the name of the image format
	 */
	char* name;
	/**
	 * the signature of the module
	 */
	GdkPixbufModulePattern* signature;
	/**
	 * the message domain for the `description`
	 */
	char* domain;
	/**
	 * a description of the image format
	 */
	char* description;
	/**
	 * the MIME types for the image format
	 */
	char** mimeTypes;
	/**
	 * typical filename extensions for the
	 * image format
	 */
	char** extensions;
	/**
	 * a combination of `GdkPixbufFormatFlags`
	 */
	uint flags;
	/**
	 * a boolean determining whether the loader is disabled`
	 */
	bool disabled;
	/**
	 * a string containing license information, typically set to
	 * shorthands like "GPL", "LGPL", etc.
	 */
	char* license;
}

struct GdkPixbufLoader
{
	GObject parentInstance;
	void* priv;
}

struct GdkPixbufLoaderClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GdkPixbufLoader* loader, int width, int height) sizePrepared;
	/** */
	extern(C) void function(GdkPixbufLoader* loader) areaPrepared;
	/** */
	extern(C) void function(GdkPixbufLoader* loader, int x, int y, int width, int height) areaUpdated;
	/** */
	extern(C) void function(GdkPixbufLoader* loader) closed;
}

/**
 * A `GdkPixbufModule` contains the necessary functions to load and save
 * images in a certain file format.
 *
 * If `GdkPixbuf` has been compiled with `GModule` support, it can be extended
 * by modules which can load (and perhaps also save) new image and animation
 * formats.
 *
 * ## Implementing modules
 *
 * The `GdkPixbuf` interfaces needed for implementing modules are contained in
 * `gdk-pixbuf-io.h` (and `gdk-pixbuf-animation.h` if the module supports
 * animations). They are not covered by the same stability guarantees as the
 * regular GdkPixbuf API. To underline this fact, they are protected by the
 * `GDK_PIXBUF_ENABLE_BACKEND` pre-processor symbol.
 *
 * Each loadable module must contain a `GdkPixbufModuleFillVtableFunc` function
 * named `fill_vtable`, which will get called when the module
 * is loaded and must set the function pointers of the `GdkPixbufModule`.
 *
 * In order to make format-checking work before actually loading the modules
 * (which may require calling `dlopen` to load image libraries), modules export
 * their signatures (and other information) via the `fill_info` function. An
 * external utility, `gdk-pixbuf-query-loaders`, uses this to create a text
 * file containing a list of all available loaders and  their signatures.
 * This file is then read at runtime by `GdkPixbuf` to obtain the list of
 * available loaders and their signatures.
 *
 * Modules may only implement a subset of the functionality available via
 * `GdkPixbufModule`. If a particular functionality is not implemented, the
 * `fill_vtable` function will simply not set the corresponding
 * function pointers of the `GdkPixbufModule` structure. If a module supports
 * incremental loading (i.e. provides `begin_load`, `stop_load` and
 * `load_increment`), it doesn't have to implement `load`, since `GdkPixbuf`
 * can supply a generic `load` implementation wrapping the incremental loading.
 *
 * ## Installing modules
 *
 * Installing a module is a two-step process:
 *
 * - copy the module file(s) to the loader directory (normally
 * `$libdir/gdk-pixbuf-2.0/$version/loaders`, unless overridden by the
 * environment variable `GDK_PIXBUF_MODULEDIR`)
 * - call `gdk-pixbuf-query-loaders` to update the module file (normally
 * `$libdir/gdk-pixbuf-2.0/$version/loaders.cache`, unless overridden
 * by the environment variable `GDK_PIXBUF_MODULE_FILE`)
 */
struct GdkPixbufModule
{
	/**
	 * the name of the module, usually the same as the
	 * usual file extension for images of this type, eg. "xpm", "jpeg" or "png".
	 */
	char* moduleName;
	/**
	 * the path from which the module is loaded.
	 */
	char* modulePath;
	/**
	 * the loaded `GModule`.
	 */
	GModule* module_;
	/**
	 * a `GdkPixbufFormat` holding information about the module.
	 */
	GdkPixbufFormat* info;
	/**
	 * loads an image from a file.
	 */
	GdkPixbufModuleLoadFunc load;
	/**
	 * loads an image from data in memory.
	 */
	GdkPixbufModuleLoadXpmDataFunc loadXpmData;
	/**
	 * begins an incremental load.
	 */
	GdkPixbufModuleBeginLoadFunc beginLoad;
	/**
	 * stops an incremental load.
	 */
	GdkPixbufModuleStopLoadFunc stopLoad;
	/**
	 * continues an incremental load.
	 */
	GdkPixbufModuleIncrementLoadFunc loadIncrement;
	/**
	 * loads an animation from a file.
	 */
	GdkPixbufModuleLoadAnimationFunc loadAnimation;
	/**
	 * saves a `GdkPixbuf` to a file.
	 */
	GdkPixbufModuleSaveFunc save;
	/**
	 * saves a `GdkPixbuf` by calling the given `GdkPixbufSaveFunc`.
	 */
	GdkPixbufModuleSaveCallbackFunc saveToCallback;
	/**
	 * returns whether a save option key is supported by the module
	 */
	GdkPixbufModuleSaveOptionSupportedFunc isSaveOptionSupported;
	/** */
	extern(C) void function() Reserved1;
	/** */
	extern(C) void function() Reserved2;
	/** */
	extern(C) void function() Reserved3;
	/** */
	extern(C) void function() Reserved4;
}

/**
 * The signature prefix for a module.
 *
 * The signature of a module is a set of prefixes. Prefixes are encoded as
 * pairs of ordinary strings, where the second string, called the mask, if
 * not `NULL`, must be of the same length as the first one and may contain
 * ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
 * not matched, "don't-care"-bytes, zeros and non-zeros, respectively.
 *
 * Each prefix has an associated integer that describes the relevance of
 * the prefix, with 0 meaning a mismatch and 100 a "perfect match".
 *
 * Starting with gdk-pixbuf 2.8, the first byte of the mask may be '*',
 * indicating an unanchored pattern that matches not only at the beginning,
 * but also in the middle. Versions prior to 2.8 will interpret the '*'
 * like an 'x'.
 *
 * The signature of a module is stored as an array of
 * `GdkPixbufModulePatterns`. The array is terminated by a pattern
 * where the `prefix` is `NULL`.
 *
 * ```c
 * GdkPixbufModulePattern *signature[] = {
 * { "abcdx", " !x z", 100 },
 * { "bla", NULL,  90 },
 * { NULL, NULL, 0 }
 * };
 * ```
 *
 * In the example above, the signature matches e.g. "auud\0" with
 * relevance 100, and "blau" with relevance 90.
 *
 * Since: 2.2
 */
struct GdkPixbufModulePattern
{
	/**
	 * the prefix for this pattern
	 */
	char* prefix;
	/**
	 * mask containing bytes which modify how the prefix is matched against
	 * test data
	 */
	char* mask;
	/**
	 * relevance of this pattern
	 */
	int relevance;
}

struct GdkPixbufNonAnim;

struct GdkPixbufSimpleAnim;

struct GdkPixbufSimpleAnimClass;

struct GdkPixbufSimpleAnimIter;

struct GdkPixdata
{
	/**
	 * magic number. A valid `GdkPixdata` structure must have
	 * `GDK_PIXBUF_MAGIC_NUMBER` here
	 */
	uint magic;
	/**
	 * less than 1 to disable length checks, otherwise
	 * `GDK_PIXDATA_HEADER_LENGTH` plus the length of `pixel_data`
	 */
	int length;
	/**
	 * information about colorspace, sample width and
	 * encoding, in a `GdkPixdataType`
	 */
	uint pixdataType;
	/**
	 * Distance in bytes between rows
	 */
	uint rowstride;
	/**
	 * Width of the image in pixels
	 */
	uint width;
	/**
	 * Height of the image in pixels
	 */
	uint height;
	/**
	 * `width` x `height`
	 * pixels, encoded according to `pixdata_type` and `rowstride`
	 */
	ubyte* pixelData;
}

/**
 * A function of this type is responsible for freeing the pixel array
 * of a pixbuf.
 *
 * The gdk_pixbuf_new_from_data() function lets you pass in a pre-allocated
 * pixel array so that a pixbuf can be created from it; in this case you
 * will need to pass in a function of type `GdkPixbufDestroyNotify` so that
 * the pixel data can be freed when the pixbuf is finalized.
 *
 * Params:
 *     pixels = The pixel array of the pixbuf
 *         that is being finalized.
 *     data = User closure data.
 */
public alias extern(C) void function(char* pixels, void* data) GdkPixbufDestroyNotify;

/**
 * Sets up the image loading state.
 *
 * The image loader is responsible for storing the given function pointers
 * and user data, and call them when needed.
 *
 * The image loader should set up an internal state object, and return it
 * from this function; the state object will then be updated from the
 * [callback@GdkPixbuf.PixbufModuleIncrementLoadFunc] callback, and will be freed
 * by [callback@GdkPixbuf.PixbufModuleStopLoadFunc] callback.
 *
 * Params:
 *     sizeFunc = the function to be called when the size is known
 *     preparedFunc = the function to be called when the data has been prepared
 *     updatedFunc = the function to be called when the data has been updated
 *     userData = the data to be passed to the functions
 *
 * Returns: the data to be passed to
 *     [callback@GdkPixbuf.PixbufModuleIncrementLoadFunc]
 *     and [callback@GdkPixbuf.PixbufModuleStopLoadFunc], or `NULL` in case of error
 *
 * Throws: GException on failure.
 */
public alias extern(C) void* function(GdkPixbufModuleSizeFunc sizeFunc, GdkPixbufModulePreparedFunc preparedFunc, GdkPixbufModuleUpdatedFunc updatedFunc, void* userData, GError** err) GdkPixbufModuleBeginLoadFunc;

/**
 * Defines the type of the function used to fill a
 * #GdkPixbufFormat structure with information about a module.
 *
 * Params:
 *     info = a #GdkPixbufFormat.
 *
 * Since: 2.2
 */
public alias extern(C) void function(GdkPixbufFormat* info) GdkPixbufModuleFillInfoFunc;

/**
 * Defines the type of the function used to set the vtable of a
 * #GdkPixbufModule when it is loaded.
 *
 * Params:
 *     module_ = a #GdkPixbufModule.
 *
 * Since: 2.2
 */
public alias extern(C) void function(GdkPixbufModule* module_) GdkPixbufModuleFillVtableFunc;

/**
 * Incrementally loads a buffer into the image data.
 *
 * Params:
 *     context = the state object created by [callback@GdkPixbuf.PixbufModuleBeginLoadFunc]
 *     buf = the data to load
 *     size = the length of the data to load
 *
 * Returns: `TRUE` if the incremental load was successful
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(void* context, char* buf, uint size, GError** err) GdkPixbufModuleIncrementLoadFunc;

/**
 * Loads a file from a standard C file stream into a new `GdkPixbufAnimation`.
 *
 * In case of error, this function should return `NULL` and set the `error` argument.
 *
 * Params:
 *     f = the file stream from which the image should be loaded
 *
 * Returns: a newly created `GdkPixbufAnimation` for the contents of the file
 *
 * Throws: GException on failure.
 */
public alias extern(C) GdkPixbufAnimation* function(FILE* f, GError** err) GdkPixbufModuleLoadAnimationFunc;

/**
 * Loads a file from a standard C file stream into a new `GdkPixbuf`.
 *
 * In case of error, this function should return `NULL` and set the `error` argument.
 *
 * Params:
 *     f = the file stream from which the image should be loaded
 *
 * Returns: a newly created `GdkPixbuf` for the contents of the file
 *
 * Throws: GException on failure.
 */
public alias extern(C) GdkPixbuf* function(FILE* f, GError** err) GdkPixbufModuleLoadFunc;

/**
 * Loads XPM data into a new `GdkPixbuf`.
 *
 * Params:
 *     data = the XPM data
 *
 * Returns: a newly created `GdkPixbuf` for the XPM data
 */
public alias extern(C) GdkPixbuf* function(char** data) GdkPixbufModuleLoadXpmDataFunc;

/**
 * Defines the type of the function that gets called once the initial
 * setup of @pixbuf is done.
 *
 * #GdkPixbufLoader uses a function of this type to emit the
 * "<link linkend="GdkPixbufLoader-area-prepared">area_prepared</link>"
 * signal.
 *
 * Params:
 *     pixbuf = the #GdkPixbuf that is currently being loaded.
 *     anim = if an animation is being loaded, the #GdkPixbufAnimation, else %NULL.
 *     userData = the loader.
 *
 * Since: 2.2
 */
public alias extern(C) void function(GdkPixbuf* pixbuf, GdkPixbufAnimation* anim, void* userData) GdkPixbufModulePreparedFunc;

/**
 * Saves a `GdkPixbuf` by calling the provided function.
 *
 * The optional `option_keys` and `option_values` arrays contain the keys and
 * values (in the same order) for attributes to be saved alongside the image
 * data.
 *
 * Params:
 *     saveFunc = the function to call when saving
 *     userData = the data to pass to @save_func
 *     pixbuf = the `GdkPixbuf` to save
 *     optionKeys = an array of option names
 *     optionValues = an array of option values
 *
 * Returns: `TRUE` on success; in case of failure, `FALSE` is returned and
 *     the `error` is set
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(GdkPixbufSaveFunc saveFunc, void* userData, GdkPixbuf* pixbuf, char** optionKeys, char** optionValues, GError** err) GdkPixbufModuleSaveCallbackFunc;

/**
 * Saves a `GdkPixbuf` into a standard C file stream.
 *
 * The optional `param_keys` and `param_values` arrays contain the keys and
 * values (in the same order) for attributes to be saved alongside the image
 * data.
 *
 * Params:
 *     f = the file stream into which the image should be saved
 *     pixbuf = the image to save
 *     paramKeys = parameter keys to save
 *     paramValues = parameter values to save
 *
 * Returns: `TRUE` on success; in case of failure, `FALSE` is returned and
 *     the `error` is set
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(FILE* f, GdkPixbuf* pixbuf, char** paramKeys, char** paramValues, GError** err) GdkPixbufModuleSaveFunc;

/**
 * Checks whether the given `option_key` is supported when saving.
 *
 * Params:
 *     optionKey = the option key to check
 *
 * Returns: `TRUE` if the option is supported
 */
public alias extern(C) int function(const(char)* optionKey) GdkPixbufModuleSaveOptionSupportedFunc;

/**
 * Defines the type of the function that gets called once the size
 * of the loaded image is known.
 *
 * The function is expected to set @width and @height to the desired
 * size to which the image should be scaled. If a module has no efficient
 * way to achieve the desired scaling during the loading of the image, it may
 * either ignore the size request, or only approximate it - gdk-pixbuf will
 * then perform the required scaling on the completely loaded image.
 *
 * If the function sets @width or @height to zero, the module should interpret
 * this as a hint that it will be closed soon and shouldn't allocate further
 * resources. This convention is used to implement gdk_pixbuf_get_file_info()
 * efficiently.
 *
 * Params:
 *     width = pointer to a location containing the current image width
 *     height = pointer to a location containing the current image height
 *     userData = the loader.
 *
 * Since: 2.2
 */
public alias extern(C) void function(int* width, int* height, void* userData) GdkPixbufModuleSizeFunc;

/**
 * Finalizes the image loading state.
 *
 * This function is called on success and error states.
 *
 * Params:
 *     context = the state object created by [callback@GdkPixbuf.PixbufModuleBeginLoadFunc]
 *
 * Returns: `TRUE` if the loading operation was successful
 *
 * Throws: GException on failure.
 */
public alias extern(C) int function(void* context, GError** err) GdkPixbufModuleStopLoadFunc;

/**
 * Defines the type of the function that gets called every time a region
 * of @pixbuf is updated.
 *
 * #GdkPixbufLoader uses a function of this type to emit the
 * "<link linkend="GdkPixbufLoader-area-updated">area_updated</link>"
 * signal.
 *
 * Params:
 *     pixbuf = the #GdkPixbuf that is currently being loaded.
 *     x = the X origin of the updated area.
 *     y = the Y origin of the updated area.
 *     width = the width of the updated area.
 *     height = the height of the updated area.
 *     userData = the loader.
 *
 * Since: 2.2
 */
public alias extern(C) void function(GdkPixbuf* pixbuf, int x, int y, int width, int height, void* userData) GdkPixbufModuleUpdatedFunc;

/**
 * Save functions used by [method@GdkPixbuf.Pixbuf.save_to_callback].
 *
 * This function is called once for each block of bytes that is "written"
 * by `gdk_pixbuf_save_to_callback()`.
 *
 * If successful it should return `TRUE`; if an error occurs it should set
 * `error` and return `FALSE`, in which case `gdk_pixbuf_save_to_callback()`
 * will fail with the same error.
 *
 * Params:
 *     buf = bytes to be written.
 *     count = number of bytes in @buf.
 *     error = A location to return an error.
 *     data = user data passed to gdk_pixbuf_save_to_callback().
 *
 * Returns: `TRUE` if successful, `FALSE` otherwise
 *
 * Since: 2.4
 */
public alias extern(C) int function(char* buf, size_t count, GError** error, void* data) GdkPixbufSaveFunc;

import core.stdc.stdio;

/**
 * Major version of gdk-pixbuf library, that is the "0" in
 * "0.8.2" for example.
 */
enum PIXBUF_MAJOR = 2;
alias GDK_PIXBUF_MAJOR = PIXBUF_MAJOR;

/**
 * Micro version of gdk-pixbuf library, that is the "2" in
 * "0.8.2" for example.
 */
enum PIXBUF_MICRO = 8;
alias GDK_PIXBUF_MICRO = PIXBUF_MICRO;

/**
 * Minor version of gdk-pixbuf library, that is the "8" in
 * "0.8.2" for example.
 */
enum PIXBUF_MINOR = 42;
alias GDK_PIXBUF_MINOR = PIXBUF_MINOR;

/**
 * Contains the full version of GdkPixbuf as a string.
 *
 * This is the version being compiled against; contrast with
 * `gdk_pixbuf_version`.
 */
enum PIXBUF_VERSION = "2.42.8";
alias GDK_PIXBUF_VERSION = PIXBUF_VERSION;

/**
 * Magic number for #GdkPixdata structures.
 */
enum PIXBUF_MAGIC_NUMBER = 1197763408;
alias GDK_PIXBUF_MAGIC_NUMBER = PIXBUF_MAGIC_NUMBER;

/**
 * The length of a #GdkPixdata structure without the @pixel_data pointer.
 */
enum PIXDATA_HEADER_LENGTH = 24;
alias GDK_PIXDATA_HEADER_LENGTH = PIXDATA_HEADER_LENGTH;
