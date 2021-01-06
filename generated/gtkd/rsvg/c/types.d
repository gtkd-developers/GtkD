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

public enum RsvgHandleFlags
{
	/**
	 * No flags are set.
	 */
	FLAGS_NONE = 0,
	/**
	 * Disable safety limits in the XML parser.
	 * Libxml2 has <ulink
	 * url="https://gitlab.gnome.org/GNOME/libxml2/blob/master/include/libxml/parserInternals.h">several
	 * limits</ulink> designed to keep malicious XML content from consuming too
	 * much memory while parsing.  For security reasons, this should only be used
	 * for trusted input!
	 * Since: 2.40.3
	 */
	FLAG_UNLIMITED = 1,
	/**
	 * Use this if the Cairo surface to which you
	 * are rendering is a PDF, PostScript, SVG, or Win32 Printing surface.  This
	 * will make librsvg and Cairo use the original, compressed data for images in
	 * the final output, instead of passing uncompressed images.  This will make a
	 * Keeps the image data when loading images, for use by cairo when painting to
	 * e.g. a PDF surface.  For example, this will make the a resulting PDF file
	 * smaller and faster.  Please see <ulink
	 * url="https://www.cairographics.org/manual/cairo-cairo-surface-t.html#cairo-surface-set-mime-data">the
	 * Cairo documentation</ulink> for details.
	 * Since: 2.40.3
	 */
	FLAG_KEEP_IMAGE_DATA = 2,
}
alias RsvgHandleFlags HandleFlags;

/**
 * Units for the #RsvgLength struct.  These have the same meaning as <ulink
 * url="https://www.w3.org/TR/CSS21/syndata.html#length-units">CSS length
 * units</ulink>.
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
 * Dimensions of an SVG image from rsvg_handle_get_dimensions(), or an
 * individual element from rsvg_handle_get_dimensions_sub().  Please see
 * the deprecation documentation for those functions.
 *
 * Deprecated: FIXME: point to deprecation documentation.
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
	 * SVG's original width, unmodified by #RsvgSizeFunc
	 */
	double em;
	/**
	 * SVG's original height, unmodified by #RsvgSizeFunc
	 */
	double ex;
}

struct RsvgHandle
{
	GObject parent;
	void*[16] AbiPadding;
}

/**
 * Class structure for #RsvgHandle.
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
 * #RsvgLength values are used in rsvg_handle_get_intrinsic_dimensions(), for
 * example, to return the CSS length values of the <literal>width</literal> and
 * <literal>height</literal> attributes of an <literal>&lt;svg&gt;</literal>
 * element.
 *
 * This is equivalent to <ulink
 * url="https://www.w3.org/TR/CSS21/syndata.html#length-units">CSS lengths</ulink>.
 *
 * It is up to the calling application to convert lengths in non-pixel units
 * (i.e. those where the @unit field is not #RSVG_UNIT_PX) into something
 * meaningful to the application.  For example, if your application knows the
 * dots-per-inch (DPI) it is using, it can convert lengths with @unit in
 * #RSVG_UNIT_IN or other physical units.
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
 * Position of an SVG fragment from rsvg_handle_get_position_sub().  Please
 * the deprecation documentation for that function.
 *
 * Deprecated: FIXME: point to deprecation documentation.
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

enum MAJOR_VERSION = 2;
alias LIBRSVG_MAJOR_VERSION = MAJOR_VERSION;

enum MICRO_VERSION = 2;
alias LIBRSVG_MICRO_VERSION = MICRO_VERSION;

enum MINOR_VERSION = 50;
alias LIBRSVG_MINOR_VERSION = MINOR_VERSION;

enum VERSION = "2.50.2";
alias LIBRSVG_VERSION = VERSION;
