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

module gtkc.gdktypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.giotypes;
public import gtkc.pangotypes;
public import gtkc.gdkpixbuftypes;

const int GDK_MAX_TIMECOORD_AXES = 128;


/**
 * typedef guint32			 GdkWChar;
 * Specifies a wide character type, used to represent character codes.
 * This is needed since some native languages have character sets which have
 * more than 256 characters (Japanese and Chinese, for example).
 * Wide character values between 0 and 127 are always identical in meaning to
 * the ASCII character codes. The wide character value 0 is often used to
 * terminate strings of wide characters in a similar way to normal strings
 * using the char type.
 * An alternative to wide characters is multi-byte characters, which extend
 * normal char strings to cope with larger character sets. As the name suggests,
 * multi-byte characters use a different number of bytes to store different
 * character codes. For example codes 0-127 (i.e. the ASCII codes) often
 * use just one byte of memory, while other codes may use 2, 3 or even 4 bytes.
 * Multi-byte characters have the advantage that they can often be used in an
 * application with little change, since strings are still represented as arrays
 * of char values. However multi-byte strings are much easier to manipulate since
 * the character are all of the same size.
 * Applications typically use wide characters to represent character codes
 * internally, and multi-byte strings when saving the characters to a file.
 * The gdk_wcstombs() and gdk_mbstowcs() functions can be used to convert from
 * one representation to the other.
 * See the 'Extended Characters' section of the GNU C Library Reference Manual
 * for more detailed information on wide and multi-byte characters.
 */
public alias uint GdkWChar;

/**
 * typedef void GdkXEvent;	 /+* Can be cast to window system specific
 * Used to represent native events (XEvents for the X11
 * backend, MSGs for Win32).
 */
public alias void GdkXEvent;

/**
 * typedef gpointer GdkNativeWindow;
 * Used to represent native windows (Windows for the X11 backend,
 * HWNDs for Win32).
 */
public alias void* GdkNativeWindow;

/**
 * typedef GdkAtom GdkSelection;
 * Warning
 * GdkSelection is deprecated and should not be used in newly-written code.
 * The GdkSelection enumeration contains predefined
 * atom values for several common selections.
 */
public alias GdkAtom GdkSelection;

/**
 * typedef GdkAtom GdkSelectionType;
 * Warning
 * GdkSelectionType is deprecated and should not be used in newly-written code.
 * The GdkSelectionType enumeration contains predefined
 * atom values used to represent the types of data transferred
 * in response to a request for a target. See the
 * ICCCM for details about what data should be transferred
 * for each of these types. Other atoms can be used,
 * and the recommended practice for GTK+ is to to use mime
 * types for this purpose. However, supporting these types
 * may be useful for compatibility with older programs.
 */
public alias GdkAtom GdkSelectionType;

/**
 * typedef GdkAtom GdkTarget;
 * Warning
 * GdkTarget is deprecated and should not be used in newly-written code.
 * The GdkTarget enumeration contains predefined atom values which are
 * used to describe possible targets for a selection. Other atoms can be
 * used, and the recommended practice for GTK+ is to to use mime types
 * for this purpose. However, supporting these types may be useful for
 * compatibility with older programs.
 */
public alias GdkAtom GdkTarget;
/**
 * Returned by gdk_pointer_grab() and gdk_keyboard_grab() to indicate
 * success or the reason for the failure of the grab attempt.
 * GDK_GRAB_SUCCESS
 * the resource was successfully grabbed.
 * GDK_GRAB_ALREADY_GRABBED
 * the resource is actively grabbed by another client.
 * GDK_GRAB_INVALID_TIME
 * the resource was grabbed more recently than the
 *  specified time.
 * GDK_GRAB_NOT_VIEWABLE
 * the grab window or the confine_to window are not
 *  viewable.
 * GDK_GRAB_FROZEN
 * the resource is frozen by an active grab of another client.
 */
public enum GdkGrabStatus
{
	SUCCESS = 0,
	ALREADY_GRABBED = 1,
	INVALID_TIME = 2,
	NOT_VIEWABLE = 3,
	FROZEN = 4
}
alias GdkGrabStatus GrabStatus;

/**
 * Warning
 * GdkFillRule is deprecated and should not be used in newly-written code.
 * The method for determining which pixels are included in a region, when
 * creating a GdkRegion from a polygon.
 * The fill rule is only relevant for polygons which overlap themselves.
 * GDK_EVEN_ODD_RULE
 * areas which are overlapped an odd number of times are
 * included in the region, while areas overlapped an even number of times are not.
 * GDK_WINDING_RULE
 * overlapping areas are always included.
 */
public enum GdkFillRule
{
	EVEN_ODD_RULE,
	WINDING_RULE
}
alias GdkFillRule FillRule;

/**
 * Specifies the possible values returned by gdk_region_rect_in().
 * GDK_OVERLAP_RECTANGLE_IN
 * if the rectangle is inside the GdkRegion.
 * GDK_OVERLAP_RECTANGLE_OUT
 * if the rectangle is outside the GdkRegion.
 * GDK_OVERLAP_RECTANGLE_PART
 * if the rectangle is partly inside the GdkRegion.
 */
public enum GdkOverlapType
{
	RECTANGLE_IN,
	RECTANGLE_OUT,
	RECTANGLE_PART
}
alias GdkOverlapType OverlapType;

/**
 * A set of bit flags used to indicate which fields
 * GdkGCValues structure are set.
 * GDK_GC_FOREGROUND
 * the foreground is set.
 * GDK_GC_BACKGROUND
 * the background is set.
 * GDK_GC_FONT
 * the font is set.
 * GDK_GC_FUNCTION
 * the function is set.
 * GDK_GC_FILL
 * the fill is set.
 * GDK_GC_TILE
 * the tile is set.
 * GDK_GC_STIPPLE
 * the stipple is set.
 * GDK_GC_CLIP_MASK
 * the clip_mask is set.
 * GDK_GC_SUBWINDOW
 * the subwindow_mode is set.
 * GDK_GC_TS_X_ORIGIN
 * the ts_x_origin is set.
 * GDK_GC_TS_Y_ORIGIN
 * the ts_y_origin is set.
 * GDK_GC_CLIP_X_ORIGIN
 * the clip_x_origin is set.
 * GDK_GC_CLIP_Y_ORIGIN
 * the clip_y_origin is set.
 * GDK_GC_EXPOSURES
 * the graphics_exposures is set.
 * GDK_GC_LINE_WIDTH
 * the line_width is set.
 * GDK_GC_LINE_STYLE
 * the line_style is set.
 * GDK_GC_CAP_STYLE
 * the cap_style is set.
 * GDK_GC_JOIN_STYLE
 * the join_style is set.
 */
public enum GdkGCValuesMask
{
	FOREGROUND = 1 << 0,
	BACKGROUND = 1 << 1,
	FONT = 1 << 2,
	FUNCTION = 1 << 3,
	FILL = 1 << 4,
	TILE = 1 << 5,
	STIPPLE = 1 << 6,
	CLIP_MASK = 1 << 7,
	SUBWINDOW = 1 << 8,
	TS_X_ORIGIN = 1 << 9,
	TS_Y_ORIGIN = 1 << 10,
	CLIP_X_ORIGIN = 1 << 11,
	CLIP_Y_ORIGIN = 1 << 12,
	EXPOSURES = 1 << 13,
	LINE_WIDTH = 1 << 14,
	LINE_STYLE = 1 << 15,
	CAP_STYLE = 1 << 16,
	JOIN_STYLE = 1 << 17
}
alias GdkGCValuesMask GCValuesMask;

/**
 * Determines how the bit values for the source pixels are combined with
 * the bit values for destination pixels to produce the final result. The
 * sixteen values here correspond to the 16 different possible 2x2 truth
 * tables. Only a couple of these values are usually useful; for colored
 * images, only GDK_COPY, GDK_XOR and GDK_INVERT are generally
 * useful. For bitmaps, GDK_AND and GDK_OR are also useful.
 * GDK_COPY
 * dst = src
 * GDK_INVERT
 * dst = NOT dst
 * GDK_XOR
 * dst = src XOR dst
 * GDK_CLEAR
 * dst = 0
 * GDK_AND
 * dst = dst AND src
 * GDK_AND_REVERSE
 * dst = src AND (NOT dst)
 * GDK_AND_INVERT
 * dst = (NOT src) AND dst
 * GDK_NOOP
 * dst = dst
 * GDK_OR
 * dst = src OR dst
 * GDK_EQUIV
 * dst = (NOT src) XOR dst
 * GDK_OR_REVERSE
 * dst = src OR (NOT dst)
 * GDK_COPY_INVERT
 * dst = NOT src
 * GDK_OR_INVERT
 * dst = (NOT src) OR dst
 * GDK_NAND
 * dst = (NOT src) OR (NOT dst)
 * GDK_NOR
 * dst = (NOT src) AND (NOT dst)
 * GDK_SET
 * dst = 1
 */
public enum GdkFunction
{
	COPY,
	INVERT,
	XOR,
	CLEAR,
	AND,
	AND_REVERSE,
	AND_INVERT,
	NOOP,
	OR,
	EQUIV,
	OR_REVERSE,
	COPY_INVERT,
	OR_INVERT,
	NAND,
	NOR,
	SET
}
alias GdkFunction Funct;

/**
 * Determines how primitives are drawn.
 * GDK_SOLID
 * draw with the foreground color.
 * GDK_TILED
 * draw with a tiled pixmap.
 * GDK_STIPPLED
 * draw using the stipple bitmap. Pixels corresponding
 *  to bits in the stipple bitmap that are set will be drawn in the
 *  foreground color; pixels corresponding to bits that are
 *  not set will be left untouched.
 * GDK_OPAQUE_STIPPLED
 * draw using the stipple bitmap. Pixels corresponding
 *  to bits in the stipple bitmap that are set will be drawn in the
 *  foreground color; pixels corresponding to bits that are
 *  not set will be drawn with the background color.
 */
public enum GdkFill
{
	SOLID,
	TILED,
	STIPPLED,
	OPAQUE_STIPPLED
}
alias GdkFill Fill;

/**
 * Determines how drawing onto a window will affect child
 * windows of that window.
 * GDK_CLIP_BY_CHILDREN
 * only draw onto the window itself.
 * GDK_INCLUDE_INFERIORS
 * draw onto the window and child windows.
 */
public enum GdkSubwindowMode
{
	CLIP_BY_CHILDREN = 0,
	INCLUDE_INFERIORS = 1
}
alias GdkSubwindowMode SubwindowMode;

/**
 * Determines how lines are drawn.
 * GDK_LINE_SOLID
 * lines are drawn solid.
 * GDK_LINE_ON_OFF_DASH
 * even segments are drawn; odd segments are not drawn.
 * GDK_LINE_DOUBLE_DASH
 * even segments are normally. Odd segments are drawn
 *  in the background color if the fill style is GDK_SOLID, or in the background
 *  color masked by the stipple if the fill style is GDK_STIPPLED.
 */
public enum GdkLineStyle
{
	SOLID,
	ON_OFF_DASH,
	DOUBLE_DASH
}
alias GdkLineStyle LineStyle;

/**
 * Determines how the end of lines are drawn.
 * GDK_CAP_NOT_LAST
 * the same as GDK_CAP_BUTT for lines of non-zero width.
 *  for zero width lines, the final point on the line will not be drawn.
 * GDK_CAP_BUTT
 * the ends of the lines are drawn squared off and extending
 *  to the coordinates of the end point.
 * GDK_CAP_ROUND
 * the ends of the lines are drawn as semicircles with the
 *  diameter equal to the line width and centered at the end point.
 * GDK_CAP_PROJECTING
 * the ends of the lines are drawn squared off and extending
 *  half the width of the line beyond the end point.
 */
public enum GdkCapStyle
{
	NOT_LAST,
	BUTT,
	ROUND,
	PROJECTING
}
alias GdkCapStyle CapStyle;

/**
 * Determines how the joins between segments of a polygon are drawn.
 * GDK_JOIN_MITER
 * the sides of each line are extended to meet at an angle.
 * GDK_JOIN_ROUND
 * the sides of the two lines are joined by a circular arc.
 * GDK_JOIN_BEVEL
 * the sides of the two lines are joined by a straight line which
 *  makes an equal angle with each line.
 */
public enum GdkJoinStyle
{
	MITER,
	ROUND,
	BEVEL
}
alias GdkJoinStyle JoinStyle;

/**
 * Selects whether or not GdkRGB applies dithering
 * to the image on display.
 * Since GdkRGB currently only handles images with 8 bits per component,
 * dithering on 24 bit per pixel displays is a moot point.
 * GDK_RGB_DITHER_NONE
 * Never use dithering.
 * GDK_RGB_DITHER_NORMAL
 * Use dithering in 8 bits per pixel (and below)
 * only.
 * GDK_RGB_DITHER_MAX
 * Use dithering in 16 bits per pixel and below.
 */
public enum GdkRgbDither
{
	NONE,
	NORMAL,
	MAX
}
alias GdkRgbDither RgbDither;

/**
 * Specifies the type of a GdkImage.
 * GDK_IMAGE_NORMAL
 * The original X image type, which is quite slow since the
 * image has to be transferred from the client to the server to display it.
 * GDK_IMAGE_SHARED
 * A faster image type, which uses shared memory to transfer
 * the image data between client and server. However this will only be available
 * if client and server are on the same machine and the shared memory extension
 * is supported by the server.
 * GDK_IMAGE_FASTEST
 * Specifies that GDK_IMAGE_SHARED should be tried first,
 * and if that fails then GDK_IMAGE_NORMAL will be used.
 */
public enum GdkImageType
{
	NORMAL,
	SHARED,
	FASTEST
}
alias GdkImageType ImageType;

/**
 * An error code in the GDK_PIXBUF_ERROR domain. Many gdk-pixbuf;
 * operations can cause errors in this domain, or in the G_FILE_ERROR
 * domain.
 * GDK_PIXBUF_ERROR_CORRUPT_IMAGE
 * An image file was broken somehow.
 * GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY
 * Not enough memory.
 * GDK_PIXBUF_ERROR_BAD_OPTION
 * A bad option was passed to a pixbuf save module.
 * GDK_PIXBUF_ERROR_UNKNOWN_TYPE
 * Unknown image type.
 * GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION
 * Don't know how to perform the
 *  given operation on the type of image at hand.
 * GDK_PIXBUF_ERROR_FAILED
 * Generic failure code, something went wrong.
 */
public enum GdkPixbufError
{
	/+* image data hosed +/
	CORRUPT_IMAGE,
	/+* no mem to load image +/
	INSUFFICIENT_MEMORY,
	/+* bad option passed to save routine +/
	BAD_OPTION,
	/+* unsupported image type (sort of an ENOSYS) +/
	UNKNOWN_TYPE,
	/+* unsupported operation (load, save) for image type +/
	UNSUPPORTED_OPERATION,
	FAILED
}
alias GdkPixbufError PixbufError;

/**
 * This enumeration defines the color spaces that are supported by
 * the gdk-pixbuf; library. Currently only RGB is supported.
 * GDK_COLORSPACE_RGB
 * Indicates a red/green/blue additive color space.
 */
public enum GdkColorspace
{
	RGB
}
alias GdkColorspace Colorspace;

/**
 * These values can be passed to
 * gdk_pixbuf_render_to_drawable_alpha() to control how the alpha
 * channel of an image should be handled. This function can create a
 * bilevel clipping mask (black and white) and use it while painting
 * the image. In the future, when the X Window System gets an alpha
 * channel extension, it will be possible to do full alpha
 * compositing onto arbitrary drawables. For now both cases fall
 * back to a bilevel clipping mask.
 * GDK_PIXBUF_ALPHA_BILEVEL
 * A bilevel clipping mask (black and white)
 *  will be created and used to draw the image. Pixels below 0.5 opacity
 *  will be considered fully transparent, and all others will be
 *  considered fully opaque.
 * GDK_PIXBUF_ALPHA_FULL
 * For now falls back to GDK_PIXBUF_ALPHA_BILEVEL.
 *  In the future it will do full alpha compositing.
 */
public enum GdkPixbufAlphaMode
{
	BILEVEL,
	FULL
}
alias GdkPixbufAlphaMode PixbufAlphaMode;

/**
 * This enumeration describes the different interpolation modes that
 *  can be used with the scaling functions. GDK_INTERP_NEAREST is
 *  the fastest scaling method, but has horrible quality when
 *  scaling down. GDK_INTERP_BILINEAR is the best choice if you
 *  aren't sure what to choose, it has a good speed/quality balance.
 * Note
 * 	Cubic filtering is missing from the list; hyperbolic
 * 	interpolation is just as fast and results in higher quality.
 * GDK_INTERP_NEAREST
 * Nearest neighbor sampling; this is the fastest
 *  and lowest quality mode. Quality is normally unacceptable when scaling
 *  down, but may be OK when scaling up.
 * GDK_INTERP_TILES
 * This is an accurate simulation of the PostScript
 *  image operator without any interpolation enabled. Each pixel is
 *  rendered as a tiny parallelogram of solid color, the edges of which
 *  are implemented with antialiasing. It resembles nearest neighbor for
 *  enlargement, and bilinear for reduction.
 * GDK_INTERP_BILINEAR
 * Best quality/speed balance; use this mode by
 *  default. Bilinear interpolation. For enlargement, it is
 *  equivalent to point-sampling the ideal bilinear-interpolated image.
 *  For reduction, it is equivalent to laying down small tiles and
 *  integrating over the coverage area.
 * GDK_INTERP_HYPER
 * This is the slowest and highest quality
 *  reconstruction function. It is derived from the hyperbolic filters in
 *  Wolberg's "Digital Image Warping", and is formally defined as the
 *  hyperbolic-filter sampling the ideal hyperbolic-filter interpolated
 *  image (the filter is designed to be idempotent for 1:1 pixel mapping).
 */
public enum GdkInterpType
{
	NEAREST,
	TILES,
	BILINEAR,
	HYPER
}
alias GdkInterpType InterpType;

/**
 * The possible rotations which can be passed to gdk_pixbuf_rotate_simple().
 * To make them easier to use, their numerical values are the actual degrees.
 * GDK_PIXBUF_ROTATE_NONE
 * No rotation.
 * GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE
 * Rotate by 90 degrees.
 * GDK_PIXBUF_ROTATE_UPSIDEDOWN
 * Rotate by 180 degrees.
 * GDK_PIXBUF_ROTATE_CLOCKWISE
 * Rotate by 270 degrees.
 */
public enum GdkPixbufRotation
{
	ROTATE_NONE = 0,
	ROTATE_COUNTERCLOCKWISE = 90,
	ROTATE_UPSIDEDOWN = 180,
	ROTATE_CLOCKWISE = 270
}
alias GdkPixbufRotation PixbufRotation;

/**
 * A set of values that describe the manner in which the
 * pixel values for a visual are converted into RGB
 * values for display.
 * GDK_VISUAL_STATIC_GRAY
 * Each pixel value indexes a grayscale value directly.
 * GDK_VISUAL_GRAYSCALE
 * Each pixel is an index into a color map that maps pixel
 *  values into grayscale values. The color map can be changed by an application.
 * GDK_VISUAL_STATIC_COLOR
 * Each pixel value is an index into a predefined,
 *  unmodifiable color map that maps pixel values into RGB values.
 * GDK_VISUAL_PSEUDO_COLOR
 * Each pixel is an index into a color map that maps
 *  pixel values into rgb values. The color map can be changed by an application.
 * GDK_VISUAL_TRUE_COLOR
 * Each pixel value directly contains red, green,
 *  and blue components. The red_mask,
 *  green_mask, and
 *  blue_mask fields of the GdkVisual
 *  structure describe how the components are assembled into a pixel value.
 * GDK_VISUAL_DIRECT_COLOR
 * Each pixel value contains red, green, and blue
 *  components as for GDK_VISUAL_TRUE_COLOR, but the components are mapped via a
 *  color table into the final output table instead of being converted directly.
 */
public enum GdkVisualType
{
	STATIC_GRAY,
	GRAYSCALE,
	STATIC_COLOR,
	PSEUDO_COLOR,
	TRUE_COLOR,
	DIRECT_COLOR
}
alias GdkVisualType VisualType;

/**
 * A set of values describing the possible byte-orders
 * for storing pixel values in memory.
 * GDK_LSB_FIRST
 * The values are stored with the least-significant byte
 *  first. For instance, the 32-bit value 0xffeecc would be stored
 *  in memory as 0xcc, 0xee, 0xff, 0x00.
 * GDK_MSB_FIRST
 * The values are stored with the most-significant byte
 * first. For instance, the 32-bit value 0xffeecc would be stored
 * in memory as 0x00, 0xcc, 0xee, 0xff.
 */
public enum GdkByteOrder
{
	LSB_FIRST,
	MSB_FIRST
}
alias GdkByteOrder ByteOrder;

/**
 * Warning
 * GdkFontType is deprecated and should not be used in newly-written code.
 * Indicates the type of a font. The possible values
 * are currently:
 * GDK_FONT_FONT
 * the font is a single font.
 * GDK_FONT_FONTSET
 * the font is a fontset.
 */
public enum GdkFontType
{
	FONT,
	FONTSET
}
alias GdkFontType FontType;

/**
 * The standard cursors available.
 * GDK_X_CURSOR
 * GDK_ARROW
 * GDK_BASED_ARROW_DOWN
 * GDK_BASED_ARROW_UP
 * GDK_BOAT
 * GDK_BOGOSITY
 * GDK_BOTTOM_LEFT_CORNER
 * GDK_BOTTOM_RIGHT_CORNER
 * GDK_BOTTOM_SIDE
 * GDK_BOTTOM_TEE
 * GDK_BOX_SPIRAL
 * GDK_CENTER_PTR
 * GDK_CIRCLE
 * GDK_CLOCK
 * GDK_COFFEE_MUG
 * GDK_CROSS
 * GDK_CROSS_REVERSE
 * GDK_CROSSHAIR
 * GDK_DIAMOND_CROSS
 * GDK_DOT
 * GDK_DOTBOX
 * GDK_DOUBLE_ARROW
 * GDK_DRAFT_LARGE
 * GDK_DRAFT_SMALL
 * GDK_DRAPED_BOX
 * GDK_EXCHANGE
 * GDK_FLEUR
 * GDK_GOBBLER
 * GDK_GUMBY
 * GDK_HAND1
 * GDK_HAND2
 * GDK_HEART
 * GDK_ICON
 * GDK_IRON_CROSS
 * GDK_LEFT_PTR
 * GDK_LEFT_SIDE
 * GDK_LEFT_TEE
 * GDK_LEFTBUTTON
 * GDK_LL_ANGLE
 * GDK_LR_ANGLE
 * GDK_MAN
 * GDK_MIDDLEBUTTON
 * GDK_MOUSE
 * GDK_PENCIL
 * GDK_PIRATE
 * GDK_PLUS
 * GDK_QUESTION_ARROW
 * GDK_RIGHT_PTR
 * GDK_RIGHT_SIDE
 * GDK_RIGHT_TEE
 * GDK_RIGHTBUTTON
 * GDK_RTL_LOGO
 * GDK_SAILBOAT
 * GDK_SB_DOWN_ARROW
 * GDK_SB_H_DOUBLE_ARROW
 * GDK_SB_LEFT_ARROW
 * GDK_SB_RIGHT_ARROW
 * GDK_SB_UP_ARROW
 * GDK_SB_V_DOUBLE_ARROW
 * GDK_SHUTTLE
 * GDK_SIZING
 * GDK_SPIDER
 * GDK_SPRAYCAN
 * GDK_STAR
 * GDK_TARGET
 * GDK_TCROSS
 * GDK_TOP_LEFT_ARROW
 * GDK_TOP_LEFT_CORNER
 * GDK_TOP_RIGHT_CORNER
 * GDK_TOP_SIDE
 * GDK_TOP_TEE
 * GDK_TREK
 * GDK_UL_ANGLE
 * GDK_UMBRELLA
 * GDK_UR_ANGLE
 * GDK_WATCH
 * GDK_XTERM
 * GDK_LAST_CURSOR
 * last cursor type
 * GDK_BLANK_CURSOR
 * Blank cursor. Since 2.16
 * GDK_CURSOR_IS_PIXMAP
 * type of cursors constructed with
 *  gdk_cursor_new_from_pixmap() or gdk_cursor_new_from_pixbuf()
 */
public enum GdkCursorType
{
	X_CURSOR = 0,
	ARROW = 2,
	BASED_ARROW_DOWN = 4,
	BASED_ARROW_UP = 6,
	BOAT = 8,
	BOGOSITY = 10,
	BOTTOM_LEFT_CORNER = 12,
	BOTTOM_RIGHT_CORNER = 14,
	BOTTOM_SIDE = 16,
	BOTTOM_TEE = 18,
	BOX_SPIRAL = 20,
	CENTER_PTR = 22,
	CIRCLE = 24,
	CLOCK = 26,
	COFFEE_MUG = 28,
	CROSS = 30,
	CROSS_REVERSE = 32,
	CROSSHAIR = 34,
	DIAMOND_CROSS = 36,
	DOT = 38,
	DOTBOX = 40,
	DOUBLE_ARROW = 42,
	DRAFT_LARGE = 44,
	DRAFT_SMALL = 46,
	DRAPED_BOX = 48,
	EXCHANGE = 50,
	FLEUR = 52,
	GOBBLER = 54,
	GUMBY = 56,
	HAND1 = 58,
	HAND2 = 60,
	HEART = 62,
	ICON = 64,
	IRON_CROSS = 66,
	LEFT_PTR = 68,
	LEFT_SIDE = 70,
	LEFT_TEE = 72,
	LEFTBUTTON = 74,
	LL_ANGLE = 76,
	LR_ANGLE = 78,
	MAN = 80,
	MIDDLEBUTTON = 82,
	MOUSE = 84,
	PENCIL = 86,
	PIRATE = 88,
	PLUS = 90,
	QUESTION_ARROW = 92,
	RIGHT_PTR = 94,
	RIGHT_SIDE = 96,
	RIGHT_TEE = 98,
	RIGHTBUTTON = 100,
	RTL_LOGO = 102,
	SAILBOAT = 104,
	SB_DOWN_ARROW = 106,
	SB_H_DOUBLE_ARROW = 108,
	SB_LEFT_ARROW = 110,
	SB_RIGHT_ARROW = 112,
	SB_UP_ARROW = 114,
	SB_V_DOUBLE_ARROW = 116,
	SHUTTLE = 118,
	SIZING = 120,
	SPIDER = 122,
	SPRAYCAN = 124,
	STAR = 126,
	TARGET = 128,
	TCROSS = 130,
	TOP_LEFT_ARROW = 132,
	TOP_LEFT_CORNER = 134,
	TOP_RIGHT_CORNER = 136,
	TOP_SIDE = 138,
	TOP_TEE = 140,
	TREK = 142,
	UL_ANGLE = 144,
	UMBRELLA = 146,
	UR_ANGLE = 148,
	WATCH = 150,
	XTERM = 152,
	LAST_CURSOR,
	BLANK_CURSOR = -2,
	CURSOR_IS_PIXMAP = -1
}
alias GdkCursorType CursorType;

/**
 * Describes the kind of window.
 * GDK_WINDOW_ROOT
 * root window; this window has no parent, covers the entire screen, and is created by the window system
 * GDK_WINDOW_TOPLEVEL
 * toplevel window (used to implement GtkWindow)
 * GDK_WINDOW_CHILD
 * child window (used to implement e.g. GtkEntry)
 * GDK_WINDOW_DIALOG
 * useless/deprecated compatibility type
 * GDK_WINDOW_TEMP
 * override redirect temporary window (used to implement GtkMenu)
 * GDK_WINDOW_FOREIGN
 * foreign window (see gdk_window_foreign_new())
 * GDK_WINDOW_OFFSCREEN
 * offscreen window (see the section called “Offscreen Windows”). Since 2.18
 */
public enum GdkWindowType
{
	ROOT,
	TOPLEVEL,
	CHILD,
	DIALOG,
	TEMP,
	FOREIGN,
	OFFSCREEN
}
alias GdkWindowType WindowType;

/**
 * GDK_INPUT_OUTPUT windows are the standard kind of window you might expect.
 * GDK_INPUT_ONLY windows are invisible; they are used to trap events, but
 * you can't draw on them.
 * GDK_INPUT_OUTPUT
 * window for graphics and events
 * GDK_INPUT_ONLY
 * window for events only
 */
public enum GdkWindowClass
{
	INPUT_OUTPUT,
	INPUT_ONLY
}
alias GdkWindowClass WindowClass;

/**
 * Used to indicate which fields of a GdkGeometry struct should be paid attention
 * to. Also, the presence/absence of GDK_HINT_POS, GDK_HINT_USER_POS, and
 * GDK_HINT_USER_SIZE is significant, though they don't directly refer to
 * GdkGeometry fields. GDK_HINT_USER_POS will be set automatically by GtkWindow
 * if you call gtk_window_move(). GDK_HINT_USER_POS and GDK_HINT_USER_SIZE
 * should be set if the user specified a size/position using a --geometry
 * command-line argument; gtk_window_parse_geometry() automatically sets these
 * flags.
 * GDK_HINT_POS
 * indicates that the program has positioned the window
 * GDK_HINT_MIN_SIZE
 * min size fields are set
 * GDK_HINT_MAX_SIZE
 * max size fields are set
 * GDK_HINT_BASE_SIZE
 * base size fields are set
 * GDK_HINT_ASPECT
 * aspect ratio fields are set
 * GDK_HINT_RESIZE_INC
 * resize increment fields are set
 * GDK_HINT_WIN_GRAVITY
 * window gravity field is set
 * GDK_HINT_USER_POS
 * indicates that the window's position was explicitly set by the user
 * GDK_HINT_USER_SIZE
 * indicates that the window's size was explicitly set by the user
 */
public enum GdkWindowHints
{
	HINT_POS = 1 << 0,
	HINT_MIN_SIZE = 1 << 1,
	HINT_MAX_SIZE = 1 << 2,
	HINT_BASE_SIZE = 1 << 3,
	HINT_ASPECT = 1 << 4,
	HINT_RESIZE_INC = 1 << 5,
	HINT_WIN_GRAVITY = 1 << 6,
	HINT_USER_POS = 1 << 7,
	HINT_USER_SIZE = 1 << 8
}
alias GdkWindowHints WindowHints;

/**
 * Defines the reference point of a window and the meaning of coordinates
 * passed to gtk_window_move(). See gtk_window_move() and the "implementation
 * notes" section of the
 * Extended
 * Window Manager Hints specification for more details.
 * GDK_GRAVITY_NORTH_WEST
 * the reference point is at the top left corner.
 * GDK_GRAVITY_NORTH
 * the reference point is in the middle of the top edge.
 * GDK_GRAVITY_NORTH_EAST
 * the reference point is at the top right corner.
 * GDK_GRAVITY_WEST
 * the reference point is at the middle of the left edge.
 * GDK_GRAVITY_CENTER
 * the reference point is at the center of the window.
 * GDK_GRAVITY_EAST
 * the reference point is at the middle of the right edge.
 * GDK_GRAVITY_SOUTH_WEST
 * the reference point is at the lower left corner.
 * GDK_GRAVITY_SOUTH
 * the reference point is at the middle of the lower edge.
 * GDK_GRAVITY_SOUTH_EAST
 * the reference point is at the lower right corner.
 * GDK_GRAVITY_STATIC
 * the reference point is at the top left corner of the
 *  window itself, ignoring window manager decorations.
 */
public enum GdkGravity
{
	NORTH_WEST = 1,
	NORTH,
	NORTH_EAST,
	WEST,
	CENTER,
	EAST,
	SOUTH_WEST,
	SOUTH,
	SOUTH_EAST,
	STATIC
}
alias GdkGravity Gravity;

/**
 * Determines a window edge or corner.
 * GDK_WINDOW_EDGE_NORTH_WEST
 * the top left corner.
 * GDK_WINDOW_EDGE_NORTH
 * the top edge.
 * GDK_WINDOW_EDGE_NORTH_EAST
 * the top right corner.
 * GDK_WINDOW_EDGE_WEST
 * the left edge.
 * GDK_WINDOW_EDGE_EAST
 * the right edge.
 * GDK_WINDOW_EDGE_SOUTH_WEST
 * the lower left corner.
 * GDK_WINDOW_EDGE_SOUTH
 * the lower edge.
 * GDK_WINDOW_EDGE_SOUTH_EAST
 * the lower right corner.
 */
public enum GdkWindowEdge
{
	NORTH_WEST,
	NORTH,
	NORTH_EAST,
	WEST,
	EAST,
	SOUTH_WEST,
	SOUTH,
	SOUTH_EAST
}
alias GdkWindowEdge WindowEdge;

/**
 * These are hints for the window manager that indicate what type of function
 * the window has. The window manager can use this when determining decoration
 * and behaviour of the window. The hint must be set before mapping the window.
 * See the
 * Extended
 * Window Manager Hints specification for more details about
 * window types.
 * GDK_WINDOW_TYPE_HINT_NORMAL
 * Normal toplevel window.
 * GDK_WINDOW_TYPE_HINT_DIALOG
 * Dialog window.
 * GDK_WINDOW_TYPE_HINT_MENU
 * Window used to implement a menu; GTK+ uses
 *  this hint only for torn-off menus, see GtkTearoffMenuItem.
 * GDK_WINDOW_TYPE_HINT_TOOLBAR
 * Window used to implement toolbars.
 * GDK_WINDOW_TYPE_HINT_SPLASHSCREEN
 * Window used to display a splash
 *  screen during application startup.
 * GDK_WINDOW_TYPE_HINT_UTILITY
 * Utility windows which are not detached
 *  toolbars or dialogs.
 * GDK_WINDOW_TYPE_HINT_DOCK
 * Used for creating dock or panel windows.
 * GDK_WINDOW_TYPE_HINT_DESKTOP
 * Used for creating the desktop background
 * window.
 * GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU
 * A menu that belongs to a menubar.
 * GDK_WINDOW_TYPE_HINT_POPUP_MENU
 * A menu that does not belong to a menubar,
 *  e.g. a context menu.
 * GDK_WINDOW_TYPE_HINT_TOOLTIP
 * A tooltip.
 * GDK_WINDOW_TYPE_HINT_NOTIFICATION
 * A notification - typically a "bubble"
 *  that belongs to a status icon.
 * GDK_WINDOW_TYPE_HINT_COMBO
 * A popup from a combo box.
 * GDK_WINDOW_TYPE_HINT_DND
 * A window that is used to implement a DND cursor.
 */
public enum GdkWindowTypeHint
{
	NORMAL,
	DIALOG,
	MENU, /+* Torn off menu +/
	TOOLBAR,
	SPLASHSCREEN,
	UTILITY,
	DOCK,
	DESKTOP,
	DROPDOWN_MENU, /+* A drop down menu (from a menubar) +/
	POPUP_MENU, /+* A popup menu (from right-click) +/
	TOOLTIP,
	NOTIFICATION,
	COMBO,
	DND
}
alias GdkWindowTypeHint WindowTypeHint;

/**
 * Used to indicate which fields in the GdkWindowAttr struct should be
 * honored. For example, if you filled in the "cursor" and "x" fields of
 * GdkWindowAttr, pass "GDK_WA_X | GDK_WA_CURSOR" to gdk_window_new(). Fields
 * in GdkWindowAttr not covered by a bit in this enum are required; for example,
 * the width/height, wclass, and window_type fields are required, they have no
 * corresponding flag in GdkWindowAttributesType.
 * GDK_WA_TITLE
 * Honor the title field
 * GDK_WA_X
 * Honor the X coordinate field
 * GDK_WA_Y
 * Honor the Y coordinate field
 * GDK_WA_CURSOR
 * Honor the cursor field
 * GDK_WA_COLORMAP
 * Honor the colormap field
 * GDK_WA_VISUAL
 * Honor the visual field
 * GDK_WA_WMCLASS
 * Honor the wmclass_class and wmclass_name fields
 * GDK_WA_NOREDIR
 * Honor the override_redirect field
 * GDK_WA_TYPE_HINT
 * Honor the type_hint field
 */
public enum GdkWindowAttributesType
{
	WA_TITLE = 1 << 1,
	WA_X = 1 << 2,
	WA_Y = 1 << 3,
	WA_CURSOR = 1 << 4,
	WA_COLORMAP = 1 << 5,
	WA_VISUAL = 1 << 6,
	WA_WMCLASS = 1 << 7,
	WA_NOREDIR = 1 << 8,
	WA_TYPE_HINT = 1 << 9
}
alias GdkWindowAttributesType WindowAttributesType;

/**
 * Specifies the result of applying a GdkFilterFunc to a native event.
 * GDK_FILTER_CONTINUE
 * event not handled, continue processing.
 * GDK_FILTER_TRANSLATE
 * native event translated into a GDK event and stored
 *  in the event structure that was passed in.
 * GDK_FILTER_REMOVE
 * event handled, terminate processing.
 */
public enum GdkFilterReturn
{
	CONTINUE, /+* Event not handled, continu processesing +/
	TRANSLATE, /+* Native event translated into a GDK event and
	stored inn the "event" structure that was
	passed inn +/
	REMOVE /+* Terminate processing, removing event +/
}
alias GdkFilterReturn FilterReturn;

/**
 * A set of bit-flags to indicate the state of modifier keys and mouse buttons
 * in various event types. Typical modifier keys are Shift, Control, Meta, Super,
 * Hyper, Alt, Compose, Apple, CapsLock or ShiftLock.
 * Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.
 * Since 2.10, GDK recognizes which of the Meta, Super or Hyper keys are mapped
 * to Mod2 - Mod5, and indicates this by setting GDK_SUPER_MASK, GDK_HYPER_MASK
 * or GDK_META_MASK in the state field of key events.
 * GDK_SHIFT_MASK
 * the Shift key.
 * GDK_LOCK_MASK
 * a Lock key (depending on the modifier mapping of the
 *  X server this may either be CapsLock or ShiftLock).
 * GDK_CONTROL_MASK
 * the Control key.
 * GDK_MOD1_MASK
 * the fourth modifier key (it depends on the modifier
 *  mapping of the X server which key is interpreted as this modifier, but
 *  normally it is the Alt key).
 * GDK_MOD2_MASK
 * the fifth modifier key (it depends on the modifier
 *  mapping of the X server which key is interpreted as this modifier).
 * GDK_MOD3_MASK
 * the sixth modifier key (it depends on the modifier
 *  mapping of the X server which key is interpreted as this modifier).
 * GDK_MOD4_MASK
 * the seventh modifier key (it depends on the modifier
 *  mapping of the X server which key is interpreted as this modifier).
 * GDK_MOD5_MASK
 * the eighth modifier key (it depends on the modifier
 *  mapping of the X server which key is interpreted as this modifier).
 * GDK_BUTTON1_MASK
 * the first mouse button.
 * GDK_BUTTON2_MASK
 * the second mouse button.
 * GDK_BUTTON3_MASK
 * the third mouse button.
 * GDK_BUTTON4_MASK
 * the fourth mouse button.
 * GDK_BUTTON5_MASK
 * the fifth mouse button.
 * GDK_SUPER_MASK
 * the Super modifier. Since 2.10
 * GDK_HYPER_MASK
 * the Hyper modifier. Since 2.10
 * GDK_META_MASK
 * the Meta modifier. Since 2.10
 * GDK_RELEASE_MASK
 * not used in GDK itself. GTK+ uses it to differentiate
 *  between (keyval, modifiers) pairs from key press and release events.
 * GDK_MODIFIER_MASK
 * a mask covering all modifier types.
 */
public enum GdkModifierType
{
	SHIFT_MASK = 1 << 0,
	LOCK_MASK = 1 << 1,
	CONTROL_MASK = 1 << 2,
	MOD1_MASK = 1 << 3,
	MOD2_MASK = 1 << 4,
	MOD3_MASK = 1 << 5,
	MOD4_MASK = 1 << 6,
	MOD5_MASK = 1 << 7,
	BUTTON1_MASK = 1 << 8,
	BUTTON2_MASK = 1 << 9,
	BUTTON3_MASK = 1 << 10,
	BUTTON4_MASK = 1 << 11,
	BUTTON5_MASK = 1 << 12,
	/+* The next few modifiers are used by XKB, so we skip to the end.
	 * Bits 15 - 25 are currently unused. Bit 29 is used internally.
	+/
	SUPER_MASK = 1 << 26,
	HYPER_MASK = 1 << 27,
	META_MASK = 1 << 28,
	RELEASE_MASK = 1 << 30,
	MODIFIER_MASK = 0x5c001fff
}
alias GdkModifierType ModifierType;

/**
 * These are hints originally defined by the Motif toolkit.
 * The window manager can use them when determining how to decorate
 * the window. The hint must be set before mapping the window.
 * GDK_DECOR_ALL
 * all decorations should be applied.
 * GDK_DECOR_BORDER
 * a frame should be drawn around the window.
 * GDK_DECOR_RESIZEH
 * the frame should have resize handles.
 * GDK_DECOR_TITLE
 * a titlebar should be placed above the window.
 * GDK_DECOR_MENU
 * a button for opening a menu should be included.
 * GDK_DECOR_MINIMIZE
 * a minimize button should be included.
 * GDK_DECOR_MAXIMIZE
 * a maximize button should be included.
 */
public enum GdkWMDecoration
{
	DECOR_ALL = 1 << 0,
	DECOR_BORDER = 1 << 1,
	DECOR_RESIZEH = 1 << 2,
	DECOR_TITLE = 1 << 3,
	DECOR_MENU = 1 << 4,
	DECOR_MINIMIZE = 1 << 5,
	DECOR_MAXIMIZE = 1 << 6
}
alias GdkWMDecoration WMDecoration;

/**
 * These are hints originally defined by the Motif toolkit.
 * The window manager can use them when determining the functions
 * to offer for the window.
 * The hint must be set before mapping the window.
 * GDK_FUNC_ALL
 * all functions should be offered.
 * GDK_FUNC_RESIZE
 * the window should be resizable.
 * GDK_FUNC_MOVE
 * the window should be movable.
 * GDK_FUNC_MINIMIZE
 * the window should be minimizable.
 * GDK_FUNC_MAXIMIZE
 * the window should be maximizable.
 * GDK_FUNC_CLOSE
 * the window should be closable.
 */
public enum GdkWMFunction
{
	FUNC_ALL = 1 << 0,
	FUNC_RESIZE = 1 << 1,
	FUNC_MOVE = 1 << 2,
	FUNC_MINIMIZE = 1 << 3,
	FUNC_MAXIMIZE = 1 << 4,
	FUNC_CLOSE = 1 << 5
}
alias GdkWMFunction WMFunction;

/**
 * Specifies the type of the event.
 * Do not confuse these events with the signals that GTK+ widgets emit.
 * Although many of these events result in corresponding signals being emitted,
 * the events are often transformed or filtered along the way.
 * GDK_NOTHING
 * a special code to indicate a null event.
 * GDK_DELETE
 * the window manager has requested that the toplevel window be
 * hidden or destroyed, usually when the user clicks on a special icon in the
 * title bar.
 * GDK_DESTROY
 * the window has been destroyed.
 * GDK_EXPOSE
 * all or part of the window has become visible and needs to be
 * redrawn.
 * GDK_MOTION_NOTIFY
 * the pointer (usually a mouse) has moved.
 * GDK_BUTTON_PRESS
 * a mouse button has been pressed.
 * GDK_2BUTTON_PRESS
 * a mouse button has been double-clicked (clicked twice
 * within a short period of time). Note that each click also generates a
 * GDK_BUTTON_PRESS event.
 * GDK_3BUTTON_PRESS
 * a mouse button has been clicked 3 times in a short period
 * of time. Note that each click also generates a GDK_BUTTON_PRESS event.
 * GDK_BUTTON_RELEASE
 * a mouse button has been released.
 * GDK_KEY_PRESS
 * a key has been pressed.
 * GDK_KEY_RELEASE
 * a key has been released.
 * GDK_ENTER_NOTIFY
 * the pointer has entered the window.
 * GDK_LEAVE_NOTIFY
 * the pointer has left the window.
 * GDK_FOCUS_CHANGE
 * the keyboard focus has entered or left the window.
 * GDK_CONFIGURE
 * the size, position or stacking order of the window has changed.
 * Note that GTK+ discards these events for GDK_WINDOW_CHILD windows.
 * GDK_MAP
 * the window has been mapped.
 * GDK_UNMAP
 * the window has been unmapped.
 * GDK_PROPERTY_NOTIFY
 * a property on the window has been changed or deleted.
 * GDK_SELECTION_CLEAR
 * the application has lost ownership of a selection.
 * GDK_SELECTION_REQUEST
 * another application has requested a selection.
 * GDK_SELECTION_NOTIFY
 * a selection has been received.
 * GDK_PROXIMITY_IN
 * an input device has moved into contact with a sensing
 * surface (e.g. a touchscreen or graphics tablet).
 * GDK_PROXIMITY_OUT
 * an input device has moved out of contact with a sensing
 * surface.
 * GDK_DRAG_ENTER
 * the mouse has entered the window while a drag is in progress.
 * GDK_DRAG_LEAVE
 * the mouse has left the window while a drag is in progress.
 * GDK_DRAG_MOTION
 * the mouse has moved in the window while a drag is in
 * progress.
 * GDK_DRAG_STATUS
 * the status of the drag operation initiated by the window
 * has changed.
 * GDK_DROP_START
 * a drop operation onto the window has started.
 * GDK_DROP_FINISHED
 * the drop operation initiated by the window has completed.
 * GDK_CLIENT_EVENT
 * a message has been received from another application.
 * GDK_VISIBILITY_NOTIFY
 * the window visibility status has changed.
 * GDK_NO_EXPOSE
 * indicates that the source region was completely available
 * when parts of a drawable were copied. This is not very useful.
 * GDK_SCROLL
 * the scroll wheel was turned
 * GDK_WINDOW_STATE
 * the state of a window has changed. See GdkWindowState
 * for the possible window states
 * GDK_SETTING
 * a setting has been modified.
 * GDK_OWNER_CHANGE
 * the owner of a selection has changed. This event type
 *  was added in 2.6
 * GDK_GRAB_BROKEN
 * a pointer or keyboard grab was broken. This event type
 *  was added in 2.8.
 * GDK_DAMAGE
 * the content of the window has been changed. This event type
 *  was added in 2.14.
 * GDK_EVENT_LAST
 * marks the end of the GdkEventType enumeration. Added in 2.18
 */
public enum GdkEventType
{
	NOTHING = -1,
	DELETE = 0,
	DESTROY = 1,
	EXPOSE = 2,
	MOTION_NOTIFY = 3,
	BUTTON_PRESS = 4,
	DOUBLE_BUTTON_PRESS = 5,
	TRIPLE_BUTTON_PRESS = 6,
	BUTTON_RELEASE = 7,
	KEY_PRESS = 8,
	KEY_RELEASE = 9,
	ENTER_NOTIFY = 10,
	LEAVE_NOTIFY = 11,
	FOCUS_CHANGE = 12,
	CONFIGURE = 13,
	MAP = 14,
	UNMAP = 15,
	PROPERTY_NOTIFY = 16,
	SELECTION_CLEAR = 17,
	SELECTION_REQUEST = 18,
	SELECTION_NOTIFY = 19,
	PROXIMITY_IN = 20,
	PROXIMITY_OUT = 21,
	DRAG_ENTER = 22,
	DRAG_LEAVE = 23,
	DRAG_MOTION = 24,
	DRAG_STATUS = 25,
	DROP_START = 26,
	DROP_FINISHED = 27,
	CLIENT_EVENT = 28,
	VISIBILITY_NOTIFY = 29,
	NO_EXPOSE = 30,
	SCROLL = 31,
	WINDOW_STATE = 32,
	SETTING = 33,
	OWNER_CHANGE = 34,
	GRAB_BROKEN = 35,
	DAMAGE = 36,
	EVENT_LAST /+* helper variable for decls +/
}
alias GdkEventType EventType;

/**
 * A set of bit-flags to indicate which events a window is to receive.
 * Most of these masks map onto one or more of the GdkEventType event types
 * above.
 * GDK_POINTER_MOTION_HINT_MASK is a special mask which is used to reduce the
 * number of GDK_MOTION_NOTIFY events received. Normally a GDK_MOTION_NOTIFY
 * event is received each time the mouse moves. However, if the application
 * spends a lot of time processing the event (updating the display, for example),
 * it can lag behind the position of the mouse. When using
 * GDK_POINTER_MOTION_HINT_MASK, fewer GDK_MOTION_NOTIFY events will be sent,
 * some of which are marked as a hint (the is_hint member is TRUE).
 * To receive more motion events after a motion hint event, the application
 * needs to asks for more, by calling gdk_event_request_motions().
 * GDK_EXPOSURE_MASK
 * receive expose events
 * GDK_POINTER_MOTION_MASK
 * receive all pointer motion events
 * GDK_POINTER_MOTION_HINT_MASK
 * see the explanation above
 * GDK_BUTTON_MOTION_MASK
 * receive pointer motion events while any button is pressed
 * GDK_BUTTON1_MOTION_MASK
 * receive pointer motion events while 1 button is pressed
 * GDK_BUTTON2_MOTION_MASK
 * receive pointer motion events while 2 button is pressed
 * GDK_BUTTON3_MOTION_MASK
 * receive pointer motion events while 3 button is pressed
 * GDK_BUTTON_PRESS_MASK
 * receive button press events
 * GDK_BUTTON_RELEASE_MASK
 * receive button release events
 * GDK_KEY_PRESS_MASK
 * receive key press events
 * GDK_KEY_RELEASE_MASK
 * receive key release events
 * GDK_ENTER_NOTIFY_MASK
 * receive window enter events
 * GDK_LEAVE_NOTIFY_MASK
 * receive window leave events
 * GDK_FOCUS_CHANGE_MASK
 * receive focus change events
 * GDK_STRUCTURE_MASK
 * receive events about window configuration change
 * GDK_PROPERTY_CHANGE_MASK
 * receive property change events
 * GDK_VISIBILITY_NOTIFY_MASK
 * receive visibility change events
 * GDK_PROXIMITY_IN_MASK
 * receive proximity in events
 * GDK_PROXIMITY_OUT_MASK
 * receive proximity out events
 * GDK_SUBSTRUCTURE_MASK
 * receive events about window configuration changes of
 *  child windows
 * GDK_SCROLL_MASK
 * receive scroll events
 * GDK_ALL_EVENTS_MASK
 * the combination of all the above event masks.
 */
public enum GdkEventMask
{
	EXPOSURE_MASK = 1 << 1,
	POINTER_MOTION_MASK = 1 << 2,
	POINTER_MOTION_HINT_MASK = 1 << 3,
	BUTTON_MOTION_MASK = 1 << 4,
	BUTTON1_MOTION_MASK = 1 << 5,
	BUTTON2_MOTION_MASK = 1 << 6,
	BUTTON3_MOTION_MASK = 1 << 7,
	BUTTON_PRESS_MASK = 1 << 8,
	BUTTON_RELEASE_MASK = 1 << 9,
	KEY_PRESS_MASK = 1 << 10,
	KEY_RELEASE_MASK = 1 << 11,
	ENTER_NOTIFY_MASK = 1 << 12,
	LEAVE_NOTIFY_MASK = 1 << 13,
	FOCUS_CHANGE_MASK = 1 << 14,
	STRUCTURE_MASK = 1 << 15,
	PROPERTY_CHANGE_MASK = 1 << 16,
	VISIBILITY_NOTIFY_MASK = 1 << 17,
	PROXIMITY_IN_MASK = 1 << 18,
	PROXIMITY_OUT_MASK = 1 << 19,
	SUBSTRUCTURE_MASK = 1 << 20,
	SCROLL_MASK = 1 << 21,
	ALL_EVENTS_MASK = 0x3FFFFE
}
alias GdkEventMask EventMask;

/**
 * Specifies the direction for GdkEventScroll.
 * GDK_SCROLL_UP
 * the window is scrolled up.
 * GDK_SCROLL_DOWN
 * the window is scrolled down.
 * GDK_SCROLL_LEFT
 * the window is scrolled to the left.
 * GDK_SCROLL_RIGHT
 * the window is scrolled to the right.
 */
public enum GdkScrollDirection
{
	UP,
	DOWN,
	LEFT,
	RIGHT
}
alias GdkScrollDirection ScrollDirection;

/**
 * Specifies the visiblity status of a window for a GdkEventVisibility.
 * GDK_VISIBILITY_UNOBSCURED
 * the window is completely visible.
 * GDK_VISIBILITY_PARTIAL
 * the window is partially visible.
 * GDK_VISIBILITY_FULLY_OBSCURED
 * the window is not visible at all.
 */
public enum GdkVisibilityState
{
	UNOBSCURED,
	PARTIAL,
	FULLY_OBSCURED
}
alias GdkVisibilityState VisibilityState;

/**
 * Specifies the crossing mode for GdkEventCrossing.
 * GDK_CROSSING_NORMAL
 * crossing because of pointer motion.
 * GDK_CROSSING_GRAB
 * crossing because a grab is activated.
 * GDK_CROSSING_UNGRAB
 * crossing because a grab is deactivated.
 * GDK_CROSSING_GTK_GRAB
 * crossing because a GTK+ grab is activated.
 * GDK_CROSSING_GTK_UNGRAB
 * crossing because a GTK+ grab is deactivated.
 * GDK_CROSSING_STATE_CHANGED
 * crossing because a GTK+ widget changed state (e.g.
 *  sensitivity).
 */
public enum GdkCrossingMode
{
	NORMAL,
	GRAB,
	UNGRAB,
	GTK_GRAB,
	GTK_UNGRAB,
	STATE_CHANGED
}
alias GdkCrossingMode CrossingMode;

/**
 * Specifies the kind of crossing for GdkEventCrossing.
 * See the X11 protocol specification of LeaveNotify for
 * full details of crossing event generation.
 * GDK_NOTIFY_ANCESTOR
 * the window is entered from an ancestor or
 *  left towards an ancestor.
 * GDK_NOTIFY_VIRTUAL
 * the pointer moves between an ancestor and an
 *  inferior of the window.
 * GDK_NOTIFY_INFERIOR
 * the window is entered from an inferior or
 *  left towards an inferior.
 * GDK_NOTIFY_NONLINEAR
 *  the window is entered from or left towards
 *  a window which is neither an ancestor nor an inferior.
 * GDK_NOTIFY_NONLINEAR_VIRTUAL
 * the pointer moves between two windows
 *  which are not ancestors of each other and the window is part of
 *  the ancestor chain between one of these windows and their least
 *  common ancestor.
 * GDK_NOTIFY_UNKNOWN
 * an unknown type of enter/leave event occurred.
 */
public enum GdkNotifyType
{
	ANCESTOR = 0,
	VIRTUAL = 1,
	INFERIOR = 2,
	NONLINEAR = 3,
	NONLINEAR_VIRTUAL = 4,
	UNKNOWN = 5
}
alias GdkNotifyType NotifyType;

/**
 * Specifies the type of a property change for a GdkEventProperty.
 * GDK_PROPERTY_NEW_VALUE
 * the property value was changed.
 * GDK_PROPERTY_DELETE
 * the property was deleted.
 */
public enum GdkPropertyState
{
	NEW_VALUE,
	DELETE
}
alias GdkPropertyState PropertyState;

/**
 * Specifies the state of a toplevel window.
 * GDK_WINDOW_STATE_WITHDRAWN
 * the window is not shown.
 * GDK_WINDOW_STATE_ICONIFIED
 * the window is minimized.
 * GDK_WINDOW_STATE_MAXIMIZED
 * the window is maximized.
 * GDK_WINDOW_STATE_STICKY
 * the window is sticky.
 * GDK_WINDOW_STATE_FULLSCREEN
 * the window is maximized without decorations.
 * GDK_WINDOW_STATE_ABOVE
 * the window is kept above other windows.
 * GDK_WINDOW_STATE_BELOW
 * the window is kept below other windows.
 */
public enum GdkWindowState
{
	WITHDRAWN = 1 << 0,
	ICONIFIED = 1 << 1,
	MAXIMIZED = 1 << 2,
	STICKY = 1 << 3,
	FULLSCREEN = 1 << 4,
	ABOVE = 1 << 5,
	BELOW = 1 << 6
}
alias GdkWindowState WindowState;

/**
 * Specifies the kind of modification applied to a setting in a GdkEventSetting.
 * GDK_SETTING_ACTION_NEW
 * a setting was added.
 * GDK_SETTING_ACTION_CHANGED
 * a setting was changed.
 * GDK_SETTING_ACTION_DELETED
 * a setting was deleted.
 */
public enum GdkSettingAction
{
	NEW,
	CHANGED,
	DELETED
}
alias GdkSettingAction SettingAction;

/**
 * Specifies why a selection ownership was changed.
 * GDK_OWNER_CHANGE_NEW_OWNER
 * some other app claimed the ownership
 * GDK_OWNER_CHANGE_DESTROY
 * the window was destroyed
 * GDK_OWNER_CHANGE_CLOSE
 * the client was closed
 */
public enum GdkOwnerChange
{
	NEW_OWNER,
	DESTROY,
	CLOSE
}
alias GdkOwnerChange OwnerChange;

/**
 * Used in GdkDragContext to indicate the protocol according to
 * which DND is done.
 * GDK_DRAG_PROTO_MOTIF
 * The Motif DND protocol.
 * GDK_DRAG_PROTO_XDND
 * The Xdnd protocol.
 * GDK_DRAG_PROTO_ROOTWIN
 * An extension to the Xdnd protocol for
 *  unclaimed root window drops.
 * GDK_DRAG_PROTO_NONE
 * no protocol.
 * GDK_DRAG_PROTO_WIN32_DROPFILES
 * The simple WM_DROPFILES protocol.
 * GDK_DRAG_PROTO_OLE2
 * The complex OLE2 DND protocol (not implemented).
 * GDK_DRAG_PROTO_LOCAL
 * Intra-application DND.
 */
public enum GdkDragProtocol
{
	MOTIF,
	XDND,
	ROOTWIN, /+* A root window with nobody claiming
	 * drags +/
	NONE, /+* Not a valid drag window +/
	WIN32_DROPFILES, /+* The simple WM_DROPFILES dnd +/
	OLE2, /+* The complex OLE2 dnd (not implemented) +/
	LOCAL /+* Intra-app +/
}
alias GdkDragProtocol DragProtocol;

/**
 * Used in GdkDragContext to indicate what the destination
 * should do with the dropped data.
 * GDK_ACTION_DEFAULT
 * Means nothing, and should not be used.
 * GDK_ACTION_COPY
 * Copy the data.
 * GDK_ACTION_MOVE
 * Move the data, i.e. first copy it, then delete
 *  it from the source using the DELETE target of the X selection protocol.
 * GDK_ACTION_LINK
 * Add a link to the data. Note that this is only
 *  useful if source and destination agree on what it means.
 * GDK_ACTION_PRIVATE
 * Special action which tells the source that the
 *  destination will do something that the source doesn't understand.
 * GDK_ACTION_ASK
 * Ask the user what to do with the data.
 */
public enum GdkDragAction
{
	ACTION_DEFAULT = 1 << 0,
	ACTION_COPY = 1 << 1,
	ACTION_MOVE = 1 << 2,
	ACTION_LINK = 1 << 3,
	ACTION_PRIVATE = 1 << 4,
	ACTION_ASK = 1 << 5
}
alias GdkDragAction DragAction;

/**
 * Describes how existing data is combined with new data when
 * using gdk_property_change().
 * GDK_PROP_MODE_REPLACE
 * the new data replaces the existing data.
 * GDK_PROP_MODE_PREPEND
 * the new data is prepended to the existing data.
 * GDK_PROP_MODE_APPEND
 * the new data is appended to the existing data.
 */
public enum GdkPropMode
{
	MODE_REPLACE,
	MODE_PREPEND,
	MODE_APPEND
}
alias GdkPropMode PropMode;

/**
 * A set of bit flags used to specify conditions for which
 * an input callback will be triggered. The three members
 * of this enumeration correspond to the readfds,
 * writefds, and exceptfds arguments to the
 * select system call.
 * GDK_INPUT_READ
 * the file descriptor has become available for reading.
 * (Or, as is standard in Unix, a socket or pipe was closed
 * at the other end; this is the case if a subsequent read
 * on the file descriptor returns a count of zero.)
 * GDK_INPUT_WRITE
 * the file descriptor has become available for writing.
 * GDK_INPUT_EXCEPTION
 * an exception was raised on the file descriptor.
 */
public enum GdkInputCondition
{
	READ = 1 << 0,
	WRITE = 1 << 1,
	EXCEPTION = 1 << 2
}
alias GdkInputCondition InputCondition;

/**
 * An enumeration describing the type of an input device
 * in general terms.
 * GDK_SOURCE_MOUSE
 * the device is a mouse. (This will be reported for the core
 *  pointer, even if it is something else, such as a trackball.)
 * GDK_SOURCE_PEN
 * the device is a stylus of a graphics tablet or similar device.
 * GDK_SOURCE_ERASER
 * the device is an eraser. Typically, this would be the other end
 *  of a stylus on a graphics tablet.
 * GDK_SOURCE_CURSOR
 * the device is a graphics tablet "puck" or similar device.
 */
public enum GdkInputSource
{
	SOURCE_MOUSE,
	SOURCE_PEN,
	SOURCE_ERASER,
	SOURCE_CURSOR
}
alias GdkInputSource InputSource;

/**
 * An enumeration that describes the mode of an input device.
 * GDK_MODE_DISABLED
 * the device is disabled and will not report any events.
 * GDK_MODE_SCREEN
 * the device is enabled. The device's coordinate space
 *  maps to the entire screen.
 * GDK_MODE_WINDOW
 * the device is enabled. The device's coordinate space
 *  is mapped to a single window. The manner in which this window
 *  is chosen is undefined, but it will typically be the same
 *  way in which the focus window for key events is determined.
 */
public enum GdkInputMode
{
	MODE_DISABLED,
	MODE_SCREEN,
	MODE_WINDOW
}
alias GdkInputMode InputMode;

/**
 * An enumeration describing the way in which a device
 * axis (valuator) maps onto the predefined valuator
 * types that GTK+ understands.
 * GDK_AXIS_IGNORE
 * the axis is ignored.
 * GDK_AXIS_X
 * the axis is used as the x axis.
 * GDK_AXIS_Y
 * the axis is used as the y axis.
 * GDK_AXIS_PRESSURE
 * the axis is used for pressure information.
 * GDK_AXIS_XTILT
 * the axis is used for x tilt information.
 * GDK_AXIS_YTILT
 * the axis is used for x tilt information.
 * GDK_AXIS_WHEEL
 * the axis is used for wheel information.
 * GDK_AXIS_LAST
 * a constant equal to the numerically highest axis value.
 */
public enum GdkAxisUse
{
	IGNORE,
	X,
	Y,
	PRESSURE,
	XTILT,
	YTILT,
	WHEEL,
	LAST
}
alias GdkAxisUse AxisUse;

/**
 * An enumeration used to specify which extension events
 * are desired for a particular widget.
 * GDK_EXTENSION_EVENTS_NONE
 * no extension events are desired.
 * GDK_EXTENSION_EVENTS_ALL
 * all extension events are desired.
 * GDK_EXTENSION_EVENTS_CURSOR
 * extension events are desired only if a cursor
 *  will be displayed for the device.
 */
public enum GdkExtensionMode
{
	EVENTS_NONE,
	EVENTS_ALL,
	EVENTS_CURSOR
}
alias GdkExtensionMode ExtensionMode;

/**
 * An opaque type representing a string as an index into a table
 * of strings on the X server.
 */
alias _GdkAtom* GdkAtom;
public struct _GdkAtom;

/**
 * Main Gtk struct.
 * The GdkDisplay struct is the GDK representation
 * of an X display. All its fields are private and should not be accessed directly.
 * Since 2.2
 */
public struct GdkDisplay{}


/**
 * A table of pointers to functions for getting quantities related to
 * the current pointer position. Each GdkDisplay has a table of this type,
 * which can be set using gdk_display_set_pointer_hooks().
 * This is only useful for such low-level tools as an event recorder.
 * Applications should never have any reason to use this facility
 * get_pointer ()
 * Obtains the current pointer position and modifier state.
 * The position is given in coordinates relative to the window containing
 * the pointer, which is returned in window.
 * window_get_pointer ()
 * Obtains the window underneath the mouse pointer.
 * Current pointer position and modifier state are returned in x, y and
 * mask. The position is given in coordinates relative to window.
 * window_at_pointer ()
 * Obtains the window underneath the mouse pointer,
 * returning the location of that window in win_x, win_y. Returns NULL
 * if the window under the mouse pointer is not known to GDK (for example,
 * belongs to another application).
 * Since 2.2
 */
public struct GdkDisplayPointerHooks
{
	extern(C) void function(GdkDisplay* display, GdkScreen** screen, int* x, int* y, GdkModifierType* mask) getPointer;
	extern(C) GdkWindow* function(GdkDisplay* display, GdkWindow* window, int* x, int* y, GdkModifierType* mask) windowGetPointer;
	extern(C) GdkWindow* function(GdkDisplay* display, int* winX, int* winY) windowAtPointer;
}


/**
 * Main Gtk struct.
 * The GdkDisplayManager struct has no interesting
 * fields.
 * Since 2.2
 */
public struct GdkDisplayManager{}


/**
 * Main Gtk struct.
 * This is a currently just a placeholder typedef for the first argument of
 * the window_at_pointer function in GdkPointerHooks. It will be used
 * when GDK gets multihead support.
 * Since 2.2
 */
public struct GdkScreen{}


/**
 * Defines the x and y coordinates of a point.
 * gint x;
 * the x coordinate of the point.
 * gint y;
 * the y coordinate of the point.
 */
public struct GdkPoint
{
	int x;
	int y;
}


/**
 * Main Gtk struct.
 * Defines the position and size of a rectangle.
 * gint x;
 * the x coordinate of the left edge of the rectangle.
 * gint y;
 * the y coordinate of the top of the rectangle.
 * gint width;
 * the width of the rectangle.
 * gint height;
 * the height of the rectangle.
 */
public struct GdkRectangle
{
	int x;
	int y;
	int width;
	int height;
}


/**
 * A GdkRegion represents a set of pixels on the screen.
 * In GTK3, GdkRegion will be replaced by cairo_region_t. All the functions
 * listed in this section will go away and you will have to use the relevant
 * Cairo functions. The conversion can be done using simple serch and replace.
 */
public struct GdkRegion{}


/**
 * A GdkSpan represents a horizontal line of pixels starting
 * at the pixel with coordinates x, y and ending before x + width, y.
 * gint x;
 * x coordinate of the first pixel.
 * gint y;
 * y coordinate of the first pixel.
 * gint width;
 * number of pixels in the span.
 */
public struct GdkSpan
{
	int x;
	int y;
	int width;
}


/**
 * Main Gtk struct.
 * The GdkGC structure represents a graphics context.
 * It is an opaque structure with no user-visible
 * elements.
 */
public struct GdkGC{}


/**
 * The GdkGCValues structure holds a set of values used
 * to create or modify a graphics context.
 * GdkColor foreground;
 * the foreground color. Note that gdk_gc_get_values()
 * only sets the pixel value.
 * GdkColor background;
 * the background color. Note that gdk_gc_get_values()
 * only sets the pixel value.
 * GdkFont *font;
 * the default font.
 * GdkFunction function;
 * the bitwise operation used when drawing.
 * GdkFill fill;
 * the fill style.
 * GdkPixmap *tile;
 * the tile pixmap.
 * GdkPixmap *stipple;
 * the stipple bitmap.
 * GdkPixmap *clip_mask;
 * the clip mask bitmap.
 * GdkSubwindowMode subwindow_mode;
 * the subwindow mode.
 * gint ts_x_origin;
 * the x origin of the tile or stipple.
 * gint ts_y_origin;
 * the y origin of the tile or stipple.
 * gint clip_x_origin;
 * the x origin of the clip mask.
 * gint clip_y_origin;
 * the y origin of the clip mask.
 * gint graphics_exposures;
 * whether graphics exposures are enabled.
 * gint line_width;
 * the line width.
 * GdkLineStyle line_style;
 * the way dashed lines are drawn.
 * GdkCapStyle cap_style;
 * the way the ends of lines are drawn.
 * GdkJoinStyle join_style;
 * the way joins between lines are drawn.
 */
public struct GdkGCValues
{
	GdkColor foreground;
	GdkColor background;
	GdkFont *font;
	GdkFunction funct;
	GdkFill fill;
	GdkPixmap *tile;
	GdkPixmap *stipple;
	GdkPixmap *clipMask;
	GdkSubwindowMode subwindowMode;
	int tsXOrigin;
	int tsYOrigin;
	int clipXOrigin;
	int clipYOrigin;
	int graphicsExposures;
	int lineWidth;
	GdkLineStyle lineStyle;
	GdkCapStyle capStyle;
	GdkJoinStyle joinStyle;
}


/**
 * Main Gtk struct.
 * An opaque structure representing an object that can be
 * drawn onto. This can be a GdkPixmap, a GdkBitmap,
 * or a GdkWindow.
 */
public struct GdkDrawable{}


/**
 * Specifies the start and end point of a line for use by the gdk_draw_segments()
 * function.
 * gint x1;
 * the x coordinate of the start point.
 * gint y1;
 * the y coordinate of the start point.
 * gint x2;
 * the x coordinate of the end point.
 * gint y2;
 * the y coordinate of the end point.
 */
public struct GdkSegment
{
	int x1;
	int y1;
	int x2;
	int y2;
}


/**
 * Specifies a trapezpoid for use by the gdk_draw_trapezoids().
 * The trapezoids used here have parallel, horizontal top and
 * bottom edges.
 * double y1;
 * the y coordinate of the start point.
 * double x11;
 * the x coordinate of the top left corner
 * double x21;
 * the x coordinate of the top right corner
 * double y2;
 * the y coordinate of the end point.
 * double x12;
 * the x coordinate of the bottom left corner
 * double x22;
 * the x coordinate of the bottom right corner
 */
public struct GdkTrapezoid
{
	double y1, x11, x21, y2, x12, x22;
}


/**
 * Main Gtk struct.
 * An opaque structure representing an offscreen drawable.
 * Pointers to structures of type GdkPixmap, GdkBitmap,
 * and GdkWindow, can often be used interchangeably.
 * The type GdkDrawable refers generically to any of
 * these types.
 */
public struct GdkPixmap{}


/**
 * An opaque structure representing an offscreen drawable of depth
 * 1. Pointers to structures of type GdkPixmap, GdkBitmap, and
 * GdkWindow, can often be used interchangeably. The type GdkDrawable
 * refers generically to any of these types.
 */
public struct GdkBitmap{}


/**
 * Warning
 * GdkRgbCmap is deprecated and should not be used in newly-written code.
 * A private data structure which maps color indices to actual RGB
 * colors. This is used only for gdk_draw_indexed_image().
 * guint32 colors[256];
 * The colors, represented as 0xRRGGBB integer values.
 * gint n_colors;
 * The number of colors in the cmap.
 */
public struct GdkRgbCmap
{
	uint colors[256];
	int nColors;
}


/**
 * Main Gtk struct.
 * The GdkImage struct contains information on the image and the pixel data.
 * GObject parent_instance;
 * the parent instance
 */
public struct GdkImage
{
	GObject parentInstance;
	GdkImageType type; /+* read only. +/
	GdkVisual *visual; /+* read only. visual used to create the image +/
	GdkByteOrder byteOrder; /+* read only. +/
	int width; /+* read only. +/
	int height; /+* read only. +/
	ushort depth; /+* read only. +/
	ushort bpp; /+* read only. bytes per pixel +/
	ushort bpl; /+* read only. bytes per line +/
	ushort bitsPerPixel; /+* read only. bits per pixel +/
	void* mem;
	GdkColormap *colormap; /+* read only. +/
}


/**
 * Main Gtk struct.
 * This is the main structure in the gdk-pixbuf; library. It is
 * used to represent images. It contains information about the
 * image's pixel data, its color space, bits per sample, width and
 * height, and the rowstride (the number of bytes between the start of
 * one row and the start of the next).
 */
public struct GdkPixbuf{}


/**
 * The GdkColor structure is used to describe an
 * allocated or unallocated color.
 * guint32 pixel;
 * For allocated colors, the value used to
 * draw this color on the screen.
 * guint16 red;
 * The red component of the color. This is
 * a value between 0 and 65535, with 65535 indicating
 * full intensitiy.
 * guint16 green;
 * The green component of the color.
 * guint16 blue;
 * The blue component of the color.
 */
public struct GdkColor
{
	uint pixel;
	ushort red;
	ushort green;
	ushort blue;
}


/**
 * Main Gtk struct.
 * The colormap structure contains the following public fields.
 */
public struct GdkColormap
{
	int size;
	GdkColor *colors;
}


/**
 * Main Gtk struct.
 * The GdkVisual structure contains information about
 * a particular visual.
 * $(DDOC_COMMENT example)
 * GObject parent_instance;
 * inherited portion from GObject
 */
public struct GdkVisual
{
	GObject parentInstance;
	GdkVisualType type;
	int depth;
	GdkByteOrder byteOrder;
	int colormapSize;
	int bitsPerRgb;
	uint redMask;
	int redShift;
	int redPrec;
	uint greenMask;
	int greenShift;
	int greenPrec;
	uint blueMask;
	int blueShift;
	int bluePrec;
}


/**
 * Main Gtk struct.
 * Warning
 * GdkFont is deprecated and should not be used in newly-written code.
 * The GdkFont structure represents a font or fontset. It
 * contains the following public fields. A new GdkFont
 * structure is returned by gdk_font_load() or gdk_fontset_load(),
 * and is reference counted with gdk_font_ref() and gdk_font_unref()
 * GdkFontType type;
 * a value of type GdkFontType which indicates
 * whether this font is a single font or a fontset.
 * gint ascent;
 * the maximum distance that the font, when drawn,
 * ascends above the baseline.
 * gint descent;
 * the maximum distance that the font, when drawn,
 * descends below the baseline.
 */
public struct GdkFont
{
	GdkFontType type;
	int ascent;
	int descent;
}


/**
 * Main Gtk struct.
 * A GdkCursor structure represents a cursor.
 */
public struct GdkCursor
{
	GdkCursorType type;
}


/**
 * Main Gtk struct.
 * An opaque structure representing an onscreen drawable.
 * Pointers to structures of type GdkPixmap, GdkBitmap,
 * and GdkWindow, can often be used interchangeably.
 * The type GdkDrawable refers generically to any of
 * these types.
 */
public struct GdkWindow{}


/**
 * The GdkGeometry struct gives the window manager information about
 * a window's geometry constraints. Normally you would set these on
 * the GTK+ level using gtk_window_set_geometry_hints(). GtkWindow
 * then sets the hints on the GdkWindow it creates.
 * gdk_window_set_geometry_hints() expects the hints to be fully valid already and
 * simply passes them to the window manager; in contrast,
 * gtk_window_set_geometry_hints() performs some interpretation. For example,
 * GtkWindow will apply the hints to the geometry widget instead of the toplevel
 * window, if you set a geometry widget. Also, the
 * min_width/min_height/max_width/max_height fields may be set to -1, and
 * GtkWindow will substitute the size request of the window or geometry widget. If
 * the minimum size hint is not provided, GtkWindow will use its requisition as
 * the minimum size. If the minimum size is provided and a geometry widget is set,
 * GtkWindow will take the minimum size as the minimum size of the geometry widget
 * rather than the entire window. The base size is treated similarly.
 * The canonical use-case for gtk_window_set_geometry_hints() is to get a terminal
 * widget to resize properly. Here, the terminal text area should be the geometry
 * widget; GtkWindow will then automatically set the base size to the size of
 * other widgets in the terminal window, such as the menubar and scrollbar. Then,
 * the width_inc and height_inc fields should be set to the size of one character
 * in the terminal. Finally, the base size should be set to the size of one
 * character. The net effect is that the minimum size of the terminal
 * will have a 1x1 character terminal area, and only terminal sizes on
 * the "character grid" will be allowed.
 * Here's an example of how the terminal example would be implemented, assuming
 * a terminal area widget called "terminal" and a toplevel window "toplevel":
 * $(DDOC_COMMENT example)
 * The other useful fields are the min_aspect and max_aspect fields; these
 * contain a width/height ratio as a floating point number. If a geometry widget is
 * set, the aspect applies to the geometry widget rather than the entire window.
 * The most common use of these hints is probably to set min_aspect and
 * max_aspect to the same value, thus forcing the window to keep a constant aspect
 * ratio.
 * gint min_width;
 * minimum width of window (or -1 to use requisition, with GtkWindow only)
 * gint min_height;
 * minimum height of window (or -1 to use requisition, with GtkWindow only)
 * gint max_width;
 * maximum width of window (or -1 to use requisition, with GtkWindow only)
 * gint max_height;
 * maximum height of window (or -1 to use requisition, with GtkWindow only)
 * gint base_width;
 * allowed window widths are base_width + width_inc * N where N is any integer (-1 allowed with GtkWindow)
 * gint base_height;
 * allowed window widths are base_height + height_inc * N where N is any integer (-1 allowed with GtkWindow)
 * gint width_inc;
 * width resize increment
 * gint height_inc;
 * height resize increment
 * gdouble min_aspect;
 * minimum width/height ratio
 * gdouble max_aspect;
 * maximum width/height ratio
 * GdkGravity win_gravity;
 * window gravity, see gtk_window_set_gravity()
 */
public struct GdkGeometry
{
	int minWidth;
	int minHeight;
	int maxWidth;
	int maxHeight;
	int baseWidth;
	int baseHeight;
	int widthInc;
	int heightInc;
	double minAspect;
	double maxAspect;
	GdkGravity winGravity;
}


/**
 * Attributes to use for a newly-created window.
 * gchar *title;
 * title of the window (for toplevel windows)
 * gint event_mask;
 * event mask (see gdk_window_set_events())
 * gint x;
 * X coordinate relative to parent window (see gdk_window_move())
 * gint y;
 * Y coordinate relative to parent window (see gdk_window_move())
 * gint width;
 * width of window
 * gint height;
 * height of window
 * GdkWindowClass wclass;
 * GDK_INPUT_OUTPUT (normal window) or GDK_INPUT_ONLY (invisible window that receives events)
 * GdkVisual *visual;
 * GdkVisual for window
 * GdkColormap *colormap;
 * GdkColormap for window
 * GdkWindowType window_type;
 * type of window
 * GdkCursor *cursor;
 * cursor for the window (see gdk_window_set_cursor())
 * gchar *wmclass_name;
 * don't use (see gtk_window_set_wmclass())
 * gchar *wmclass_class;
 * don't use (see gtk_window_set_wmclass())
 * gboolean override_redirect;
 * TRUE to bypass the window manager
 * GdkWindowTypeHint type_hint;
 * a hint of the function of the window
 */
public struct GdkWindowAttr
{
	char *title;
	int eventMask;
	int x, y;
	int width;
	int height;
	GdkWindowClass wclass;
	GdkVisual *visual;
	GdkColormap *colormap;
	GdkWindowType windowType;
	GdkCursor *cursor;
	char *wmclassName;
	char *wmclassClass;
	int overrideRedirect;
	GdkWindowTypeHint typeHint;
}


/**
 * A table of pointers to functions for getting quantities related to
 * the current pointer position. GDK has one global table of this type,
 * which can be set using gdk_set_pointer_hooks().
 * This is only useful for such low-level tools as an event recorder.
 * Applications should never have any reason to use this facility
 * get_pointer ()
 * Obtains the current pointer position and modifier state.
 * The position is given in coordinates relative to the window containing
 * the pointer, which is returned in window.
 * window_at_pointer ()
 * Obtains the window underneath the mouse pointer,
 * returning the location of that window in win_x, win_y. Returns NULL
 * if the window under the mouse pointer is not known to GDK (for example,
 * belongs to another application).
 */
public struct GdkPointerHooks
{
	extern(C) GdkWindow* function(GdkWindow* window, int* x, int* y, GdkModifierType* mask) getPointer;
	extern(C) GdkWindow* function(GdkScreen* screen, /+* unused +/int *winX, int* winY) windowAtPointer;
}


/**
 * Contains the fields which are common to all event structs.
 * Any event pointer can safely be cast to a pointer to a GdkEventAny to access
 * these fields.
 * GdkEventType type;
 * the type of the event.
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 */
public struct GdkEventAny
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
}


/**
 * Describes a key press or key release event.
 * GdkEventType type;
 * the type of the event (GDK_KEY_PRESS or GDK_KEY_RELEASE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * guint32 time;
 * the time of the event in milliseconds.
 * guint state;
 * a bit-mask representing the state of the modifier keys (e.g. Control,
 * Shift and Alt) and the pointer buttons. See GdkModifierType.
 * guint keyval;
 * the key that was pressed or released. See the
 * <gdk/gdkkeysyms.h>
 * header file for a complete list of GDK key codes.
 * gint length;
 * the length of string.
 * gchar *string;
 * a string containing the an approximation of the text that
 * would result from this keypress. The only correct way to handle text
 * input of text is using input methods (see GtkIMContext), so this
 * field is deprecated and should never be used.
 * (gdk_unicode_to_keyval() provides a non-deprecated way of getting
 * an approximate translation for a key.) The string is encoded in the encoding
 * of the current locale (Note: this for backwards compatibility:
 * strings in GTK+ and GDK are typically in UTF-8.) and NUL-terminated.
 * In some cases, the translation of the key code will be a single
 * NUL byte, in which case looking at length is necessary to distinguish
 * it from the an empty translation.
 * guint16 hardware_keycode;
 * the raw code of the key that was pressed or released.
 * guint8 group;
 * the keyboard group.
 * guint is_modifier : 1;
 * a flag that indicates if hardware_keycode is mapped to a
 * modifier. Since 2.10
 */
public struct GdkEventKey
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	uint state;
	uint keyval;
	int length;
	char *string;
	ushort hardwareKeycode;
	ubyte group;
	uint bitfield0;
	//uint isModifier : 1;
}


/**
 * Used for button press and button release events. The
 * type field will be one of GDK_BUTTON_PRESS,
 * GDK_2BUTTON_PRESS, GDK_3BUTTON_PRESS, and GDK_BUTTON_RELEASE.
 * Double and triple-clicks result in a sequence of events being received.
 * For double-clicks the order of events will be:
 * GDK_BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_2BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * Note that the first click is received just like a normal
 * button press, while the second click results in a GDK_2BUTTON_PRESS being
 * received just after the GDK_BUTTON_PRESS.
 * Triple-clicks are very similar to double-clicks, except that GDK_3BUTTON_PRESS
 * is inserted after the third click. The order of the events is:
 * GDK_BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_2BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_3BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * For a double click to occur, the second button press must occur within 1/4 of
 * a second of the first. For a triple click to occur, the third button press
 * must also occur within 1/2 second of the first button press.
 * GdkEventType type;
 * the type of the event (GDK_BUTTON_PRESS, GDK_2BUTTON_PRESS,
 * GDK_3BUTTON_PRESS or GDK_BUTTON_RELEASE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * guint32 time;
 * the time of the event in milliseconds.
 * gdouble x;
 * the x coordinate of the pointer relative to the window.
 * gdouble y;
 * the y coordinate of the pointer relative to the window.
 * gdouble *axes;
 * x, y translated to the axes of device, or NULL if device is
 * the mouse.
 * guint state;
 * a bit-mask representing the state of the modifier keys (e.g. Control,
 * Shift and Alt) and the pointer buttons. See GdkModifierType.
 * guint button;
 * the button which was pressed or released, numbered from 1 to 5.
 * Normally button 1 is the left mouse button, 2 is the middle button,
 * and 3 is the right button. On 2-button mice, the middle button can often
 * be simulated by pressing both mouse buttons together.
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the screen.
 */
public struct GdkEventButton
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	double x;
	double y;
	double *axes;
	uint state;
	uint button;
	GdkDevice *device;
	double xRoot, yRoot;
}


/**
 * Generated from button presses for the buttons 4 to 7. Wheel mice are
 * usually configured to generate button press events for buttons 4 and 5
 * when the wheel is turned.
 * GdkEventType type;
 * the type of the event (GDK_SCROLL).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * guint32 time;
 * the time of the event in milliseconds.
 * gdouble x;
 * the x coordinate of the pointer relative to the window.
 * gdouble y;
 * the y coordinate of the pointer relative to the window.
 * guint state;
 * a bit-mask representing the state of the modifier keys (e.g. Control,
 * Shift and Alt) and the pointer buttons. See GdkModifierType.
 * GdkScrollDirection direction;
 * the direction to scroll to (one of GDK_SCROLL_UP,
 * GDK_SCROLL_DOWN, GDK_SCROLL_LEFT and GDK_SCROLL_RIGHT).
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the screen.
 */
public struct GdkEventScroll
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	double x;
	double y;
	uint state;
	GdkScrollDirection direction;
	GdkDevice *device;
	double xRoot, yRoot;
}


/**
 * Generated when the pointer moves.
 * GdkEventType type;
 * the type of the event.
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * guint32 time;
 * the time of the event in milliseconds.
 * gdouble x;
 * the x coordinate of the pointer relative to the window.
 * gdouble y;
 * the y coordinate of the pointer relative to the window.
 * gdouble *axes;
 * x, y translated to the axes of device, or NULL if device is
 * the mouse.
 * guint state;
 * a bit-mask representing the state of the modifier keys (e.g. Control,
 * Shift and Alt) and the pointer buttons. See GdkModifierType.
 * gint16 is_hint;
 * set to 1 if this event is just a hint, see the GDK_POINTER_MOTION_HINT_MASK
 * value of GdkEventMask.
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the screen.
 */
public struct GdkEventMotion
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	double x;
	double y;
	double *axes;
	uint state;
	short isHint;
	GdkDevice *device;
	double xRoot, yRoot;
}


/**
 * Generated when all or part of a window becomes visible and needs to be
 * redrawn.
 * GdkEventType type;
 * the type of the event (GDK_EXPOSE or GDK_DAMAGE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkRectangle area;
 * bounding box of region.
 * GdkRegion *region;
 * the region that needs to be redrawn.
 * gint count;
 * the number of contiguous GDK_EXPOSE events following this one.
 * The only use for this is "exposure compression", i.e. handling all contiguous
 * GDK_EXPOSE events in one go, though GDK performs some exposure compression
 * so this is not normally needed.
 */
public struct GdkEventExpose
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkRectangle area;
	GdkRegion *region;
	int count; /+* If non-zero, how many more events follow. +/
}


/**
 * Generated when the window visibility status has changed.
 * GdkEventType type;
 * the type of the event (GDK_VISIBILITY_NOTIFY).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkVisibilityState state;
 * the new visibility state (GDK_VISIBILITY_FULLY_OBSCURED,
 * GDK_VISIBILITY_PARTIAL or GDK_VISIBILITY_UNOBSCURED).
 */
public struct GdkEventVisibility
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkVisibilityState state;
}


/**
 * Generated when the pointer enters or leaves a window.
 * GdkEventType type;
 * the type of the event (GDK_ENTER_NOTIFY or GDK_LEAVE_NOTIFY).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkWindow *subwindow;
 * the window that was entered or left.
 * guint32 time;
 * the time of the event in milliseconds.
 * gdouble x;
 * the x coordinate of the pointer relative to the window.
 * gdouble y;
 * the y coordinate of the pointer relative to the window.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the screen.
 * GdkCrossingMode mode;
 * the crossing mode (GDK_CROSSING_NORMAL, GDK_CROSSING_GRAB,
 * GDK_CROSSING_UNGRAB, GDK_CROSSING_GTK_GRAB, GDK_CROSSING_GTK_UNGRAB or
 * GDK_CROSSING_STATE_CHANGED). GDK_CROSSING_GTK_GRAB, GDK_CROSSING_GTK_UNGRAB,
 * and GDK_CROSSING_STATE_CHANGED were added in 2.14 and are always synthesized,
 * never native.
 * GdkNotifyType detail;
 * the kind of crossing that happened (GDK_NOTIFY_INFERIOR,
 * GDK_NOTIFY_ANCESTOR, GDK_NOTIFY_VIRTUAL, GDK_NOTIFY_NONLINEAR or
 * GDK_NOTIFY_NONLINEAR_VIRTUAL).
 * gboolean focus;
 * TRUE if window is the focus window or an inferior.
 * guint state;
 * a bit-mask representing the state of the modifier keys (e.g. Control,
 * Shift and Alt) and the pointer buttons. See GdkModifierType.
 */
public struct GdkEventCrossing
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkWindow *subwindow;
	uint time;
	double x;
	double y;
	double xRoot;
	double yRoot;
	GdkCrossingMode mode;
	GdkNotifyType detail;
	int focus;
	uint state;
}


/**
 * Describes a change of keyboard focus.
 * GdkEventType type;
 * the type of the event (GDK_FOCUS_CHANGE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * gint16 in;
 * TRUE if the window has gained the keyboard focus, FALSE if it has lost
 * the focus.
 */
public struct GdkEventFocus
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	short inn;
}


/**
 * Generated when a window size or position has changed.
 * GdkEventType type;
 * the type of the event (GDK_CONFIGURE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * gint x;
 * the new x coordinate of the window, relative to its parent.
 * gint y;
 * the new y coordinate of the window, relative to its parent.
 * gint width;
 * the new width of the window.
 * gint height;
 * the new height of the window.
 */
public struct GdkEventConfigure
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	int x, y;
	int width;
	int height;
}


/**
 * Describes a property change on a window.
 * GdkEventType type;
 * the type of the event (GDK_PROPERTY_NOTIFY).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkAtom atom;
 * the property that was changed.
 * guint32 time;
 * the time of the event in milliseconds.
 * guint state;
 * whether the property was changed (GDK_PROPERTY_NEW_VALUE) or
 * deleted (GDK_PROPERTY_DELETE).
 */
public struct GdkEventProperty
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkAtom atom;
	uint time;
	uint state;
}


/**
 * Generated when a selection is requested or ownership of a selection
 * is taken over by another client application.
 * GdkEventType type;
 * the type of the event (GDK_SELECTION_CLEAR, GDK_SELECTION_NOTIFY or
 * GDK_SELECTION_REQUEST).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkAtom selection;
 * the selection.
 * GdkAtom target;
 * the target to which the selection should be converted.
 * GdkAtom property;
 * the property in which to place the result of the conversion.
 * guint32 time;
 * the time of the event in milliseconds.
 * GdkNativeWindow requestor;
 * the native window on which to place property.
 */
public struct GdkEventSelection
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkAtom selection;
	GdkAtom target;
	GdkAtom property;
	uint time;
	GdkNativeWindow requestor;
}


/**
 * Generated during DND operations.
 * GdkEventType type;
 * the type of the event (GDK_DRAG_ENTER, GDK_DRAG_LEAVE,
 * GDK_DRAG_MOTION, GDK_DRAG_STATUS, GDK_DROP_START or GDK_DROP_FINISHED).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkDragContext *context;
 * the GdkDragContext for the current DND operation.
 * guint32 time;
 * the time of the event in milliseconds.
 * gshort x_root;
 * the x coordinate of the pointer relative to the root of the screen,
 * only set for GDK_DRAG_MOTION and GDK_DROP_START.
 * gshort y_root;
 * the y coordinate of the pointer relative to the root of the screen,
 * only set for GDK_DRAG_MOTION and GDK_DROP_START.
 */
public struct GdkEventDND
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkDragContext *context;
	uint time;
	short xRoot, yRoot;
}


/**
 * Proximity events are generated when using GDK's wrapper for the
 * XInput extension. The XInput extension is an add-on for standard X
 * that allows you to use nonstandard devices such as graphics tablets.
 * A proximity event indicates that the stylus has moved in or out of
 * contact with the tablet, or perhaps that the user's finger has moved
 * in or out of contact with a touch screen.
 * GdkEventType type;
 * the type of the event (GDK_PROXIMITY_IN or GDK_PROXIMITY_OUT).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * guint32 time;
 * the time of the event in milliseconds.
 * GdkDevice *device;
 * the device where the event originated.
 */
public struct GdkEventProximity
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	GdkDevice *device;
}


/**
 * An event sent by another client application.
 * GdkEventType type;
 * the type of the event (GDK_CLIENT_EVENT).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkAtom message_type;
 * the type of the message, which can be defined by the
 * application.
 * gushort data_format;
 * the format of the data, given as the number of bits in each
 * data element, i.e. 8, 16, or 32. 8-bit data uses the b array of the data
 * union, 16-bit data uses the s array, and 32-bit data uses the l array.
 */
public struct GdkEventClient
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkAtom messageType;
	ushort dataFormat;
	union Data
	{
		char b[20];
		short s[10];
		long l[5];
	}
	Data data;
}


/**
 * Generated when the area of a GdkDrawable being copied, with gdk_draw_drawable()
 * or gdk_window_copy_area(), was completely available.
 * FIXME: add more here.
 * GdkEventType type;
 * the type of the event (GDK_NO_EXPOSE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 */
public struct GdkEventNoExpose
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
}


/**
 * Generated when the state of a toplevel window changes.
 * GdkEventType type;
 * the type of the event (GDK_WINDOW_STATE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkWindowState changed_mask;
 * mask specifying what flags have changed.
 * GdkWindowState new_window_state;
 * the new window state, a combination of GdkWindowState bits.
 */
public struct GdkEventWindowState
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkWindowState changedMask;
	GdkWindowState newWindowState;
}


/**
 * Generated when a setting is modified.
 * GdkEventType type;
 * the type of the event (GDK_SETTING).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkSettingAction action;
 * what happened to the setting (GDK_SETTING_ACTION_NEW,
 * GDK_SETTING_ACTION_CHANGED or GDK_SETTING_ACTION_DELETED).
 * char *name;
 * the name of the setting.
 */
public struct GdkEventSetting
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkSettingAction action;
	char *name;
}


/**
 * Generated when the owner of a selection changes. On X11, this information is
 * only available if the X server supports the XFIXES extension.
 * GdkEventType type;
 * the type of the event (GDK_OWNER_CHANGE).
 * GdkWindow *window;
 * the window which received the event
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * GdkNativeWindow owner;
 * the new owner of the selection
 * GdkOwnerChange reason;
 * the reason for the ownership change as a GdkOwnerChange value
 * GdkAtom selection;
 * the atom identifying the selection
 * guint32 time;
 * the timestamp of the event
 * guint32 selection_time;
 * the time at which the selection ownership was taken over
 * Since 2.6
 */
public struct GdkEventOwnerChange
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkNativeWindow owner;
	GdkOwnerChange reason;
	GdkAtom selection;
	uint time;
	uint selectionTime;
}


/**
 * Generated when a pointer or keyboard grab is broken. On X11, this happens
 * when the grab window becomes unviewable (i.e. it or one of its ancestors
 * is unmapped), or if the same application grabs the pointer or keyboard
 * again. Note that implicit grabs (which are initiated by button presses)
 * can also cause GdkEventGrabBroken events.
 * GdkEventType type;
 * the type of the event (GDK_GRAB_BROKEN)
 * GdkWindow *window;
 * the window which received the event, i.e. the window
 * that previously owned the grab
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using XSendEvent).
 * gboolean keyboard;
 * TRUE if a keyboard grab was broken, FALSE if a pointer
 * grab was broken
 * gboolean implicit;
 * TRUE if the broken grab was implicit
 * GdkWindow *grab_window;
 * If this event is caused by another grab in the same
 * application, grab_window contains the new grab window. Otherwise
 * grab_window is NULL.
 * Since 2.8
 */
public struct GdkEventGrabBroken
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	int keyboard;
	int implicit;
	GdkWindow *grabWindow;
}


/**
 * Main Gtk struct.
 * A GdkKeymap defines the translation from keyboard state
 * (including a hardware key, a modifier mask, and active keyboard group)
 * to a keyval. This translation has two phases. The first phase is
 * to determine the effective keyboard group and level for the keyboard
 * state; the second phase is to look up the keycode/group/level triplet
 * in the keymap and see what keyval it corresponds to.
 */
public struct GdkKeymap{}


/**
 * A GdkKeymapKey is a hardware key that can
 * be mapped to a keyval.
 * guint keycode;
 * the hardware keycode. This is an identifying number for a
 * physical key.
 * gint group;
 * indicates movement in a horizontal direction. Usually groups are used
 * for two different languages. In group 0, a key might have two English
 * characters, and in group 1 it might have two Hebrew characters. The Hebrew
 * characters will be printed on the key next to the English characters.
 * gint level;
 * indicates which symbol on the key will be used, in a vertical direction. So on a standard US keyboard, the key with the number "1" on it also has the
 * exclamation point ("!") character on it. The level indicates whether to use
 * the "1" or the "!" symbol. The letter keys are considered to have a lowercase
 * letter at level 0, and an uppercase letter at level 1, though only the
 * uppercase letter is printed.
 */
public struct GdkKeymapKey
{
	uint keycode;
	int group;
	int level;
}


/**
 * Main Gtk struct.
 * A GdkDragContext holds information about a
 * drag in progress. It is used on both source and destination sides.
 * GObject parent_instance;
 * the parent instance
 */
public struct GdkDragContext
{
	GObject parentInstance;
	GdkDragProtocol protocol;
	int isSource;
	GdkWindow *sourceWindow;
	GdkWindow *destWindow;
	GList *targets;
	GdkDragAction actions;
	GdkDragAction suggestedAction;
	GdkDragAction action;
	uint startTime;
}


/**
 * Main Gtk struct.
 * A GdkDevice structure contains
 * a detailed description of an extended input device. All
 * fields are read-only; but you can use gdk_device_set_source(),
 * gdk_device_set_mode(), gdk_device_set_key() and gdk_device_set_axis_use()
 * to configure various aspects of the device.
 * GObject parent_instance;
 * the parent instance
 */
public struct GdkDevice
{
	GObject parentInstance;
	/+* All fields are read-only +/
	char *name;
	GdkInputSource source;
	GdkInputMode mode;
	int hasCursor; /+* TRUE if the X pointer follows device motion +/
	int numAxes;
	GdkDeviceAxis *axes;
	int numKeys;
	GdkDeviceKey *keys;
}


/**
 * The GdkDeviceKey structure contains information
 * about the mapping of one device macro button onto a normal X key event.
 * It has the following fields:
 * guint keyval;
 * the keyval to generate when the macro button is pressed.
 * If this is 0, no keypress will be generated.
 * GdkModifierType modifiers;
 * the modifiers set for the generated key event.
 */
public struct GdkDeviceKey
{
	uint keyval;
	GdkModifierType modifiers;
}


/**
 * The GdkDeviceAxis structure contains information
 * about the range and mapping of a device axis.
 * GdkAxisUse use;
 * specifies how the axis is used.
 * gdouble min;
 * the minimal value that will be reported by this axis.
 * gdouble max;
 * the maximal value that will be reported by this axis.
 */
public struct GdkDeviceAxis
{
	GdkAxisUse use;
	double min;
	double max;
}


/**
 * The GdkTimeCoord structure stores a single event in a
 * motion history. It contains the following fields:
 * guint32 time;
 * The timestamp for this event.
 * gdouble axes[GDK_MAX_TIMECOORD_AXES];
 * the values of the device's axes.
 */
public struct GdkTimeCoord
{
	uint time;
	double axes[GDK_MAX_TIMECOORD_AXES];
}


/**
 * Main Gtk struct.
 * An opaque structure representing an application launch context.
 */
public struct GdkAppLaunchContext{}


/*
 * Warning
 * gdk_visual_ref is deprecated and should not be used in newly-written code.
 * Deprecated equivalent of g_object_ref().
 * v :
 * a GdkVisual
 * Returns :
 * the same visual
 */
// TODO
// #define gdk_visual_ref(v) g_object_ref(v)

/*
 * Warning
 * gdk_visual_unref is deprecated and should not be used in newly-written code.
 * Deprecated equivalent of g_object_unref().
 * v :
 * a GdkVisual
 */
// TODO
// #define gdk_visual_unref(v) g_object_unref(v)

/*
 * Warning
 * gdk_window_copy_area is deprecated and should not be used in newly-written code.
 * Deprecated equivalent to gdk_draw_drawable(), see that function for docs
 * drawable :
 * a GdkDrawable
 * gc :
 * a GdkGC sharing the drawable's visual and colormap
 * x :
 * X position in drawable where the rectangle should be drawn
 * y :
 * Y position in drawable where the rectangle should be drawn
 * source_drawable :
 * the source GdkDrawable, which may be the same as drawable
 * source_x :
 * X position in src of rectangle to draw
 * source_y :
 * Y position in src of rectangle to draw
 * width :
 * width of rectangle to draw, or -1 for entire src width
 * height :
 * height of rectangle to draw, or -1 for entire src height
 */
// TODO
// #define gdk_window_copy_area(drawable,gc,x,y,source_drawable,source_x,source_y,width,height)

/*
 * Converts a GdkAtom into a pointer type.
 * atom :
 * a GdkAtom.
 */
// TODO
// #define GDK_ATOM_TO_POINTER(atom) (atom)

/*
 * Extracts a GdkAtom from a pointer. The GdkAtom must have been
 * stored in the pointer with GDK_ATOM_TO_POINTER().
 * ptr :
 * a pointer containing a GdkAtom.
 */
// TODO
// #define GDK_POINTER_TO_ATOM(ptr) ((GdkAtom)(ptr))

/*
 * Returns the display of a GdkWindow.
 * win :
 * a GdkWindow.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_WINDOW_XDISPLAY(win) (GDK_SCREEN_X11 (GDK_WINDOW_SCREEN (win))->xdisplay)

/*
 * Returns the X window belonging to a GdkWindow.
 * win :
 * a GdkWindow.
 * Returns :
 * the Xlib Window of win.
 */
// TODO
// #define GDK_WINDOW_XID(win) (GDK_DRAWABLE_IMPL_X11(((GdkWindowObject *)win)->impl)->xid)

/*
 * Returns the display of a GdkPixmap.
 * pix :
 * a GdkPixmap.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_PIXMAP_XDISPLAY(pix) (GDK_SCREEN_X11 (GDK_PIXMAP_SCREEN (pix))->xdisplay)

/*
 * Returns the X pixmap belonging to a GdkPixmap.
 * pix :
 * a GdkPixmap.
 * Returns :
 * the Xlib XPixmap of win.
 */
// TODO
// #define GDK_PIXMAP_XID(pix) (GDK_DRAWABLE_IMPL_X11(((GdkPixmapObject *)pix)->impl)->xid)

/*
 * Returns the display of a GdkDisplay.
 * display :
 * a GdkDisplay.
 */
// TODO
// #define GDK_DISPLAY_XDISPLAY(display) (GDK_DISPLAY_X11(display)->xdisplay)

/*
 * Returns the display of a GdkDrawable.
 * win :
 * a GdkDrawable.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_DRAWABLE_XDISPLAY(win) (GDK_IS_WINDOW (win) ? GDK_WINDOW_XDISPLAY (win) : GDK_PIXMAP_XDISPLAY (win))

/*
 * Returns the X resource (window or pixmap) belonging to a GdkDrawable.
 * win :
 * a GdkDrawable.
 * Returns :
 * the ID of win's X resource.
 */
// TODO
// #define GDK_DRAWABLE_XID(win) (GDK_IS_WINDOW (win) ? GDK_WINDOW_XID (win) : GDK_PIXMAP_XID (win))

/*
 * Returns the display of a GdkImage.
 * image :
 * a GdkImage.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_IMAGE_XDISPLAY(image) (gdk_x11_image_get_xdisplay (image))

/*
 * Returns the X image belonging to a GdkImage.
 * image :
 * a GdkImage.
 * Returns :
 * an XImage*.
 */
// TODO
// #define GDK_IMAGE_XIMAGE(image) (gdk_x11_image_get_ximage (image))

/*
 * Returns the display of a GdkGC.
 * gc :
 * a GdkGC.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_GC_XDISPLAY(gc) (GDK_SCREEN_XDISPLAY(GDK_GC_X11(gc)->screen))

/*
 * Returns the display of a GdkColormap.
 * cmap :
 * a GdkColormap.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_COLORMAP_XDISPLAY(cmap) (gdk_x11_colormap_get_xdisplay (cmap))

/*
 * Returns the X colormap belonging to a GdkColormap.
 * cmap :
 * a GdkColormap.
 * Returns :
 * an Xlib Colormap.
 */
// TODO
// #define GDK_COLORMAP_XCOLORMAP(cmap) (gdk_x11_colormap_get_xcolormap (cmap))

/*
 * Returns the display of a GdkScreen.
 * screen :
 * a GdkScreen.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_SCREEN_XDISPLAY(screen) (GDK_SCREEN_X11 (screen)->xdisplay)

/*
 * Returns the index of a GdkScreen.
 * screen :
 * a GdkScreen
 * Returns :
 * the position of screen among the screens of
 * its display.
 */
// TODO
// #define GDK_SCREEN_XNUMBER(screen) (GDK_SCREEN_X11 (screen)->screen_num)

/*
 * Returns the screen of a GdkScreen.
 * screen :
 * a GdkScreen
 * Returns :
 * an Xlib Screen*.
 */
// TODO
// #define GDK_SCREEN_XSCREEN(screen) (GDK_SCREEN_X11 (screen)->xscreen)

/*
 * Returns the X visual belonging to a GdkVisual.
 * vis :
 * a GdkVisual.
 * Returns :
 * an Xlib Visual*.
 */
// TODO
// #define GDK_VISUAL_XVISUAL(vis) (((GdkVisualPrivate *) vis)->xvisual)

/*
 * Warning
 * GDK_FONT_XDISPLAY is deprecated and should not be used in newly-written code.
 * Returns the display of a GdkFont.
 * font :
 * a GdkFont.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_FONT_XDISPLAY(font) (gdk_x11_font_get_xdisplay (font))

/*
 * Warning
 * GDK_FONT_XFONT is deprecated and should not be used in newly-written code.
 * Returns the X font belonging to a GdkFont.
 * font :
 * a GdkFont.
 * Returns :
 * an Xlib XFontStruct* or an XFontSet.
 */
// TODO
// #define GDK_FONT_XFONT(font) (gdk_x11_font_get_xfont (font))

/*
 * Returns the X cursor belonging to a GdkCursor.
 * cursor :
 * a GdkCursor.
 * Returns :
 * an Xlib Cursor.
 */
// TODO
// #define GDK_CURSOR_XCURSOR(cursor) (gdk_x11_cursor_get_xcursor (cursor))

/*
 * Returns the display of a GdkCursor.
 * cursor :
 * a GdkCursor.
 * Returns :
 * an Xlib Display*.
 */
// TODO
// #define GDK_CURSOR_XDISPLAY(cursor) (gdk_x11_cursor_get_xdisplay (cursor))

/*
 * Returns the X GC of a GdkGC.
 * gc :
 * a GdkGC.
 * Returns :
 * an Xlib GC.
 */
// TODO
// #define GDK_GC_XGC(gc)		 (GDK_GC_X11(gc)->xgc)

/*
 * Returns the X GC of a GdkGC.
 * gc :
 * a GdkGC.
 * Returns :
 * an Xlib GC.
 */
// TODO
// #define GDK_GC_GET_XGC(gc)	 (GDK_GC_X11(gc)->dirty_mask ? _gdk_x11_gc_flush (gc) : ((GdkGCX11 *)(gc))->xgc)

/*
 * Warning
 * gdk_font_lookup is deprecated and should not be used in newly-written code.
 * Obtains the GdkFont for the given Xlib font ID, or NULL if no GdkFont has
 * been created for xid.
 * xid :
 * an Xlib font ID
 */
// TODO
// #define gdk_font_lookup(xid)	 ((GdkFont*) gdk_xid_table_lookup (xid))

/*
 * Warning
 * gdk_font_lookup_for_display is deprecated and should not be used in newly-written code.
 * Obtains the GdkFont for the given Xlib font ID on display, or NULL if no
 * GdkFont has been created for xid.
 * display :
 * a GdkDisplay
 * xid :
 * an Xlib font ID
 * Since: 2.2
 */
// TODO
// #define gdk_font_lookup_for_display(display, xid) ((GdkFont*) gdk_xid_table_lookup_for_display (display, ((xid)|XID_FONT_BIT)))

/*
 * Warning
 * GdkSpanFunc is deprecated and should not be used in newly-written code.
 * This defines the type of the function passed to
 * gdk_region_spans_intersect_foreach().
 * span :
 * a GdkSpan.
 * data :
 * the user data passed to gdk_region_spans_intersect_foreach().
 */
// void (*GdkSpanFunc) (GdkSpan *span,  gpointer data);
public alias extern(C) void function(GdkSpan* span, void* data) GdkSpanFunc;

/*
 * A function of this type is responsible for freeing the pixel array
 * of a pixbuf. The gdk_pixbuf_new_from_data() function lets you
 * pass in a pre-allocated pixel array so that a pixbuf can be
 * created from it; in this case you will need to pass in a function
 * of GdkPixbufDestroyNotify so that the pixel data can be freed
 * when the pixbuf is finalized.
 * pixels :
 * The pixel array of the pixbuf that is being finalized.
 * data :
 * User closure data.
 * See Also
 * GdkPixbuf, gdk_pixbuf_new_from_data().
 */
// void (*GdkPixbufDestroyNotify) (guchar *pixels,  gpointer data);
public alias extern(C) void function(guchar* pixels, void* data) GdkPixbufDestroyNotify;

/*
 * Specifies the type of the function passed to
 * gdk_pixbuf_save_to_callback(). It is called once for each block of
 * bytes that is "written" by gdk_pixbuf_save_to_callback(). If
 * successful it should return TRUE. If an error occurs it should set
 * error and return FALSE, in which case gdk_pixbuf_save_to_callback()
 * will fail with the same error.
 * buf :
 * bytes to be written.
 * count :
 * number of bytes in buf.
 * error :
 * A location to return an error. [out]
 * data :
 * user data passed to gdk_pixbuf_save_to_callback(). [closure]
 * Returns :
 * TRUE if successful, FALSE (with error set) if failed.
 * Since 2.4
 */
// gboolean (*GdkPixbufSaveFunc) (const gchar *buf,  gsize count,  GError **error,  gpointer data);
public alias extern(C) int function(char* buf, gsize count, GError** error, void* data) GdkPixbufSaveFunc;

/*
 * Specifies the type of function used to filter native events before they are
 * converted to GDK events.
 * When a filter is called, event is unpopulated, except for
 * event->window. The filter may translate the native
 * event to a GDK event and store the result in event, or handle it without
 * translation. If the filter translates the event and processing should
 * continue, it should return GDK_FILTER_TRANSLATE.
 * xevent :
 * the native event to filter.
 * event :
 * the GDK event to which the X event will be translated.
 * data :
 * user data set when the filter was installed.
 * Returns :
 * a GdkFilterReturn value.
 */
// GdkFilterReturn (*GdkFilterFunc) (GdkXEvent *xevent,  GdkEvent *event,  gpointer data);
public alias extern(C) GdkFilterReturn function(GdkXEvent* xevent, GdkEvent* event, void* data) GdkFilterFunc;

/*
 * Specifies the type of function passed to gdk_event_handler_set() to handle
 * all GDK events.
 * event :
 * the GdkEvent to process.
 * data :
 * user data set when the event handler was installed with
 * gdk_event_handler_set().
 */
// void (*GdkEventFunc) (GdkEvent *event,  gpointer data);
public alias extern(C) void function(GdkEvent* event, void* data) GdkEventFunc;

/*
 * A callback function that will be called when some condition
 * occurs.
 * data :
 * the user data passed to gdk_input_add() or gdk_input_add_full().
 * source :
 * the source where the condition occurred.
 * condition :
 * the triggering condition.
 */
// void (*GdkInputFunction) (gpointer data,  gint source,  GdkInputCondition condition);
public alias extern(C) void function(void* data, int source, GdkInputCondition condition) GdkInputFunction;

/*
 * Warning
 * GdkDestroyNotify is deprecated and should not be used in newly-written code.
 * A callback function called when a piece of user data is
 * no longer being stored by GDK. Will typically free the
 * structure or object that data points to.
 * data :
 * the user data.
 */
// void (*GdkDestroyNotify) (gpointer data);
public alias extern(C) void function(void* data) GdkDestroyNotify;
/**
 * The GdkEvent struct contains a union of all of the event structs,
 * and allows access to the data fields in a number of ways.
 * The event type is always the first field in all of the event structs, and
 * can always be accessed with the following code, no matter what type of event
 * it is:
 */
public struct GdkEvent
{
	union
	{
		GdkEventType type;
		GdkEventAny any;
		GdkEventExpose expose;
		GdkEventNoExpose noExpose;
		GdkEventVisibility visibility;
		GdkEventMotion motion;
		GdkEventButton button;
		GdkEventScroll scroll;
		GdkEventKey key;
		GdkEventCrossing crossing;
		GdkEventFocus focusChange;
		GdkEventConfigure configure;
		GdkEventProperty property;
		GdkEventSelection selection;
		GdkEventOwnerChange ownerChange;
		GdkEventProximity proximity;
		GdkEventClient client;
		GdkEventDND dnd;
		GdkEventWindowState windowState;
		GdkEventSetting setting;
		GdkEventGrabBroken grabBroken;
	}
}
