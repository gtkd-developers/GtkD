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

public  import gtkc.glibtypes;
public  import gtkc.gobjecttypes;
public  import gtkc.gdktypes;
public  import gtkc.atktypes;
private import std.stdio;

/**
 * This enumeration defines the color spaces that are supported by
 * the gdk-pixbuf library.  Currently only RGB is supported.
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
 * This enumeration describes the different interpolation modes that
 * can be used with the scaling functions. @GDK_INTERP_NEAREST is
 * the fastest scaling method, but has horrible quality when
 * scaling down. @GDK_INTERP_BILINEAR is the best choice if you
 * aren't sure what to choose, it has a good speed/quality balance.
 *
 * <note>
 * Cubic filtering is missing from the list; hyperbolic
 * interpolation is just as fast and results in higher quality.
 * </note>
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
	 */
	HYPER = 3,
}
alias GdkInterpType InterpType;

/**
 * These values can be passed to
 * gdk_pixbuf_render_to_drawable_alpha() to control how the alpha
 * channel of an image should be handled.  This function can create a
 * bilevel clipping mask (black and white) and use it while painting
 * the image.  In the future, when the X Window System gets an alpha
 * channel extension, it will be possible to do full alpha
 * compositing onto arbitrary drawables.  For now both cases fall
 * back to a bilevel clipping mask.
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
 * An error code in the #GDK_PIXBUF_ERROR domain. Many gdk-pixbuf
 * operations can cause errors in this domain, or in the #G_FILE_ERROR
 * domain.
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
 * The possible rotations which can be passed to gdk_pixbuf_rotate_simple().
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

struct GdkPixbufAnimation;

struct GdkPixbufAnimationIter;

struct GdkPixbufFormat;

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

struct GdkPixbufSimpleAnim;

struct GdkPixbufSimpleAnimClass;


struct GdkPixdata
{
	/**
	 * magic number. A valid #GdkPixdata structure must have
	 * #GDK_PIXBUF_MAGIC_NUMBER here.
	 */
	uint magic;
	/**
	 * less than 1 to disable length checks, otherwise
	 * #GDK_PIXDATA_HEADER_LENGTH + length of @pixel_data.
	 */
	int length;
	/**
	 * information about colorspace, sample width and
	 * encoding, in a #GdkPixdataType.
	 */
	uint pixdataType;
	/**
	 * Distance in bytes between rows.
	 */
	uint rowstride;
	/**
	 * Width of the image in pixels.
	 */
	uint width;
	/**
	 * Height of the image in pixels.
	 */
	uint height;
	/**
	 * @width x @height pixels, encoded according to @pixdata_type
	 * and @rowstride.
	 */
	ubyte* pixelData;
}

/**
 * A function of this type is responsible for freeing the pixel array
 * of a pixbuf.  The gdk_pixbuf_new_from_data() function lets you
 * pass in a pre-allocated pixel array so that a pixbuf can be
 * created from it; in this case you will need to pass in a function
 * of #GdkPixbufDestroyNotify so that the pixel data can be freed
 * when the pixbuf is finalized.
 *
 * Params:
 *     pixels = The pixel array of the pixbuf
 *         that is being finalized.
 *     data = User closure data.
 */
public alias extern(C) void function(char* pixels, void* data) GdkPixbufDestroyNotify;

/**
 * Specifies the type of the function passed to
 * gdk_pixbuf_save_to_callback().  It is called once for each block of
 * bytes that is "written" by gdk_pixbuf_save_to_callback().  If
 * successful it should return %TRUE.  If an error occurs it should set
 * @error and return %FALSE, in which case gdk_pixbuf_save_to_callback()
 * will fail with the same error.
 *
 * Params:
 *     buf = bytes to be written.
 *     count = number of bytes in @buf.
 *     error = A location to return an error.
 *     data = user data passed to gdk_pixbuf_save_to_callback().
 *
 * Return: %TRUE if successful, %FALSE (with @error set) if failed.
 *
 * Since: 2.4
 */
public alias extern(C) int function(char* buf, size_t count, GError** error, void* data) GdkPixbufSaveFunc;
