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


module gstreamerc.gstinterfacestypes;

public import gtkc.glibtypes;
public import gtkc.gobjecttypes;

/**
 * The different video orientation methods.
 *
 * Since: 1.10
 */
public enum GstVideoOrientationMethod
{
	/**
	 * Identity (no rotation)
	 */
	IDENTITY = 0,
	/**
	 * Rotate clockwise 90 degrees
	 */
	_90R = 1,
	/**
	 * Rotate 180 degrees
	 */
	_180 = 2,
	/**
	 * Rotate counter-clockwise 90 degrees
	 */
	_90L = 3,
	/**
	 * Flip horizontally
	 */
	HORIZ = 4,
	/**
	 * Flip vertically
	 */
	VERT = 5,
	/**
	 * Flip across upper left/lower right diagonal
	 */
	UL_LR = 6,
	/**
	 * Flip across upper right/lower left diagonal
	 */
	UR_LL = 7,
	/**
	 * Select flip method based on image-orientation tag
	 */
	AUTO = 8,
	/**
	 * Current status depends on plugin internal setup
	 */
	CUSTOM = 9,
}
alias GstVideoOrientationMethod VideoOrientationMethod;

/**
 * Flags related to the time code information.
 * For drop frame, only 30000/1001 and 60000/1001 frame rates are supported.
 *
 * Since: 1.10
 */
public enum GstVideoTimeCodeFlags
{
	/**
	 * No flags
	 */
	NONE = 0,
	/**
	 * Whether we have drop frame rate
	 */
	DROP_FRAME = 1,
	/**
	 * Whether we have interlaced video
	 */
	INTERLACED = 2,
}
alias GstVideoTimeCodeFlags VideoTimeCodeFlags;

/**
 * #GstVideoDirectionInterface interface.
 *
 * Since: 1.10
 */
struct GstVideoDirectionInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface iface;
}

struct GstVideoOverlay;

/**
 * #GstVideoOverlay interface
 */
struct GstVideoOverlayInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface iface;
	/** */
	extern(C) void function(GstVideoOverlay* overlay) expose;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, int handleEvents) handleEvents;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, int x, int y, int width, int height) setRenderRectangle;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, size_t handle) setWindowHandle;
}

/**
 * Supported frame rates: 30000/1001, 60000/1001 (both with and without drop
 * frame), and integer frame rates e.g. 25/1, 30/1, 50/1, 60/1.
 *
 * The configuration of the time code.
 *
 * Since: 1.10
 */
struct GstVideoTimeCodeConfig
{
	/**
	 * Numerator of the frame rate
	 */
	uint fpsN;
	/**
	 * Denominator of the frame rate
	 */
	uint fpsD;
	/**
	 * the corresponding #GstVideoTimeCodeFlags
	 */
	GstVideoTimeCodeFlags flags;
	/**
	 * The latest daily jam information, if present, or NULL
	 */
	GDateTime* latestDailyJam;
}
