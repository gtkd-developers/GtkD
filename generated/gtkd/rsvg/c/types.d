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


module rsvg.c.types;

public import cairo.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;


/**
 * An enumeration representing possible errors
 */
public enum RsvgError
{
	/**
	 * the request failed
	 */
	FAILED = 0,
}
alias RsvgError Error;

/**
 * Configuration flags for an [class@Rsvg.Handle].  Note that not all of [class@Rsvg.Handle]'s
 * constructors let you specify flags.  For this reason, [ctor@Rsvg.Handle.new_from_gfile_sync]
 * and [ctor@Rsvg.Handle.new_from_stream_sync] are the preferred ways to create a handle.
 *
 * Since: 2.40.3
 */
public enum RsvgHandleFlags
{
	/**
	 * No flags are set.
	 */
	FLAGS_NONE = 0,
	/**
	 * Disable safety limits in the XML parser.  Libxml2 has
	 * [several limits](https://gitlab.gnome.org/GNOME/libxml2/blob/master/include/libxml/parserInternals.h)
	 * designed to keep malicious XML content from consuming too much memory while parsing.
	 * For security reasons, this should only be used for trusted input!  Since: 2.40.3
	 */
	FLAG_UNLIMITED = 1,
	/**
	 * Use this if the Cairo surface to which you are
	 * rendering is a PDF, PostScript, SVG, or Win32 Printing surface.  This will make librsvg
	 * and Cairo use the original, compressed data for images in the final output, instead of
	 * passing uncompressed images.  For example, this will make the a resulting PDF file
	 * smaller and faster.  Please see [the Cairo
	 * documentation](https://www.cairographics.org/manual/cairo-cairo-surface-t.html#cairo-surface-set-mime-data)
	 * for details.
	 */
	FLAG_KEEP_IMAGE_DATA = 2,
}
alias RsvgHandleFlags HandleFlags;

/**
 * Units for the `RsvgLength` struct.  These have the same meaning as [CSS length
 * units](https://www.w3.org/TR/CSS21/syndata.html#length-units).
 */
public enum RsvgUnit
{
	/**
	 * percentage values; where <literal>1.0</literal> means 100%.
	 */
	PERCENT = 0,
	/**
	 * pixels
	 */
	PX = 1,
	/**
	 * em, or the current font size
	 */
	EM = 2,
	/**
	 * x-height of the current font
	 */
	EX = 3,
	/**
	 * inches
	 */
	IN = 4,
	/**
	 * centimeters
	 */
	CM = 5,
	/**
	 * millimeters
	 */
	MM = 6,
	/**
	 * points, or 1/72 inch
	 */
	PT = 7,
	/**
	 * picas, or 1/6 inch (12 points)
	 */
	PC = 8,
}
alias RsvgUnit Unit;

/**
 * Dimensions of an SVG image from [method@Rsvg.Handle.get_dimensions], or an
 * individual element from [method@Rsvg.Handle.get_dimensions_sub].  Please see
 * the deprecation documentation for those functions.
 *
 * Deprecated: Use [method@Rsvg.Handle.get_intrinsic_size_in_pixels] or
 * [method@Rsvg.Handle.get_geometry_for_layer] instead.
 */
struct RsvgDimensionData
{
	/**
	 * SVG's width, in pixels
	 */
	int width;
	/**
	 * SVG's height, in pixels
	 */
	int height;
	/**
	 * SVG's original width, unmodified by `RsvgSizeFunc`
	 */
	double em;
	/**
	 * SVG's original height, unmodified by `RsvgSizeFunc`
	 */
	double ex;
}

struct RsvgHandle
{
	GObject parent;
	void*[16] AbiPadding;
}

/**
 * Class structure for [class@Rsvg.Handle].
 */
struct RsvgHandleClass
{
	/**
	 * parent class
	 */
	GObjectClass parent;
	void*[15] AbiPadding;
}

/**
 * `RsvgLength` values are used in [method@Rsvg.Handle.get_intrinsic_dimensions], for
 * example, to return the CSS length values of the `width` and
 * `height` attributes of an `<svg>` element.
 *
 * This is equivalent to [CSS lengths](https://www.w3.org/TR/CSS21/syndata.html#length-units).
 *
 * It is up to the calling application to convert lengths in non-pixel units
 * (i.e. those where the @unit field is not `RSVG_UNIT_PX`) into something
 * meaningful to the application.  For example, if your application knows the
 * dots-per-inch (DPI) it is using, it can convert lengths with @unit in
 * `RSVG_UNIT_IN` or other physical units.
 */
struct RsvgLength
{
	/**
	 * numeric part of the length
	 */
	double length;
	/**
	 * unit part of the length
	 */
	RsvgUnit unit;
}

/**
 * Position of an SVG fragment from [method@Rsvg.Handle.get_position_sub].  Please
 * the deprecation documentation for that function.
 *
 * Deprecated: Use [method@Rsvg.Handle.get_geometry_for_layer] instead.
 */
struct RsvgPositionData
{
	/**
	 * position on the x axis
	 */
	int x;
	/**
	 * position on the y axis
	 */
	int y;
}

/**
 * A data structure for holding a rectangle.
 *
 * Since: 2.46
 */
struct RsvgRectangle
{
	/**
	 * X coordinate of the left side of the rectangle
	 */
	double x;
	/**
	 * Y coordinate of the the top side of the rectangle
	 */
	double y;
	/**
	 * width of the rectangle
	 */
	double width;
	/**
	 * height of the rectangle
	 */
	double height;
}

/**
 * Function to let a user of the library specify the SVG's dimensions
 *
 * See the documentation for [method@Rsvg.Handle.set_size_callback] for an example, and
 * for the reasons for deprecation.
 *
 * Deprecated: Use [method@Rsvg.Handle.render_document] instead, which lets you specify
 * a viewport size in which to render the SVG document.
 *
 * Params:
 *     width = the width of the SVG
 *     height = the height of the SVG
 *     userData = user data
 */
public alias extern(C) void function(int* width, int* height, void* userData) RsvgSizeFunc;

/**
 * This is a C macro that expands to a number with the major version
 * of librsvg against which your program is compiled.
 *
 * For example, for librsvg-2.3.4, the major version is 2.
 *
 * C programs can use this as a compile-time check for the required
 * version, but note that generally it is a better idea to do
 * compile-time checks by calling [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
 * in your build scripts.
 *
 * Note: for a run-time check on the version of librsvg that your
 * program is running with (e.g. the version which the linker used for
 * your program), or for programs not written in C, use
 * `rsvg_major_version` instead.
 */
enum MAJOR_VERSION = 2;
alias LIBRSVG_MAJOR_VERSION = MAJOR_VERSION;

/**
 * This is a C macro that expands to a number with the micro version
 * of librsvg against which your program is compiled.
 *
 * For example, for librsvg-2.3.4, the micro version is 4.
 *
 * C programs can use this as a compile-time check for the required
 * version, but note that generally it is a better idea to do
 * compile-time checks by calling [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
 * in your build scripts.
 *
 * Note: for a run-time check on the version of librsvg that your
 * program is running with (e.g. the version which the linker used for
 * your program), or for programs not written in C, use
 * `rsvg_micro_version` instead.
 */
enum MICRO_VERSION = 0;
alias LIBRSVG_MICRO_VERSION = MICRO_VERSION;

/**
 * This is a C macro that expands to a number with the minor version
 * of librsvg against which your program is compiled.
 *
 * For example, for librsvg-2.3.4, the minor version is 3.
 *
 * C programs can use this as a compile-time check for the required
 * version, but note that generally it is a better idea to do
 * compile-time checks by calling [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
 * in your build scripts.
 *
 * Note: for a run-time check on the version of librsvg that your
 * program is running with (e.g. the version which the linker used for
 * your program), or for programs not written in C, use
 * `rsvg_minor_version` instead.
 */
enum MINOR_VERSION = 54;
alias LIBRSVG_MINOR_VERSION = MINOR_VERSION;

/**
 * This is a C macro that expands to a string with the version of
 * librsvg against which your program is compiled.
 *
 * For example, for librsvg-2.3.4, this macro expands to
 * `"2.3.4"`.
 *
 * C programs can use this as a compile-time check for the required
 * version, but note that generally it is a better idea to do
 * compile-time checks by calling [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
 * in your build scripts.
 *
 * Note: for a run-time check on the version of librsvg that your
 * program is running with (e.g. the version which the linker used for
 * your program), or for programs not written in C, use
 * `rsvg_version` instead.
 */
enum VERSION = "2.54.0";
alias LIBRSVG_VERSION = VERSION;
