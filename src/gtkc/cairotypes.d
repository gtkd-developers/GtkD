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

module gtkc.cairotypes;


public import gtkc.glibtypes;

//public import std.c.windows.windows;
private alias void* HDC;
public  alias void  cairo_path_data_t;

alias ubyte uchar;

/**
 * typedef int cairo_bool_t;
 * cairo_bool_t is used for boolean values. Returns of type
 * cairo_bool_t will always be either 0 or 1, but testing against
 * these values explicitly is not encouraged; just use the
 * value as a boolean condition.
 * $(DDOC_COMMENT example)
 * Since 1.0
 */
public alias int cairo_bool_t;
/**
 * Specifies the type of antialiasing to do when rendering text or shapes.
 * As it is not necessarily clear from the above what advantages a particular
 * antialias method provides, since 1.12, there is also a set of hints:
 * CAIRO_ANTIALIAS_FAST: Allow the backend to degrade raster quality for speed
 * CAIRO_ANTIALIAS_GOOD: A balance between speed and quality
 * CAIRO_ANTIALIAS_BEST: A high-fidelity, but potentially slow, raster mode
 * These make no guarantee on how the backend will perform its rasterisation
 * (if it even rasterises!), nor that they have any differing effect other
 * than to enable some form of antialiasing. In the case of glyph rendering,
 * CAIRO_ANTIALIAS_FAST and CAIRO_ANTIALIAS_GOOD will be mapped to
 * CAIRO_ANTIALIAS_GRAY, with CAIRO_ANTALIAS_BEST being equivalent to
 * CAIRO_ANTIALIAS_SUBPIXEL.
 * The interpretation of CAIRO_ANTIALIAS_DEFAULT is left entirely up to
 * the backend, typically this will be similar to CAIRO_ANTIALIAS_GOOD.
 * CAIRO_ANTIALIAS_DEFAULT
 * Use the default antialiasing for
 *  the subsystem and target device, since 1.0
 * CAIRO_ANTIALIAS_NONE
 * Use a bilevel alpha mask, since 1.0
 * CAIRO_ANTIALIAS_GRAY
 * Perform single-color antialiasing (using
 *  shades of gray for black text on a white background, for example), since 1.0
 * CAIRO_ANTIALIAS_SUBPIXEL
 * Perform antialiasing by taking
 *  advantage of the order of subpixel elements on devices
 *  such as LCD panels, since 1.0
 * CAIRO_ANTIALIAS_FAST
 * Hint that the backend should perform some
 * antialiasing but prefer speed over quality, since 1.12
 * CAIRO_ANTIALIAS_GOOD
 * The backend should balance quality against
 * performance, since 1.12
 * CAIRO_ANTIALIAS_BEST
 * Hint that the backend should render at the highest
 * quality, sacrificing speed if necessary, since 1.12
 * Since 1.0
 */
public enum cairo_antialias_t
{
	DEFAULT,
	/+* method +/
	NONE,
	GRAY,
	SUBPIXEL,
	/+* hints +/
	FAST,
	GOOD,
	BEST
}
alias cairo_antialias_t CairoAntialias;

/**
 * cairo_fill_rule_t is used to select how paths are filled. For both
 * fill rules, whether or not a point is included in the fill is
 * determined by taking a ray from that point to infinity and looking
 * at intersections with the path. The ray can be in any direction,
 * as long as it doesn't pass through the end point of a segment
 * or have a tricky intersection such as intersecting tangent to the path.
 * (Note that filling is not actually implemented in this way. This
 * is just a description of the rule that is applied.)
 * The default fill rule is CAIRO_FILL_RULE_WINDING.
 * New entries may be added in future versions.
 * CAIRO_FILL_RULE_WINDING
 * If the path crosses the ray from
 * left-to-right, counts +1. If the path crosses the ray
 * from right to left, counts -1. (Left and right are determined
 * from the perspective of looking along the ray from the starting
 * point.) If the total count is non-zero, the point will be filled. (Since 1.0)
 * CAIRO_FILL_RULE_EVEN_ODD
 * Counts the total number of
 * intersections, without regard to the orientation of the contour. If
 * the total number of intersections is odd, the point will be
 * filled. (Since 1.0)
 * Since 1.0
 */
public enum cairo_fill_rule_t
{
	WINDING,
	EVEN_ODD
}
alias cairo_fill_rule_t CairoFillRule;

/**
 * Specifies how to render the endpoints of the path when stroking.
 * The default line cap style is CAIRO_LINE_CAP_BUTT.
 * CAIRO_LINE_CAP_BUTT
 * start(stop) the line exactly at the start(end) point (Since 1.0)
 * CAIRO_LINE_CAP_ROUND
 * use a round ending, the center of the circle is the end point (Since 1.0)
 * CAIRO_LINE_CAP_SQUARE
 * use squared ending, the center of the square is the end point (Since 1.0)
 * Since 1.0
 */
public enum cairo_line_cap_t
{
	BUTT,
	ROUND,
	SQUARE
}
alias cairo_line_cap_t CairoLineCap;

/**
 * Specifies how to render the junction of two lines when stroking.
 * The default line join style is CAIRO_LINE_JOIN_MITER.
 * CAIRO_LINE_JOIN_MITER
 * use a sharp (angled) corner, see
 * cairo_set_miter_limit() (Since 1.0)
 * CAIRO_LINE_JOIN_ROUND
 * use a rounded join, the center of the circle is the
 * joint point (Since 1.0)
 * CAIRO_LINE_JOIN_BEVEL
 * use a cut-off join, the join is cut off at half
 * the line width from the joint point (Since 1.0)
 * Since 1.0
 */
public enum cairo_line_join_t
{
	MITER,
	ROUND,
	BEVEL
}
alias cairo_line_join_t CairoLineJoin;

/**
 * cairo_operator_t is used to set the compositing operator for all cairo
 * drawing operations.
 * The default operator is CAIRO_OPERATOR_OVER.
 * The operators marked as unbounded modify their
 * destination even outside of the mask layer (that is, their effect is not
 * bound by the mask layer). However, their effect can still be limited by
 * way of clipping.
 * To keep things simple, the operator descriptions here
 * document the behavior for when both source and destination are either fully
 * transparent or fully opaque. The actual implementation works for
 * translucent layers too.
 * For a more detailed explanation of the effects of each operator, including
 * the mathematical definitions, see
 * http://cairographics.org/operators/.
 * CAIRO_OPERATOR_CLEAR
 * clear destination layer (bounded) (Since 1.0)
 * CAIRO_OPERATOR_SOURCE
 * replace destination layer (bounded) (Since 1.0)
 * CAIRO_OPERATOR_OVER
 * draw source layer on top of destination layer
 * (bounded) (Since 1.0)
 * CAIRO_OPERATOR_IN
 * draw source where there was destination content
 * (unbounded) (Since 1.0)
 * CAIRO_OPERATOR_OUT
 * draw source where there was no destination
 * content (unbounded) (Since 1.0)
 * CAIRO_OPERATOR_ATOP
 * draw source on top of destination content and
 * only there (Since 1.0)
 * CAIRO_OPERATOR_DEST
 * ignore the source (Since 1.0)
 * CAIRO_OPERATOR_DEST_OVER
 * draw destination on top of source (Since 1.0)
 * CAIRO_OPERATOR_DEST_IN
 * leave destination only where there was
 * source content (unbounded) (Since 1.0)
 * CAIRO_OPERATOR_DEST_OUT
 * leave destination only where there was no
 * source content (Since 1.0)
 * CAIRO_OPERATOR_DEST_ATOP
 * leave destination on top of source content
 * and only there (unbounded) (Since 1.0)
 * CAIRO_OPERATOR_XOR
 * source and destination are shown where there is only
 * one of them (Since 1.0)
 * CAIRO_OPERATOR_ADD
 * source and destination layers are accumulated (Since 1.0)
 * CAIRO_OPERATOR_SATURATE
 * like over, but assuming source and dest are
 * disjoint geometries (Since 1.0)
 * CAIRO_OPERATOR_MULTIPLY
 * source and destination layers are multiplied.
 * This causes the result to be at least as dark as the darker inputs. (Since 1.10)
 * CAIRO_OPERATOR_SCREEN
 * source and destination are complemented and
 * multiplied. This causes the result to be at least as light as the lighter
 * inputs. (Since 1.10)
 * CAIRO_OPERATOR_OVERLAY
 * multiplies or screens, depending on the
 * lightness of the destination color. (Since 1.10)
 * CAIRO_OPERATOR_DARKEN
 * replaces the destination with the source if it
 * is darker, otherwise keeps the source. (Since 1.10)
 * CAIRO_OPERATOR_LIGHTEN
 * replaces the destination with the source if it
 * is lighter, otherwise keeps the source. (Since 1.10)
 * CAIRO_OPERATOR_COLOR_DODGE
 * brightens the destination color to reflect
 * the source color. (Since 1.10)
 * CAIRO_OPERATOR_COLOR_BURN
 * darkens the destination color to reflect
 * the source color. (Since 1.10)
 * CAIRO_OPERATOR_HARD_LIGHT
 * Multiplies or screens, dependent on source
 * color. (Since 1.10)
 * CAIRO_OPERATOR_SOFT_LIGHT
 * Darkens or lightens, dependent on source
 * color. (Since 1.10)
 * CAIRO_OPERATOR_DIFFERENCE
 * Takes the difference of the source and
 * destination color. (Since 1.10)
 * CAIRO_OPERATOR_EXCLUSION
 * Produces an effect similar to difference, but
 * with lower contrast. (Since 1.10)
 * CAIRO_OPERATOR_HSL_HUE
 * Creates a color with the hue of the source
 * and the saturation and luminosity of the target. (Since 1.10)
 * CAIRO_OPERATOR_HSL_SATURATION
 * Creates a color with the saturation
 * of the source and the hue and luminosity of the target. Painting with
 * this mode onto a gray area produces no change. (Since 1.10)
 * CAIRO_OPERATOR_HSL_COLOR
 * Creates a color with the hue and saturation
 * of the source and the luminosity of the target. This preserves the gray
 * levels of the target and is useful for coloring monochrome images or
 * tinting color images. (Since 1.10)
 * CAIRO_OPERATOR_HSL_LUMINOSITY
 * Creates a color with the luminosity of
 * the source and the hue and saturation of the target. This produces an
 * inverse effect to CAIRO_OPERATOR_HSL_COLOR. (Since 1.10)
 * Since 1.0
 */
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
	SATURATE,
	MULTIPLY,
	SCREEN,
	OVERLAY,
	DARKEN,
	LIGHTEN,
	COLOR_DODGE,
	COLOR_BURN,
	HARD_LIGHT,
	SOFT_LIGHT,
	DIFFERENCE,
	EXCLUSION,
	HSL_HUE,
	HSL_SATURATION,
	HSL_COLOR,
	HSL_LUMINOSITY
}
alias cairo_operator_t CairoOperator;

/**
 * cairo_path_data_t is used to describe the type of one portion
 * of a path when represented as a cairo_path_t.
 * See cairo_path_data_t for details.
 * CAIRO_PATH_MOVE_TO
 * A move-to operation, since 1.0
 * CAIRO_PATH_LINE_TO
 * A line-to operation, since 1.0
 * CAIRO_PATH_CURVE_TO
 * A curve-to operation, since 1.0
 * CAIRO_PATH_CLOSE_PATH
 * A close-path operation, since 1.0
 * Since 1.0
 */
public enum cairo_path_data_type_t
{
	MOVE_TO,
	LINE_TO,
	CURVE_TO,
	CLOSE_PATH
}
alias cairo_path_data_type_t CairoPathDataType;

/**
 * Specifies variants of a font face based on their slant.
 * CAIRO_FONT_SLANT_NORMAL
 * Upright font style, since 1.0
 * CAIRO_FONT_SLANT_ITALIC
 * Italic font style, since 1.0
 * CAIRO_FONT_SLANT_OBLIQUE
 * Oblique font style, since 1.0
 * Since 1.0
 */
public enum cairo_font_slant_t
{
	NORMAL,
	ITALIC,
	OBLIQUE
}
alias cairo_font_slant_t CairoFontSlant;

/**
 * Specifies variants of a font face based on their weight.
 * CAIRO_FONT_WEIGHT_NORMAL
 * Normal font weight, since 1.0
 * CAIRO_FONT_WEIGHT_BOLD
 * Bold font weight, since 1.0
 * Since 1.0
 */
public enum cairo_font_weight_t
{
	NORMAL,
	BOLD
}
alias cairo_font_weight_t CairoFontWeight;

/**
 * Specifies properties of a text cluster mapping.
 * CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
 * The clusters in the cluster array
 * map to glyphs in the glyph array from end to start. (Since 1.8)
 * Since 1.8
 */
public enum cairo_text_cluster_flags_t
{
	BACKWARD = 0x00000001
}
alias cairo_text_cluster_flags_t CairoTextClusterFlags;

/**
 * cairo_extend_t is used to describe how pattern color/alpha will be
 * determined for areas "outside" the pattern's natural area, (for
 * example, outside the surface bounds or outside the gradient
 * geometry).
 * Mesh patterns are not affected by the extend mode.
 * The default extend mode is CAIRO_EXTEND_NONE for surface patterns
 * and CAIRO_EXTEND_PAD for gradient patterns.
 * New entries may be added in future versions.
 * CAIRO_EXTEND_NONE
 * pixels outside of the source pattern
 *  are fully transparent (Since 1.0)
 * CAIRO_EXTEND_REPEAT
 * the pattern is tiled by repeating (Since 1.0)
 * CAIRO_EXTEND_REFLECT
 * the pattern is tiled by reflecting
 *  at the edges (Since 1.0; but only implemented for surface patterns since 1.6)
 * CAIRO_EXTEND_PAD
 * pixels outside of the pattern copy
 *  the closest pixel from the source (Since 1.2; but only
 *  implemented for surface patterns since 1.6)
 * Since 1.0
 */
public enum cairo_extend_t
{
	NONE,
	REPEAT,
	REFLECT,
	PAD
}
alias cairo_extend_t CairoExtend;

/**
 * cairo_filter_t is used to indicate what filtering should be
 * applied when reading pixel values from patterns. See
 * cairo_pattern_set_filter() for indicating the desired filter to be
 * used with a particular pattern.
 * CAIRO_FILTER_FAST
 * A high-performance filter, with quality similar
 *  to CAIRO_FILTER_NEAREST (Since 1.0)
 * CAIRO_FILTER_GOOD
 * A reasonable-performance filter, with quality
 *  similar to CAIRO_FILTER_BILINEAR (Since 1.0)
 * CAIRO_FILTER_BEST
 * The highest-quality available, performance may
 *  not be suitable for interactive use. (Since 1.0)
 * CAIRO_FILTER_NEAREST
 * Nearest-neighbor filtering (Since 1.0)
 * CAIRO_FILTER_BILINEAR
 * Linear interpolation in two dimensions (Since 1.0)
 * CAIRO_FILTER_GAUSSIAN
 * This filter value is currently
 *  unimplemented, and should not be used in current code. (Since 1.0)
 * Since 1.0
 */
public enum cairo_filter_t
{
	FAST,
	GOOD,
	BEST,
	NEAREST,
	BILINEAR,
	GAUSSIAN
}
alias cairo_filter_t CairoFilter;

/**
 * cairo_pattern_type_t is used to describe the type of a given pattern.
 * The type of a pattern is determined by the function used to create
 * it. The cairo_pattern_create_rgb() and cairo_pattern_create_rgba()
 * functions create SOLID patterns. The remaining
 * cairo_pattern_create functions map to pattern types in obvious
 * ways.
 * The pattern type can be queried with cairo_pattern_get_type()
 * Most cairo_pattern_t functions can be called with a pattern of any
 * type, (though trying to change the extend or filter for a solid
 * pattern will have no effect). A notable exception is
 * cairo_pattern_add_color_stop_rgb() and
 * cairo_pattern_add_color_stop_rgba() which must only be called with
 * gradient patterns (either LINEAR or RADIAL). Otherwise the pattern
 * will be shutdown and put into an error state.
 * New entries may be added in future versions.
 * CAIRO_PATTERN_TYPE_SOLID
 * The pattern is a solid (uniform)
 * color. It may be opaque or translucent, since 1.2.
 * CAIRO_PATTERN_TYPE_SURFACE
 * The pattern is a based on a surface (an image), since 1.2.
 * CAIRO_PATTERN_TYPE_LINEAR
 * The pattern is a linear gradient, since 1.2.
 * CAIRO_PATTERN_TYPE_RADIAL
 * The pattern is a radial gradient, since 1.2.
 * CAIRO_PATTERN_TYPE_MESH
 * The pattern is a mesh, since 1.12.
 * CAIRO_PATTERN_TYPE_RASTER_SOURCE
 * The pattern is a user pattern providing raster data, since 1.12.
 * Since 1.2
 */
public enum cairo_pattern_type_t
{
	SOLID,
	SURFACE,
	LINEAR,
	RADIAL,
	MESH,
	RASTER_SOURCE
}
alias cairo_pattern_type_t CairoPatternType;

/**
 * Used as the return value for cairo_region_contains_rectangle().
 * CAIRO_REGION_OVERLAP_IN
 * The contents are entirely inside the region. (Since 1.10)
 * CAIRO_REGION_OVERLAP_OUT
 * The contents are entirely outside the region. (Since 1.10)
 * CAIRO_REGION_OVERLAP_PART
 * The contents are partially inside and
 *  partially outside the region. (Since 1.10)
 * Since 1.10
 */
public enum cairo_region_overlap_t
{
	IN, /+* completely inside region +/
	OUT, /+* completely outside region +/
	PART /+* partly inside region +/
}
alias cairo_region_overlap_t CairoRegionOverlap;

/**
 * cairo_font_type_t is used to describe the type of a given font
 * face or scaled font. The font types are also known as "font
 * backends" within cairo.
 * The type of a font face is determined by the function used to
 * create it, which will generally be of the form
 * cairo_type_font_face_create().
 * The font face type can be queried with cairo_font_face_get_type()
 * The various cairo_font_face_t functions can be used with a font face
 * of any type.
 * The type of a scaled font is determined by the type of the font
 * face passed to cairo_scaled_font_create(). The scaled font type can
 * be queried with cairo_scaled_font_get_type()
 * The various cairo_scaled_font_t functions can be used with scaled
 * fonts of any type, but some font backends also provide
 * type-specific functions that must only be called with a scaled font
 * of the appropriate type. These functions have names that begin with
 * cairo_type_scaled_font()
 * such as cairo_ft_scaled_font_lock_face().
 * The behavior of calling a type-specific function with a scaled font
 * of the wrong type is undefined.
 * New entries may be added in future versions.
 * CAIRO_FONT_TYPE_TOY
 * The font was created using cairo's toy font api (Since: 1.2)
 * CAIRO_FONT_TYPE_FT
 * The font is of type FreeType (Since: 1.2)
 * CAIRO_FONT_TYPE_WIN32
 * The font is of type Win32 (Since: 1.2)
 * CAIRO_FONT_TYPE_QUARTZ
 * The font is of type Quartz (Since: 1.6, in 1.2 and
 * 1.4 it was named CAIRO_FONT_TYPE_ATSUI)
 * CAIRO_FONT_TYPE_USER
 * The font was create using cairo's user font api (Since: 1.8)
 * Since 1.2
 */
public enum cairo_font_type_t
{
	TOY,
	FT,
	WIN32,
	QUARTZ,
	USER
}
alias cairo_font_type_t CairoFontType;

/**
 * The subpixel order specifies the order of color elements within
 * each pixel on the display device when rendering with an
 * antialiasing mode of CAIRO_ANTIALIAS_SUBPIXEL.
 * CAIRO_SUBPIXEL_ORDER_DEFAULT
 * Use the default subpixel order for
 *  for the target device, since 1.0
 * CAIRO_SUBPIXEL_ORDER_RGB
 * Subpixel elements are arranged horizontally
 *  with red at the left, since 1.0
 * CAIRO_SUBPIXEL_ORDER_BGR
 * Subpixel elements are arranged horizontally
 *  with blue at the left, since 1.0
 * CAIRO_SUBPIXEL_ORDER_VRGB
 * Subpixel elements are arranged vertically
 *  with red at the top, since 1.0
 * CAIRO_SUBPIXEL_ORDER_VBGR
 * Subpixel elements are arranged vertically
 *  with blue at the top, since 1.0
 * Since 1.0
 */
public enum cairo_subpixel_order_t
{
	DEFAULT,
	RGB,
	BGR,
	VRGB,
	VBGR
}
alias cairo_subpixel_order_t CairoSubpixelOrder;

/**
 * Specifies the type of hinting to do on font outlines. Hinting
 * is the process of fitting outlines to the pixel grid in order
 * to improve the appearance of the result. Since hinting outlines
 * involves distorting them, it also reduces the faithfulness
 * to the original outline shapes. Not all of the outline hinting
 * styles are supported by all font backends.
 * New entries may be added in future versions.
 * CAIRO_HINT_STYLE_DEFAULT
 * Use the default hint style for
 *  font backend and target device, since 1.0
 * CAIRO_HINT_STYLE_NONE
 * Do not hint outlines, since 1.0
 * CAIRO_HINT_STYLE_SLIGHT
 * Hint outlines slightly to improve
 *  contrast while retaining good fidelity to the original
 *  shapes, since 1.0
 * CAIRO_HINT_STYLE_MEDIUM
 * Hint outlines with medium strength
 *  giving a compromise between fidelity to the original shapes
 *  and contrast, since 1.0
 * CAIRO_HINT_STYLE_FULL
 * Hint outlines to maximize contrast, since 1.0
 * Since 1.0
 */
public enum cairo_hint_style_t
{
	DEFAULT,
	NONE,
	SLIGHT,
	MEDIUM,
	FULL
}
alias cairo_hint_style_t CairoHintStyle;

/**
 * Specifies whether to hint font metrics; hinting font metrics
 * means quantizing them so that they are integer values in
 * device space. Doing this improves the consistency of
 * letter and line spacing, however it also means that text
 * will be laid out differently at different zoom factors.
 * CAIRO_HINT_METRICS_DEFAULT
 * Hint metrics in the default
 *  manner for the font backend and target device, since 1.0
 * CAIRO_HINT_METRICS_OFF
 * Do not hint font metrics, since 1.0
 * CAIRO_HINT_METRICS_ON
 * Hint font metrics, since 1.0
 * Since 1.0
 */
public enum cairo_hint_metrics_t
{
	DEFAULT,
	OFF,
	ON
}
alias cairo_hint_metrics_t CairoHintMetrics;

/**
 * cairo_device_type_t is used to describe the type of a given
 * device. The devices types are also known as "backends" within cairo.
 * The device type can be queried with cairo_device_get_type()
 * The various cairo_device_t functions can be used with devices of
 * any type, but some backends also provide type-specific functions
 * that must only be called with a device of the appropriate
 * type. These functions have names that begin with
 * cairo_type_device such as
 * cairo_xcb_device_debug_cap_xrender_version().
 * The behavior of calling a type-specific function with a device of
 * the wrong type is undefined.
 * New entries may be added in future versions.
 * CAIRO_DEVICE_TYPE_DRM
 * The device is of type Direct Render Manager, since 1.10
 * CAIRO_DEVICE_TYPE_GL
 * The device is of type OpenGL, since 1.10
 * CAIRO_DEVICE_TYPE_SCRIPT
 * The device is of type script, since 1.10
 * CAIRO_DEVICE_TYPE_XCB
 * The device is of type xcb, since 1.10
 * CAIRO_DEVICE_TYPE_XLIB
 * The device is of type xlib, since 1.10
 * CAIRO_DEVICE_TYPE_XML
 * The device is of type XML, since 1.10
 * CAIRO_DEVICE_TYPE_COGL
 * The device is of type cogl, since 1.12
 * CAIRO_DEVICE_TYPE_WIN32
 * The device is of type win32, since 1.12
 * CAIRO_DEVICE_TYPE_INVALID
 * The device is invalid, since 1.10
 * Since 1.10
 */
public enum cairo_device_type_t
{
	DRM,
	GL,
	SCRIPT,
	XCB,
	XLIB,
	XML,
	COGL,
	WIN32,
	INVALID = -1
}
alias cairo_device_type_t CairoDeviceType;

/**
 * cairo_content_t is used to describe the content that a surface will
 * contain, whether color information, alpha information (translucence
 * vs. opacity), or both.
 * Note: The large values here are designed to keep cairo_content_t
 * values distinct from cairo_format_t values so that the
 * implementation can detect the error if users confuse the two types.
 * CAIRO_CONTENT_COLOR
 * The surface will hold color content only. (Since 1.0)
 * CAIRO_CONTENT_ALPHA
 * The surface will hold alpha content only. (Since 1.0)
 * CAIRO_CONTENT_COLOR_ALPHA
 * The surface will hold color and alpha content. (Since 1.0)
 * Since 1.0
 */
public enum cairo_content_t
{
	COLOR = 0x1000,
	ALPHA = 0x2000,
	COLOR_ALPHA = 0x3000
}
alias cairo_content_t CairoContent;

/**
 * cairo_surface_type_t is used to describe the type of a given
 * surface. The surface types are also known as "backends" or "surface
 * backends" within cairo.
 * The type of a surface is determined by the function used to create
 * it, which will generally be of the form
 * cairo_type_surface_create(),
 * (though see cairo_surface_create_similar() as well).
 * The surface type can be queried with cairo_surface_get_type()
 * The various cairo_surface_t functions can be used with surfaces of
 * any type, but some backends also provide type-specific functions
 * that must only be called with a surface of the appropriate
 * type. These functions have names that begin with
 * cairo_type_surface such as cairo_image_surface_get_width().
 * The behavior of calling a type-specific function with a surface of
 * the wrong type is undefined.
 * New entries may be added in future versions.
 * CAIRO_SURFACE_TYPE_IMAGE
 * The surface is of type image, since 1.2
 * CAIRO_SURFACE_TYPE_PDF
 * The surface is of type pdf, since 1.2
 * CAIRO_SURFACE_TYPE_PS
 * The surface is of type ps, since 1.2
 * CAIRO_SURFACE_TYPE_XLIB
 * The surface is of type xlib, since 1.2
 * CAIRO_SURFACE_TYPE_XCB
 * The surface is of type xcb, since 1.2
 * CAIRO_SURFACE_TYPE_GLITZ
 * The surface is of type glitz, since 1.2
 * CAIRO_SURFACE_TYPE_QUARTZ
 * The surface is of type quartz, since 1.2
 * CAIRO_SURFACE_TYPE_WIN32
 * The surface is of type win32, since 1.2
 * CAIRO_SURFACE_TYPE_BEOS
 * The surface is of type beos, since 1.2
 * CAIRO_SURFACE_TYPE_DIRECTFB
 * The surface is of type directfb, since 1.2
 * CAIRO_SURFACE_TYPE_SVG
 * The surface is of type svg, since 1.2
 * CAIRO_SURFACE_TYPE_OS2
 * The surface is of type os2, since 1.4
 * CAIRO_SURFACE_TYPE_WIN32_PRINTING
 * The surface is a win32 printing surface, since 1.6
 * CAIRO_SURFACE_TYPE_QUARTZ_IMAGE
 * The surface is of type quartz_image, since 1.6
 * CAIRO_SURFACE_TYPE_SCRIPT
 * The surface is of type script, since 1.10
 * CAIRO_SURFACE_TYPE_QT
 * The surface is of type Qt, since 1.10
 * CAIRO_SURFACE_TYPE_RECORDING
 * The surface is of type recording, since 1.10
 * CAIRO_SURFACE_TYPE_VG
 * The surface is a OpenVG surface, since 1.10
 * CAIRO_SURFACE_TYPE_GL
 * The surface is of type OpenGL, since 1.10
 * CAIRO_SURFACE_TYPE_DRM
 * The surface is of type Direct Render Manager, since 1.10
 * CAIRO_SURFACE_TYPE_TEE
 * The surface is of type 'tee' (a multiplexing surface), since 1.10
 * CAIRO_SURFACE_TYPE_XML
 * The surface is of type XML (for debugging), since 1.10
 * CAIRO_SURFACE_TYPE_SKIA
 * The surface is of type Skia, since 1.10
 * CAIRO_SURFACE_TYPE_SUBSURFACE
 * The surface is a subsurface created with
 *  cairo_surface_create_for_rectangle(), since 1.10
 * CAIRO_SURFACE_TYPE_COGL
 * This surface is of type Cogl, since 1.12
 * Since 1.2
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
	SVG,
	OS2,
	WIN32_PRINTING,
	QUARTZ_IMAGE,
	SCRIPT,
	QT,
	RECORDING,
	VG,
	GL,
	DRM,
	TEE,
	XML,
	SKIA,
	SUBSURFACE,
	COGL
}
alias cairo_surface_type_t CairoSurfaceType;

/**
 * cairo_format_t is used to identify the memory format of
 * image data.
 * New entries may be added in future versions.
 * CAIRO_FORMAT_INVALID
 * no such format exists or is supported.
 * CAIRO_FORMAT_ARGB32
 * each pixel is a 32-bit quantity, with
 *  alpha in the upper 8 bits, then red, then green, then blue.
 *  The 32-bit quantities are stored native-endian. Pre-multiplied
 *  alpha is used. (That is, 50% transparent red is 0x80800000,
 *  not 0x80ff0000.) (Since 1.0)
 * CAIRO_FORMAT_RGB24
 * each pixel is a 32-bit quantity, with
 *  the upper 8 bits unused. Red, Green, and Blue are stored
 *  in the remaining 24 bits in that order. (Since 1.0)
 * CAIRO_FORMAT_A8
 * each pixel is a 8-bit quantity holding
 *  an alpha value. (Since 1.0)
 * CAIRO_FORMAT_A1
 * each pixel is a 1-bit quantity holding
 *  an alpha value. Pixels are packed together into 32-bit
 *  quantities. The ordering of the bits matches the
 *  endianess of the platform. On a big-endian machine, the
 *  first pixel is in the uppermost bit, on a little-endian
 *  machine the first pixel is in the least-significant bit. (Since 1.0)
 * CAIRO_FORMAT_RGB16_565
 * each pixel is a 16-bit quantity
 *  with red in the upper 5 bits, then green in the middle
 *  6 bits, and blue in the lower 5 bits. (Since 1.2)
 * CAIRO_FORMAT_RGB30
 * like RGB24 but with 10bpc. (Since 1.12)
 * Since 1.0
 */
public enum cairo_format_t
{
	INVALID = -1,
	ARGB32 = 0,
	RGB24 = 1,
	A8 = 2,
	A1 = 3,
	RGB16_565 = 4,
	RGB30 = 5
}
alias cairo_format_t CairoFormat;

/**
 * cairo_pdf_version_t is used to describe the version number of the PDF
 * specification that a generated PDF file will conform to.
 * CAIRO_PDF_VERSION_1_4
 * The version 1.4 of the PDF specification. (Since 1.10)
 * CAIRO_PDF_VERSION_1_5
 * The version 1.5 of the PDF specification. (Since 1.10)
 * Since 1.10
 */
public enum cairo_pdf_version_t
{
	VERSION_1_4,
	VERSION_1_5
}
alias cairo_pdf_version_t CairoPdfVersion;

/**
 * cairo_ps_level_t is used to describe the language level of the
 * PostScript Language Reference that a generated PostScript file will
 * conform to.
 * CAIRO_PS_LEVEL_2
 * The language level 2 of the PostScript specification. (Since 1.6)
 * CAIRO_PS_LEVEL_3
 * The language level 3 of the PostScript specification. (Since 1.6)
 * Since 1.6
 */
public enum cairo_ps_level_t
{
	LEVEL_2,
	LEVEL_3
}
alias cairo_ps_level_t CairoPsLevel;

/**
 * cairo_svg_version_t is used to describe the version number of the SVG
 * specification that a generated SVG file will conform to.
 * CAIRO_SVG_VERSION_1_1
 * The version 1.1 of the SVG specification. (Since 1.2)
 * CAIRO_SVG_VERSION_1_2
 * The version 1.2 of the SVG specification. (Since 1.2)
 * Since 1.2
 */
public enum cairo_svg_version_t
{
	VERSION_1_1,
	VERSION_1_2
}
alias cairo_svg_version_t CairoSvgVersion;

/**
 * A set of script output variants.
 * CAIRO_SCRIPT_MODE_ASCII
 * the output will be in readable text (default). (Since 1.12)
 * CAIRO_SCRIPT_MODE_BINARY
 * the output will use byte codes. (Since 1.12)
 * Since 1.12
 */
public enum cairo_script_mode_t
{
	ASCII,
	BINARY
}
alias cairo_script_mode_t CairoScriptMode;

/**
 * cairo_status_t is used to indicate errors that can occur when
 * using Cairo. In some cases it is returned directly by functions.
 * but when using cairo_t, the last error, if any, is stored in
 * the context and can be retrieved with cairo_status().
 * New entries may be added in future versions. Use cairo_status_to_string()
 * to get a human-readable representation of an error message.
 * CAIRO_STATUS_SUCCESS
 * no error has occurred (Since 1.0)
 * CAIRO_STATUS_NO_MEMORY
 * out of memory (Since 1.0)
 * CAIRO_STATUS_INVALID_RESTORE
 * cairo_restore() called without matching cairo_save() (Since 1.0)
 * CAIRO_STATUS_INVALID_POP_GROUP
 * no saved group to pop, i.e. cairo_pop_group() without matching cairo_push_group() (Since 1.0)
 * CAIRO_STATUS_NO_CURRENT_POINT
 * no current point defined (Since 1.0)
 * CAIRO_STATUS_INVALID_MATRIX
 * invalid matrix (not invertible) (Since 1.0)
 * CAIRO_STATUS_INVALID_STATUS
 * invalid value for an input cairo_status_t (Since 1.0)
 * CAIRO_STATUS_NULL_POINTER
 * NULL pointer (Since 1.0)
 * CAIRO_STATUS_INVALID_STRING
 * input string not valid UTF-8 (Since 1.0)
 * CAIRO_STATUS_INVALID_PATH_DATA
 * input path data not valid (Since 1.0)
 * CAIRO_STATUS_READ_ERROR
 * error while reading from input stream (Since 1.0)
 * CAIRO_STATUS_WRITE_ERROR
 * error while writing to output stream (Since 1.0)
 * CAIRO_STATUS_SURFACE_FINISHED
 * target surface has been finished (Since 1.0)
 * CAIRO_STATUS_SURFACE_TYPE_MISMATCH
 * the surface type is not appropriate for the operation (Since 1.0)
 * CAIRO_STATUS_PATTERN_TYPE_MISMATCH
 * the pattern type is not appropriate for the operation (Since 1.0)
 * CAIRO_STATUS_INVALID_CONTENT
 * invalid value for an input cairo_content_t (Since 1.0)
 * CAIRO_STATUS_INVALID_FORMAT
 * invalid value for an input cairo_format_t (Since 1.0)
 * CAIRO_STATUS_INVALID_VISUAL
 * invalid value for an input Visual* (Since 1.0)
 * CAIRO_STATUS_FILE_NOT_FOUND
 * file not found (Since 1.0)
 * CAIRO_STATUS_INVALID_DASH
 * invalid value for a dash setting (Since 1.0)
 * CAIRO_STATUS_INVALID_DSC_COMMENT
 * invalid value for a DSC comment (Since 1.2)
 * CAIRO_STATUS_INVALID_INDEX
 * invalid index passed to getter (Since 1.4)
 * CAIRO_STATUS_CLIP_NOT_REPRESENTABLE
 * clip region not representable in desired format (Since 1.4)
 * CAIRO_STATUS_TEMP_FILE_ERROR
 * error creating or writing to a temporary file (Since 1.6)
 * CAIRO_STATUS_INVALID_STRIDE
 * invalid value for stride (Since 1.6)
 * CAIRO_STATUS_FONT_TYPE_MISMATCH
 * the font type is not appropriate for the operation (Since 1.8)
 * CAIRO_STATUS_USER_FONT_IMMUTABLE
 * the user-font is immutable (Since 1.8)
 * CAIRO_STATUS_USER_FONT_ERROR
 * error occurred in a user-font callback function (Since 1.8)
 * CAIRO_STATUS_NEGATIVE_COUNT
 * negative number used where it is not allowed (Since 1.8)
 * CAIRO_STATUS_INVALID_CLUSTERS
 * input clusters do not represent the accompanying text and glyph array (Since 1.8)
 * CAIRO_STATUS_INVALID_SLANT
 * invalid value for an input cairo_font_slant_t (Since 1.8)
 * CAIRO_STATUS_INVALID_WEIGHT
 * invalid value for an input cairo_font_weight_t (Since 1.8)
 * CAIRO_STATUS_INVALID_SIZE
 * invalid value (typically too big) for the size of the input (surface, pattern, etc.) (Since 1.10)
 * CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED
 * user-font method not implemented (Since 1.10)
 * CAIRO_STATUS_DEVICE_TYPE_MISMATCH
 * the device type is not appropriate for the operation (Since 1.10)
 * CAIRO_STATUS_DEVICE_ERROR
 * an operation to the device caused an unspecified error (Since 1.10)
 * CAIRO_STATUS_INVALID_MESH_CONSTRUCTION
 * a mesh pattern
 *  construction operation was used outside of a
 *  cairo_mesh_pattern_begin_patch()/cairo_mesh_pattern_end_patch()
 *  pair (Since 1.12)
 * CAIRO_STATUS_DEVICE_FINISHED
 * target device has been finished (Since 1.12)
 * CAIRO_STATUS_LAST_STATUS
 * this is a special value indicating the number of
 *  status values defined in this enumeration. When using this value, note
 *  that the version of cairo at run-time may have additional status values
 *  defined than the value of this symbol at compile-time. (Since 1.10)
 * Since 1.0
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
	INVALID_DSC_COMMENT,
	INVALID_INDEX,
	CLIP_NOT_REPRESENTABLE,
	TEMP_FILE_ERROR,
	INVALID_STRIDE,
	FONT_TYPE_MISMATCH,
	USER_FONT_IMMUTABLE,
	USER_FONT_ERROR,
	NEGATIVE_COUNT,
	INVALID_CLUSTERS,
	INVALID_SLANT,
	INVALID_WEIGHT,
	INVALID_SIZE,
	USER_FONT_NOT_IMPLEMENTED,
	DEVICE_TYPE_MISMATCH,
	DEVICE_ERROR,
	INVALID_MESH_CONSTRUCTION,
	DEVICE_FINISHED,
	LAST_STATUS
}
alias cairo_status_t CairoStatus;


/**
 * Main Gtk struct.
 * A cairo_t contains the current state of the rendering device,
 * including coordinates of yet to be drawn shapes.
 * Cairo contexts, as cairo_t objects are named, are central to
 * cairo and all drawing with cairo is always done to a cairo_t
 * object.
 * Memory management of cairo_t is done with
 * cairo_reference() and cairo_destroy().
 * Since 1.0
 */
public struct cairo_t{}


/**
 * A data structure for holding a rectangle.
 * double x;
 * X coordinate of the left side of the rectangle
 * double y;
 * Y coordinate of the the top side of the rectangle
 * double width;
 * width of the rectangle
 * double height;
 * height of the rectangle
 * Since 1.4
 */
public struct cairo_rectangle_t
{
	double x, y, width, height;
}


/**
 * A data structure for holding a dynamically allocated
 * array of rectangles.
 * cairo_status_t status;
 * Error status of the rectangle list
 * cairo_rectangle_t *rectangles;
 * Array containing the rectangles
 * int num_rectangles;
 * Number of rectangles in this list
 * Since 1.4
 */
public struct cairo_rectangle_list_t
{
	cairo_status_t status;
	cairo_rectangle_t *rectangles;
	int numRectangles;
}


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
 * cairo_status_t status;
 * the current error status
 * cairo_path_data_t *data;
 * the elements in the path
 * int num_data;
 * the number of elements in the data array
 * Since 1.0
 */
public struct cairo_path_t
{
	cairo_status_t status;
	cairo_path_data_t *data;
	int numData;
}


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
 * unsigned long index;
 * glyph index in the font. The exact interpretation of the
 * glyph index depends on the font technology being used.
 * double x;
 * the offset in the X direction between the origin used for
 * drawing or measuring the string and the origin of this glyph.
 * double y;
 * the offset in the Y direction between the origin used for
 * drawing or measuring the string and the origin of this glyph.
 * Since 1.0
 */
public struct cairo_glyph_t
{
	ulong index;
	double x;
	double y;
}


/**
 * The cairo_text_cluster_t structure holds information about a single
 * text cluster. A text cluster is a minimal
 * mapping of some glyphs corresponding to some UTF-8 text.
 * For a cluster to be valid, both num_bytes and num_glyphs should
 * be non-negative, and at least one should be non-zero.
 * Note that clusters with zero glyphs are not as well supported as
 * normal clusters. For example, PDF rendering applications typically
 * ignore those clusters when PDF text is being selected.
 * See cairo_show_text_glyphs() for how clusters are used in advanced
 * text operations.
 * int num_bytes;
 * the number of bytes of UTF-8 text covered by cluster
 * int num_glyphs;
 * the number of glyphs covered by cluster
 * Since 1.8
 */
public struct cairo_text_cluster_t
{
	int numBytes;
	int numGlyphs;
}


/**
 * Main Gtk struct.
 * A cairo_pattern_t represents a source when drawing onto a
 * surface. There are different subtypes of cairo_pattern_t,
 * for different types of sources; for example,
 * cairo_pattern_create_rgb() creates a pattern for a solid
 * opaque color.
 * Other than various
 * cairo_pattern_create_type()
 * functions, some of the pattern types can be implicitly created using various
 * cairo_set_source_type() functions;
 * for example cairo_set_source_rgb().
 * The type of a pattern can be queried with cairo_pattern_get_type().
 * Memory management of cairo_pattern_t is done with
 * cairo_pattern_reference() and cairo_pattern_destroy().
 * Since 1.0
 */
public struct cairo_pattern_t{}


/**
 * Main Gtk struct.
 * A cairo_region_t represents a set of integer-aligned rectangles.
 * It allows set-theoretical operations like cairo_region_union() and
 * cairo_region_intersect() to be performed on them.
 * Memory management of cairo_region_t is done with
 * cairo_region_reference() and cairo_region_destroy().
 * Since 1.10
 */
public struct cairo_region_t{}


/**
 * Main Gtk struct.
 * A cairo_font_face_t specifies all aspects of a font other
 * than the size or font matrix (a font matrix is used to distort
 * a font by sheering it or scaling it unequally in the two
 * directions) . A font face can be set on a cairo_t by using
 * cairo_set_font_face(); the size and font matrix are set with
 * cairo_set_font_size() and cairo_set_font_matrix().
 * There are various types of font faces, depending on the
 * font backend they use. The type of a
 * font face can be queried using cairo_font_face_get_type().
 * Memory management of cairo_font_face_t is done with
 * cairo_font_face_reference() and cairo_font_face_destroy().
 * Since 1.0
 */
public struct cairo_font_face_t{}


/**
 * Main Gtk struct.
 * A cairo_scaled_font_t is a font scaled to a particular size and device
 * resolution. A cairo_scaled_font_t is most useful for low-level font
 * usage where a library or application wants to cache a reference
 * to a scaled font to speed up the computation of metrics.
 * There are various types of scaled fonts, depending on the
 * font backend they use. The type of a
 * scaled font can be queried using cairo_scaled_font_get_type().
 * Memory management of cairo_scaled_font_t is done with
 * cairo_scaled_font_reference() and cairo_scaled_font_destroy().
 * Since 1.0
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
 * double ascent;
 * the distance that the font extends above the baseline.
 * Note that this is not always exactly equal to the maximum
 * of the extents of all the glyphs in the font, but rather
 * is picked to express the font designer's intent as to
 * how the font should align with elements above it.
 * double descent;
 * the distance that the font extends below the baseline.
 * This value is positive for typical fonts that include
 * portions below the baseline. Note that this is not always
 * exactly equal to the maximum of the extents of all the
 * glyphs in the font, but rather is picked to express the
 * font designer's intent as to how the font should
 * align with elements below it.
 * double height;
 * the recommended vertical distance between baselines when
 * setting consecutive lines of text with the font. This
 * is greater than ascent+descent by a
 * quantity known as the line spacing
 * or external leading. When space
 * is at a premium, most fonts can be set with only
 * a distance of ascent+descent between lines.
 * double max_x_advance;
 * the maximum distance in the X direction that
 * the origin is advanced for any glyph in the font.
 * double max_y_advance;
 * the maximum distance in the Y direction that
 * the origin is advanced for any glyph in the font.
 * This will be zero for normal fonts used for horizontal
 * writing. (The scripts of East Asia are sometimes written
 * vertically.)
 * Since 1.0
 */
public struct cairo_font_extents_t
{
	double ascent;
	double descent;
	double height;
	double maxXAdvance;
	double maxYAdvance;
}


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
 * double x_bearing;
 * the horizontal distance from the origin to the
 * leftmost part of the glyphs as drawn. Positive if the
 * glyphs lie entirely to the right of the origin.
 * double y_bearing;
 * the vertical distance from the origin to the
 * topmost part of the glyphs as drawn. Positive only if the
 * glyphs lie completely below the origin; will usually be
 * negative.
 * double width;
 * width of the glyphs as drawn
 * double height;
 * height of the glyphs as drawn
 * double x_advance;
 * distance to advance in the X direction
 * after drawing these glyphs
 * double y_advance;
 * distance to advance in the Y direction
 * after drawing these glyphs. Will typically be zero except
 * for vertical text layout as found in East-Asian languages.
 * Since 1.0
 */
public struct cairo_text_extents_t
{
	double xBearing;
	double yBearing;
	double width;
	double height;
	double xAdvance;
	double yAdvance;
}


/**
 * Main Gtk struct.
 * An opaque structure holding all options that are used when
 * rendering fonts.
 * Individual features of a cairo_font_options_t can be set or
 * accessed using functions named
 * cairo_font_options_set_feature_name() and
 * cairo_font_options_get_feature_name(), like
 * cairo_font_options_set_antialias() and
 * cairo_font_options_get_antialias().
 * New features may be added to a cairo_font_options_t in the
 * future. For this reason, cairo_font_options_copy(),
 * cairo_font_options_equal(), cairo_font_options_merge(), and
 * cairo_font_options_hash() should be used to copy, check
 * for equality, merge, or compute a hash value of
 * cairo_font_options_t objects.
 * Since 1.0
 */
public struct cairo_font_options_t{}


/**
 * Main Gtk struct.
 * A cairo_device_t represents the driver interface for drawing
 * operations to a cairo_surface_t. There are different subtypes of
 * cairo_device_t for different drawing backends; for example,
 * cairo_egl_device_create() creates a device that wraps an EGL display and
 * context.
 * The type of a device can be queried with cairo_device_get_type().
 * Memory management of cairo_device_t is done with
 * cairo_device_reference() and cairo_device_destroy().
 * Since 1.10
 */
public struct cairo_device_t{}


/**
 * Main Gtk struct.
 * A cairo_surface_t represents an image, either as the destination
 * of a drawing operation or as source when drawing onto another
 * surface. To draw to a cairo_surface_t, create a cairo context
 * with the surface as the target, using cairo_create().
 * There are different subtypes of cairo_surface_t for
 * different drawing backends; for example, cairo_image_surface_create()
 * creates a bitmap image in memory.
 * The type of a surface can be queried with cairo_surface_get_type().
 * The initial contents of a surface after creation depend upon the manner
 * of its creation. If cairo creates the surface and backing storage for
 * the user, it will be initially cleared; for example,
 * cairo_image_surface_create() and cairo_surface_create_similar().
 * Alternatively, if the user passes in a reference to some backing storage
 * and asks cairo to wrap that in a cairo_surface_t, then the contents are
 * not modified; for example, cairo_image_surface_create_for_data() and
 * cairo_xlib_surface_create().
 * Memory management of cairo_surface_t is done with
 * cairo_surface_reference() and cairo_surface_destroy().
 * Since 1.0
 */
public struct cairo_surface_t{}


/**
 * Main Gtk struct.
 * A cairo_matrix_t holds an affine transformation, such as a scale,
 * rotation, shear, or a combination of those. The transformation of
 * a point (x, y) is given by:
 */
public struct cairo_matrix_t
{
	double xx; double yx;
	double xy; double yy;
	double x0; double y0;
}


/**
 * cairo_user_data_key_t is used for attaching user data to cairo
 * data structures. The actual contents of the struct is never used,
 * and there is no need to initialize the object; only the unique
 * address of a cairo_data_key_t object is used. Typically, you
 * would just use the address of a static cairo_data_key_t object.
 * int unused;
 * not used; ignore.
 * Since 1.0
 */
public struct cairo_user_data_key_t
{
	int unused;
}


/**
 * A data structure for holding a rectangle with integer coordinates.
 * int x;
 * X coordinate of the left side of the rectangle
 * int y;
 * Y coordinate of the the top side of the rectangle
 * int width;
 * width of the rectangle
 * int height;
 * height of the rectangle
 * Since 1.10
 */
public struct cairo_rectangle_int_t
{
	int x, y;
	int width, height;
}


/*
 * This macro encodes the given cairo version into an integer. The numbers
 * returned by CAIRO_VERSION and cairo_version() are encoded using this macro.
 * Two encoded version numbers can be compared as integers. The encoding ensures
 * that later versions compare greater than earlier versions.
 * Returns: the encoded version.
 * major :
 * the major component of the version number
 * minor :
 * the minor component of the version number
 * micro :
 * the micro component of the version number
 */
// TODO
// #define CAIRO_VERSION_ENCODE(major, minor, micro)

/*
 * This macro encodes the given cairo version into an string. The numbers
 * returned by CAIRO_VERSION_STRING and cairo_version_string() are encoded using this macro.
 * The parameters to this macro must expand to numerical literals.
 * Returns: a string literal containing the version.
 * Since: 1.8
 * major :
 * the major component of the version number
 * minor :
 * the minor component of the version number
 * micro :
 * the micro component of the version number
 */
// TODO
// #define CAIRO_VERSION_STRINGIZE(major, minor, micro)

/*
 * cairo_raster_source_acquire_func_t is the type of function which is
 * called when a pattern is being rendered from. It should create a surface
 * that provides the pixel data for the region of interest as defined by
 * extents, though the surface itself does not have to be limited to that
 * area. For convenience the surface should probably be of image type,
 * created with cairo_surface_create_similar_image() for the target (which
 * enables the number of copies to be reduced during transfer to the
 * device). Another option, might be to return a similar surface to the
 * target for explicit handling by the application of a set of cached sources
 * on the device. The region of sample data provided should be defined using
 * cairo_surface_set_device_offset() to specify the top-left corner of the
 * sample data (along with width and height of the surface).
 * pattern :
 * the pattern being rendered from
 * callback_data :
 * the user data supplied during creation
 * target :
 * the rendering target surface
 * extents :
 * rectangular region of interest in pixels in sample space
 * Returns :
 * a cairo_surface_t
 * Since 1.12
 */
// cairo_surface_t (*cairo_raster_source_acquire_func_t)  (cairo_pattern_t *pattern,  void *callback_data,  cairo_surface_t *target,  const cairo_rectangle_int_t *extents);
public alias extern(C) cairo_surface_t function(cairo_pattern_t* pattern, void* callbackData, cairo_surface_t* target, cairo_rectangle_int_t* extents) cairo_raster_source_acquire_func_t;

/*
 * cairo_raster_source_release_func_t is the type of function which is
 * called when the pixel data is no longer being access by the pattern
 * for the rendering operation. Typically this function will simply
 * destroy the surface created during acquire.
 * pattern :
 * the pattern being rendered from
 * callback_data :
 * the user data supplied during creation
 * surface :
 * the surface created during acquire
 * Since 1.12
 */
// void (*cairo_raster_source_release_func_t)  (cairo_pattern_t *pattern,  void *callback_data,  cairo_surface_t *surface);
public alias extern(C) void function(cairo_pattern_t* pattern, void* callbackData, cairo_surface_t* surface) cairo_raster_source_release_func_t;

/*
 * cairo_raster_source_snapshot_func_t is the type of function which is
 * called when the pixel data needs to be preserved for later use
 * during printing. This pattern will be accessed again later, and it
 * is expected to provide the pixel data that was current at the time
 * of snapshotting.
 * pattern :
 * the pattern being rendered from
 * callback_data :
 * the user data supplied during creation
 * Returns :
 * CAIRO_STATUS_SUCCESS on success, or one of the
 * cairo_status_t error codes for failure.
 * Since 1.12
 */
// cairo_status_t (*cairo_raster_source_snapshot_func_t)  (cairo_pattern_t *pattern,  void *callback_data);
public alias extern(C) cairo_status_t function(cairo_pattern_t* pattern, void* callbackData) cairo_raster_source_snapshot_func_t;

/*
 * cairo_raster_source_copy_func_t is the type of function which is
 * called when the pattern gets copied as a normal part of rendering.
 * pattern :
 * the cairo_pattern_t that was copied to
 * callback_data :
 * the user data supplied during creation
 * other :
 * the cairo_pattern_t being used as the source for the copy
 * Returns :
 * CAIRO_STATUS_SUCCESS on success, or one of the
 * cairo_status_t error codes for failure.
 * Since 1.12
 */
// cairo_status_t (*cairo_raster_source_copy_func_t) (cairo_pattern_t *pattern,  void *callback_data,  const cairo_pattern_t *other);
public alias extern(C) cairo_status_t function(cairo_pattern_t* pattern, void* callbackData, cairo_pattern_t* other) cairo_raster_source_copy_func_t;

/*
 * cairo_raster_source_finish_func_t is the type of function which is
 * called when the pattern (or a copy thereof) is no longer required.
 * pattern :
 * the pattern being rendered from
 * callback_data :
 * the user data supplied during creation
 * Since 1.12
 * See Also
 * cairo_pattern_t
 */
// void (*cairo_raster_source_finish_func_t)  (cairo_pattern_t *pattern,  void *callback_data);
public alias extern(C) void function(cairo_pattern_t* pattern, void* callbackData) cairo_raster_source_finish_func_t;

/*
 * cairo_user_scaled_font_init_func_t is the type of function which is
 * called when a scaled-font needs to be created for a user font-face.
 * The cairo context cr is not used by the caller, but is prepared in font
 * space, similar to what the cairo contexts passed to the render_glyph
 * method will look like. The callback can use this context for extents
 * computation for example. After the callback is called, cr is checked
 * for any error status.
 * The extents argument is where the user font sets the font extents for
 * scaled_font. It is in font space, which means that for most cases its
 * ascent and descent members should add to 1.0. extents is preset to
 * hold a value of 1.0 for ascent, height, and max_x_advance, and 0.0 for
 * descent and max_y_advance members.
 * The callback is optional. If not set, default font extents as described
 * in the previous paragraph will be used.
 * Note that scaled_font is not fully initialized at this
 * point and trying to use it for text operations in the callback will result
 * in deadlock.
 * scaled_font :
 * the scaled-font being created
 * cr :
 * a cairo context, in font space
 * extents :
 * font extents to fill in, in font space
 * Returns :
 * CAIRO_STATUS_SUCCESS upon success, or an error status on error.
 * Since 1.8
 */
// cairo_status_t (*cairo_user_scaled_font_init_func_t)  (cairo_scaled_font_t *scaled_font,  cairo_t *cr,  cairo_font_extents_t *extents);
public alias extern(C) cairo_status_t function(cairo_scaled_font_t* scaledFont, cairo_t* cr, cairo_font_extents_t* extents) cairo_user_scaled_font_init_func_t;

/*
 * cairo_user_scaled_font_render_glyph_func_t is the type of function which
 * is called when a user scaled-font needs to render a glyph.
 * The callback is mandatory, and expected to draw the glyph with code glyph to
 * the cairo context cr. cr is prepared such that the glyph drawing is done in
 * font space. That is, the matrix set on cr is the scale matrix of scaled_font,
 * The extents argument is where the user font sets the font extents for
 * scaled_font. However, if user prefers to draw in user space, they can
 * achieve that by changing the matrix on cr. All cairo rendering operations
 * to cr are permitted, however, the result is undefined if any source other
 * than the default source on cr is used. That means, glyph bitmaps should
 * be rendered using cairo_mask() instead of cairo_paint().
 * Other non-default settings on cr include a font size of 1.0 (given that
 * it is set up to be in font space), and font options corresponding to
 * scaled_font.
 * The extents argument is preset to have x_bearing,
 * width, and y_advance of zero,
 * y_bearing set to -font_extents.ascent,
 * height to font_extents.ascent+font_extents.descent,
 * and x_advance to font_extents.max_x_advance.
 * The only field user needs to set in majority of cases is
 * x_advance.
 * If the width field is zero upon the callback returning
 * (which is its preset value), the glyph extents are automatically computed
 * based on the drawings done to cr. This is in most cases exactly what the
 * desired behavior is. However, if for any reason the callback sets the
 * extents, it must be ink extents, and include the extents of all drawing
 * done to cr in the callback.
 * scaled_font :
 * user scaled-font
 * glyph :
 * glyph code to render
 * cr :
 * cairo context to draw to, in font space
 * extents :
 * glyph extents to fill in, in font space
 * Returns :
 * CAIRO_STATUS_SUCCESS upon success, or
 * CAIRO_STATUS_USER_FONT_ERROR or any other error status on error.
 * Since 1.8
 */
// cairo_status_t (*cairo_user_scaled_font_render_glyph_func_t)  (cairo_scaled_font_t *scaled_font,  unsigned long  glyph,  cairo_t *cr,  cairo_text_extents_t *extents);
public alias extern(C) cairo_status_t function(cairo_scaled_font_t* scaledFont, ulong glyph, cairo_t* cr, cairo_text_extents_t* extents) cairo_user_scaled_font_render_glyph_func_t;

/*
 * cairo_user_scaled_font_text_to_glyphs_func_t is the type of function which
 * is called to convert input text to an array of glyphs. This is used by the
 * cairo_show_text() operation.
 * Using this callback the user-font has full control on glyphs and their
 * positions. That means, it allows for features like ligatures and kerning,
 * as well as complex shaping required for scripts like
 * Arabic and Indic.
 * The num_glyphs argument is preset to the number of glyph entries available
 * in the glyphs buffer. If the glyphs buffer is NULL, the value of
 * num_glyphs will be zero. If the provided glyph array is too short for
 * the conversion (or for convenience), a new glyph array may be allocated
 * using cairo_glyph_allocate() and placed in glyphs. Upon return,
 * num_glyphs should contain the number of generated glyphs. If the value
 * glyphs points at has changed after the call, the caller will free the
 * allocated glyph array using cairo_glyph_free(). The caller will also free
 * the original value of glyphs, so the callback shouldn't do so.
 * The callback should populate the glyph indices and positions (in font space)
 * assuming that the text is to be shown at the origin.
 * If clusters is not NULL, num_clusters and cluster_flags are also
 * non-NULL, and cluster mapping should be computed. The semantics of how
 * cluster array allocation works is similar to the glyph array. That is,
 * if clusters initially points to a non-NULL value, that array may be used
 * as a cluster buffer, and num_clusters points to the number of cluster
 * entries available there. If the provided cluster array is too short for
 * the conversion (or for convenience), a new cluster array may be allocated
 * using cairo_text_cluster_allocate() and placed in clusters. In this case,
 * the original value of clusters will still be freed by the caller. Upon
 * return, num_clusters should contain the number of generated clusters.
 * If the value clusters points at has changed after the call, the caller
 * will free the allocated cluster array using cairo_text_cluster_free().
 * The callback is optional. If num_glyphs is negative upon
 * the callback returning or if the return value
 * is CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED, the unicode_to_glyph callback
 * is tried. See cairo_user_scaled_font_unicode_to_glyph_func_t.
 * Note: While cairo does not impose any limitation on glyph indices,
 * some applications may assume that a glyph index fits in a 16-bit
 * unsigned integer. As such, it is advised that user-fonts keep their
 * glyphs in the 0 to 65535 range. Furthermore, some applications may
 * assume that glyph 0 is a special glyph-not-found glyph. User-fonts
 * are advised to use glyph 0 for such purposes and do not use that
 * glyph value for other purposes.
 * scaled_font :
 * the scaled-font being created
 * utf8 :
 * a string of text encoded in UTF-8
 * utf8_len :
 * length of utf8 in bytes
 * glyphs :
 * pointer to array of glyphs to fill, in font space
 * num_glyphs :
 * pointer to number of glyphs
 * clusters :
 * pointer to array of cluster mapping information to fill, or NULL
 * num_clusters :
 * pointer to number of clusters
 * cluster_flags :
 * pointer to location to store cluster flags corresponding to the
 * output clusters
 * Returns :
 * CAIRO_STATUS_SUCCESS upon success,
 * CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED if fallback options should be tried,
 * or CAIRO_STATUS_USER_FONT_ERROR or any other error status on error.
 * Since 1.8
 */
// cairo_status_t (*cairo_user_scaled_font_text_to_glyphs_func_t)  (cairo_scaled_font_t *scaled_font,  const char *utf8,  int utf8_len,  cairo_glyph_t **glyphs,  int *num_glyphs,  cairo_text_cluster_t **clusters,  int *num_clusters,  cairo_text_cluster_flags_t *cluster_flags);
public alias extern(C) cairo_status_t function(cairo_scaled_font_t* scaledFont, char* utf8, int utf8_Len, cairo_glyph_t** glyphs, int* numGlyphs, cairo_text_cluster_t** clusters, int* numClusters, cairo_text_cluster_flags_t* clusterFlags) cairo_user_scaled_font_text_to_glyphs_func_t;

/*
 * cairo_user_scaled_font_unicode_to_glyph_func_t is the type of function which
 * is called to convert an input Unicode character to a single glyph.
 * This is used by the cairo_show_text() operation.
 * This callback is used to provide the same functionality as the
 * text_to_glyphs callback does (see cairo_user_scaled_font_text_to_glyphs_func_t)
 * but has much less control on the output,
 * in exchange for increased ease of use. The inherent assumption to using
 * this callback is that each character maps to one glyph, and that the
 * mapping is context independent. It also assumes that glyphs are positioned
 * according to their advance width. These mean no ligatures, kerning, or
 * complex scripts can be implemented using this callback.
 * The callback is optional, and only used if text_to_glyphs callback is not
 * set or fails to return glyphs. If this callback is not set or if it returns
 * CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED, an identity mapping from Unicode
 * code-points to glyph indices is assumed.
 * Note: While cairo does not impose any limitation on glyph indices,
 * some applications may assume that a glyph index fits in a 16-bit
 * unsigned integer. As such, it is advised that user-fonts keep their
 * glyphs in the 0 to 65535 range. Furthermore, some applications may
 * assume that glyph 0 is a special glyph-not-found glyph. User-fonts
 * are advised to use glyph 0 for such purposes and do not use that
 * glyph value for other purposes.
 * scaled_font :
 * the scaled-font being created
 * unicode :
 * input unicode character code-point
 * glyph_index :
 * output glyph index
 * Returns :
 * CAIRO_STATUS_SUCCESS upon success,
 * CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED if fallback options should be tried,
 * or CAIRO_STATUS_USER_FONT_ERROR or any other error status on error.
 * Since 1.8
 */
// cairo_status_t (*cairo_user_scaled_font_unicode_to_glyph_func_t)  (cairo_scaled_font_t *scaled_font,  unsigned long  unicode,  unsigned long *glyph_index);
public alias extern(C) cairo_status_t function(cairo_scaled_font_t* scaledFont, ulong unicode, ulong* glyphIndex) cairo_user_scaled_font_unicode_to_glyph_func_t;

/*
 * cairo_read_func_t is the type of function which is called when a
 * backend needs to read data from an input stream. It is passed the
 * closure which was specified by the user at the time the read
 * function was registered, the buffer to read the data into and the
 * length of the data in bytes. The read function should return
 * CAIRO_STATUS_SUCCESS if all the data was successfully read,
 * CAIRO_STATUS_READ_ERROR otherwise.
 * closure :
 * the input closure
 * data :
 * the buffer into which to read the data
 * length :
 * the amount of data to read
 * Returns :
 * the status code of the read operation
 * Since 1.0
 */
// cairo_status_t (*cairo_read_func_t) (void *closure,  unsigned char *data,  unsigned int length);
public alias extern(C) cairo_status_t function(void* closure, uchar* data, uint length) cairo_read_func_t;

/*
 * cairo_write_func_t is the type of function which is called when a
 * backend needs to write data to an output stream. It is passed the
 * closure which was specified by the user at the time the write
 * function was registered, the data to write and the length of the
 * data in bytes. The write function should return
 * CAIRO_STATUS_SUCCESS if all the data was successfully written,
 * CAIRO_STATUS_WRITE_ERROR otherwise.
 * closure :
 * the output closure
 * data :
 * the buffer containing the data to write
 * length :
 * the amount of data to write
 * Returns :
 * the status code of the write operation
 * Since 1.0
 */
// cairo_status_t (*cairo_write_func_t) (void *closure,  const unsigned char *data,  unsigned int length);
public alias extern(C) cairo_status_t function(void* closure, uchar* data, uint length) cairo_write_func_t;

/*
 * cairo_destroy_func_t the type of function which is called when a
 * data element is destroyed. It is passed the pointer to the data
 * element and should free any memory and resources allocated for it.
 * data :
 * The data element being destroyed.
 * Since 1.0
 */
// void (*cairo_destroy_func_t) (void *data);
public alias extern(C) void function(void* data) cairo_destroy_func_t;

// skipped union cairo_path_data_t

