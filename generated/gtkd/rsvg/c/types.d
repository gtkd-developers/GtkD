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
	 * none
	 */
	FLAGS_NONE = 0,
	/**
	 * Allow any SVG XML without size limitations.
	 * For security reasons, this should only be used for trusted input!
	 * Since: 2.40.3
	 */
	FLAG_UNLIMITED = 1,
	/**
	 * Keeps the image data when loading images,
	 * for use by cairo when painting to e.g. a PDF surface. This will make the
	 * resulting PDF file smaller and faster.
	 * Since: 2.40.3
	 */
	FLAG_KEEP_IMAGE_DATA = 2,
}
alias RsvgHandleFlags HandleFlags;

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
	 * em
	 */
	double em;
	/**
	 * ex
	 */
	double ex;
}

struct RsvgHandle
{
	/**
	 * parent instance
	 */
	GObject parent;
	RsvgHandlePrivate* priv;
	void*[15] AbiPadding;
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

struct RsvgHandlePrivate;

/**
 * Position of an SVG fragment.
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

enum MAJOR_VERSION = 2;
alias LIBRSVG_MAJOR_VERSION = MAJOR_VERSION;

enum MICRO_VERSION = 2;
alias LIBRSVG_MICRO_VERSION = MICRO_VERSION;

enum MINOR_VERSION = 44;
alias LIBRSVG_MINOR_VERSION = MINOR_VERSION;

enum VERSION = "2.44.2";
alias LIBRSVG_VERSION = VERSION;
