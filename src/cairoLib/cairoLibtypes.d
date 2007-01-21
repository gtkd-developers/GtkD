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

module cairoLib.cairoLibtypes;


public import glib.glibtypes;

//public import std.c.windows.windows;
private alias void* HDC;

//struct Display;	// to support XLib surfaces
//struct Visual;	// to support XLib surfaces
//struct Screen;	// to support XLib surfaces

//private alias void* Drawable;
//private alias void* Pixmap;
//public alias bool cairo_bool_t;

alias ubyte uchar;

/**
 * typedef int cairo_bool_t;
 * cairo_bool_t is used for boolean values. Returns of type
 * cairo_bool_t will always be either 0 or 1, but testing against
 * these values explicitly is not encouraged; just use the
 * value as a boolean condition.
 */
public alias int cairo_bool_t;
/**
 * Specifies the type of antialiasing to do when rendering text or shapes.
 * CAIRO_ANTIALIAS_DEFAULT
 */
public enum cairo_antialias_t
{
	DEFAULT,
	NONE,
	GRAY,
	SUBPIXEL
}
/**
 * cairo_fill_rule_t is used to select how paths are filled. For both
 * fill rules, whether or not a point is included in the fill is
 * determined by taking a ray from that point to infinity and looking
 * at intersections with the path. The ray can be in any direction,
 * as long as it doesn't pass through the end point of a segment
 * or have a tricky intersection such as intersecting tangent to the path.
 * (Note that filling is not actually implemented in this way. This
 * is just a description of the rule that is applied.)
 * New entries may be added in future versions.
 * CAIRO_FILL_RULE_WINDING
 */
public enum cairo_fill_rule_t
{
	WINDING,
	EVEN_ODD
}
/**
 * enumeration for style of line-endings
 * CAIRO_LINE_CAP_BUTT
 */
public enum cairo_line_cap_t
{
	BUTT,
	ROUND,
	SQUARE
}
public enum cairo_line_join_t
{
	MITER,
	ROUND,
	BEVEL
}
public enum cairo_operator_t
{
	CLEAR,
	SOURCE,
	OVER,
	IN,
	OUT,
	ATOP,
	DEST,
	DEST_OVER,
	DEST_IN,
	DEST_OUT,
	DEST_ATOP,
	XOR,
	ADD,
	SATURATE
}
public enum cairo_path_data_type_t
{
	MOVE_TO,
	LINE_TO,
	CURVE_TO,
	CLOSE_PATH
}
public enum cairo_font_slant_t
{
	NORMAL,
	ITALIC,
	OBLIQUE
}
public enum cairo_font_weight_t
{
	NORMAL,
	BOLD
}
/**
 * cairo_extend_t is used to describe how the area outside
 * of a pattern will be drawn.
 * New entries may be added in future versions.
 * CAIRO_EXTEND_NONE
 */
public enum cairo_extend_t
{
	NONE,
	REPEAT,
	REFLECT,
	PAD
}
public enum cairo_filter_t
{
	FAST,
	GOOD,
	BEST,
	NEAREST,
	BILINEAR,
	GAUSSIAN
}
/**
 * cairo_pattern_type_t is used to describe the type of a given pattern.
 * The type of a pattern is determined by the function used to create
 * it. The cairo_pattern_create_rgb() and cairo_pattern_create_rgba()
 * functions create SOLID patterns. The remaining
 * cairo_pattern_create functions map to pattern types in obvious
 * ways.
 * The pattern type can be queried with cairo_pattern_get_type()
 * Most cairo_pattern functions can be called with a pattern of any
 * type, (though trying to change the extend or filter for a solid
 * pattern will have no effect). A notable exception is
 * cairo_pattern_add_color_stop_rgb() and
 * cairo_pattern_add_color_stop_rgba() which must only be called with
 * gradient patterns (either LINEAR or RADIAL). Otherwise the pattern
 * will be shutdown and put into an error state.
 * New entries may be added in future versions.
 * CAIRO_PATTERN_TYPE_SOLID
 */
public enum cairo_pattern_type_t
{
	SOLID,
	SURFACE,
	LINEAR,
	RADIAL
}
/**
 * cairo_font_type_t is used to describe the type of a given font
 * face or scaled font. The font types are also known as "font
 * backends" within cairo.
 * The type of a font face is determined by the function used to
 * create it, which will generally be of the form
 * cairo_type_font_face_create. The font face type can be queried
 * with cairo_font_face_get_type()
 * The various cairo_font_face functions can be used with a font face
 * of any type.
 * The type of a scaled font is determined by the type of the font
 * face passed to cairo_scaled_font_create. The scaled font type can
 * be queried with cairo_scaled_font_get_type()
 * The various cairo_scaled_font functions can be used with scaled
 * fonts of any type, but some font backends also provide
 * type-specific functions that must only be called with a scaled font
 * of the appropriate type. These functions have names that begin with
 * cairo_type_scaled_font such as cairo_ft_scaled_font_lock_face.
 * The behavior of calling a type-specific function with a scaled font
 * of the wrong type is undefined.
 * New entries may be added in future versions.
 * CAIRO_FONT_TYPE_TOY
 */
public enum cairo_font_type_t
{
	TOY,
	FT,
	WIN32,
	ATSUI
}
/**
 * The subpixel order specifies the order of color elements within
 * each pixel on the display device when rendering with an
 * antialiasing mode of CAIRO_ANTIALIAS_SUBPIXEL.
 * CAIRO_SUBPIXEL_ORDER_DEFAULT
 */
public enum cairo_subpixel_order_t
{
	DEFAULT,
	RGB,
	BGR,
	VRGB,
	VBGR
}
/**
 * Specifies the type of hinting to do on font outlines. Hinting
 * is the process of fitting outlines to the pixel grid in order
 * to improve the appearance of the result. Since hinting outlines
 * involves distorting them, it also reduces the faithfulness
 * to the original outline shapes. Not all of the outline hinting
 * styles are supported by all font backends.
 * New entries may be added in future versions.
 * CAIRO_HINT_STYLE_DEFAULT
 */
public enum cairo_hint_style_t
{
	DEFAULT,
	NONE,
	SLIGHT,
	MEDIUM,
	FULL
}
/**
 * Specifies whether to hint font metrics; hinting font metrics
 * means quantizing them so that they are integer values in
 * device space. Doing this improves the consistency of
 * letter and line spacing, however it also means that text
 * will be laid out differently at different zoom factors.
 * CAIRO_HINT_METRICS_DEFAULT
 */
public enum cairo_hint_metrics_t
{
	DEFAULT,
	OFF,
	ON
}
/**
 * cairo_content_t is used to describe the content that a surface will
 * contain, whether color information, alpha information (translucence
 * vs. opacity), or both.
 * Note: The large values here are designed to keep cairo_content_t
 * values distinct from cairo_format_t values so that the
 * implementation can detect the error if users confuse the two types.
 * CAIRO_CONTENT_COLOR
 */
public enum cairo_content_t
{
	COLOR = 0x1000,
	ALPHA = 0x2000,
	COLOR_ALPHA = 0x3000
}
/**
 * cairo_surface_type_t is used to describe the type of a given
 * surface. The surface types are also known as "backends" or "surface
 * backends" within cairo.
 * The type of a surface is determined by the function used to create
 * it, which will generally be of the form cairo_type_surface_create,
 * (though see cairo_surface_create_similar as well).
 * The surface type can be queried with cairo_surface_get_type()
 * The various cairo_surface functions can be used with surfaces of
 * any type, but some backends also provide type-specific functions
 * that must only be called with a surface of the appropriate
 * type. These functions have names that begin with
 * cairo_type_surface such as cairo_image_surface_get_width().
 * The behavior of calling a type-specific function with a surface of
 * the wrong type is undefined.
 * New entries may be added in future versions.
 * CAIRO_SURFACE_TYPE_IMAGE
 */
public enum cairo_surface_type_t
{
	IMAGE,
	PDF,
	PS,
	XLIB,
	XCB,
	GLITZ,
	QUARTZ,
	WIN32,
	BEOS,
	DIRECTFB,
	SVG
}
/**
 * cairo_format_t is used to identify the memory format of
 * image data.
 * New entries may be added in future versions.
 * CAIRO_FORMAT_ARGB32
 */
public enum cairo_format_t
{
	ARGB32,
	RGB24,
	A8,
	A1,
	RGB16_565
}
/**
 * cairo_status_t is used to indicate errors that can occur when
 * using Cairo. In some cases it is returned directly by functions.
 * but when using cairo_t, the last error, if any, is stored in
 * the context and can be retrieved with cairo_status().
 * New entries may be added in future versions. Use cairo_status_to_string()
 * to get a human-readable representation of an error message.
 * CAIRO_STATUS_SUCCESS
 */
public enum cairo_status_t
{
	SUCCESS = 0,
	NO_MEMORY,
	INVALID_RESTORE,
	INVALID_POP_GROUP,
	NO_CURRENT_POINT,
	INVALID_MATRIX,
	INVALID_STATUS,
	NULL_POINTER,
	INVALID_STRING,
	INVALID_PATH_DATA,
	READ_ERROR,
	WRITE_ERROR,
	SURFACE_FINISHED,
	SURFACE_TYPE_MISMATCH,
	PATTERN_TYPE_MISMATCH,
	INVALID_CONTENT,
	INVALID_FORMAT,
	INVALID_VISUAL,
	FILE_NOT_FOUND,
	INVALID_DASH,
	INVALID_DSC_COMMENT
}

/**
 * Main Gtk struct.
 * A cairo_t contains the current state of the rendering device,
 * including coordinates of yet to be drawn shapes.
 */
public struct cairo_t{}


/**
 * A data structure for holding a path. This data structure serves as
 * the return value for cairo_copy_path() and
 * cairo_copy_path_flat() as well the input value for
 * cairo_append_path().
 * See cairo_path_data_t for hints on how to iterate over the
 * actual data within the path.
 * The num_data member gives the number of elements in the data
 * array. This number is larger than the number of independent path
 * portions (defined in cairo_path_data_type_t), since the data
 * includes both headers and coordinates for each portion.
 * cairo_status_tstatus;
 */
public struct cairo_path_t{}
// cairo_status_t status;
// cairo-Paths.html
// cairo_path_data_t *data;
// cairo-Paths.html
// int numData;
// cairo-Paths.html


/**
 * The cairo_glyph_t structure holds information about a single glyph
 * when drawing or measuring text. A font is (in simple terms) a
 * collection of shapes used to draw text. A glyph is one of these
 * shapes. There can be multiple glyphs for a single character
 * (alternates to be used in different contexts, for example), or a
 * glyph can be a ligature of multiple
 * characters. Cairo doesn't expose any way of converting input text
 * into glyphs, so in order to use the Cairo interfaces that take
 * arrays of glyphs, you must directly access the appropriate
 * underlying font system.
 * Note that the offsets given by x and y are not cumulative. When
 * drawing or measuring text, each glyph is individually positioned
 * with respect to the overall origin
 * doublex;
 */
public struct cairo_glyph_t{}
// unsigned long index;
// cairo-Text.html
// double x;
// cairo-Text.html
// double y;
// cairo-Text.html


/**
 * Main Gtk struct.
 */
public struct cairo_pattern_t{}


/**
 * Main Gtk struct.
 * A cairo_font_face_t specifies all aspects of a font other
 * than the size or font matrix (a font matrix is used to distort
 * a font by sheering it or scaling it unequally in the two
 * directions) . A font face can be set on a cairo_t by using
 * cairo_set_font_face(); the size and font matrix are set with
 * cairo_set_font_size() and cairo_set_font_matrix().
 */
public struct cairo_font_face_t{}


/**
 * Main Gtk struct.
 * A cairo_scaled_font_t is a font scaled to a particular size and device
 * resolution. A cairo_scaled_font_t is most useful for low-level font
 * usage where a library or application wants to cache a reference
 * to a scaled font to speed up the computation of metrics.
 */
public struct cairo_scaled_font_t{}


/**
 * The cairo_font_extents_t structure stores metric information for
 * a font. Values are given in the current user-space coordinate
 * system.
 * Because font metrics are in user-space coordinates, they are
 * mostly, but not entirely, independent of the current transformation
 * matrix. If you call cairo_scale(cr, 2.0, 2.0),
 * text will be drawn twice as big, but the reported text extents will
 * not be doubled. They will change slightly due to hinting (so you
 * can't assume that metrics are independent of the transformation
 * matrix), but otherwise will remain unchanged.
 * doubleascent;
 */
public struct cairo_font_extents_t{}
// double ascent;
// cairo-Scaled-Fonts.html
// double descent;
// cairo-Scaled-Fonts.html
// double height;
// cairo-Scaled-Fonts.html
// double maxXAdvance;
// cairo-Scaled-Fonts.html
// double maxYAdvance;
// cairo-Scaled-Fonts.html


/**
 * The cairo_text_extents_t structure stores the extents of a single
 * glyph or a string of glyphs in user-space coordinates. Because text
 * extents are in user-space coordinates, they are mostly, but not
 * entirely, independent of the current transformation matrix. If you call
 * cairo_scale(cr, 2.0, 2.0), text will
 * be drawn twice as big, but the reported text extents will not be
 * doubled. They will change slightly due to hinting (so you can't
 * assume that metrics are independent of the transformation matrix),
 * but otherwise will remain unchanged.
 * doublex_bearing;
 */
public struct cairo_text_extents_t{}
// double xBearing;
// cairo-Scaled-Fonts.html
// double yBearing;
// cairo-Scaled-Fonts.html
// double width;
// cairo-Scaled-Fonts.html
// double height;
// cairo-Scaled-Fonts.html
// double xAdvance;
// cairo-Scaled-Fonts.html
// double yAdvance;
// cairo-Scaled-Fonts.html


/**
 * Main Gtk struct.
 */
public struct cairo_font_options_t{}


/**
 * Main Gtk struct.
 * A cairo_surface_t represents an image, either as the destination
 * of a drawing operation or as source when drawing onto another
 * surface. There are different subtypes of cairo_surface_t for
 * different drawing backends; for example, cairo_image_surface_create()
 * creates a bitmap image in memory.
 * Memory management of cairo_surface_t is done with
 * cairo_surface_reference() and cairo_surface_destroy().
 */
public struct cairo_surface_t{}


/**
 * Main Gtk struct.
 * A cairo_matrix_t holds an affine transformation, such as a scale,
 * rotation, shear, or a combination of those. The transformation of
 * a point (x, y) is given by:
 */
public struct cairo_matrix_t{}
// double xx; double yx;
// cairo-cairo-matrix-t.html
// double xy; double yy;
// cairo-cairo-matrix-t.html
// double x0; double y0;
// cairo-cairo-matrix-t.html


/**
 * cairo_user_data_key_t is used for attaching user data to cairo
 * data structures. The actual contents of the struct is never used,
 * and there is no need to initialize the object; only the unique
 * address of a cairo_data_key_t object is used. Typically, you
 * would just use the address of a static cairo_data_key_t object.
 * intunused;
 */
public struct cairo_user_data_key_t{}
// int unused;
// cairo-Types.html


/*
 * major:
 * minor:
 * micro:
 */
// TODO
// #define CAIRO_VERSION_ENCODE(major, minor, micro)

/*
 * cairo_destroy_func_t the type of function which is called when a
 * data element is destroyed. It is passed the pointer to the data
 * element and should free any memory and resources allocated for it.
 * data:
 *  The data element being destroyed.
 */
// void (*cairo_destroy_func_t) (void *data);
public typedef extern(C) void  function (void*) cairo_destroy_func_t;

// skipped union cairo_path_data_t

