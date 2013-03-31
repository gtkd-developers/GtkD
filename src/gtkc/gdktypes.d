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

alias Rectangle GdkRectangle;

/**
 * typedef cairo_rectangle_int_t GdkRectangle;
 * Defines the position and size of a rectangle. It is identical to
 * cairo_rectangle_int_t.
 */
public alias cairo_rectangle_int_t Rectangle;

/**
 * typedef void GdkXEvent;	 /+* Can be cast to window system specific
 * Used to represent native events (XEvents for the X11
 * backend, MSGs for Win32).
 */
public alias void GdkXEvent;

enum GdkModifierIntent
{
	PRIMARY_ACCELERATOR,
	CONTEXT_MENU,
	EXTEND_SELECTION,
	MODIFY_SELECTION,
	NO_TEXT_INPUT,
	SHIFT_GROUP
}
public alias GdkModifierIntent ModifierIntent;

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
 * An enumeration describing the type of an input device in general terms.
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
 * GDK_SOURCE_KEYBOARD
 * the device is a keyboard.
 * GDK_SOURCE_TOUCHSCREEN
 * the device is a direct-input touch device, such
 *  as a touchscreen or tablet. This device type has been added in 3.4.
 * GDK_SOURCE_TOUCHPAD
 * the device is an indirect touch device, such
 *  as a touchpad. This device type has been added in 3.4.
 */
public enum GdkInputSource
{
	SOURCE_MOUSE,
	SOURCE_PEN,
	SOURCE_ERASER,
	SOURCE_CURSOR,
	SOURCE_KEYBOARD,
	SOURCE_TOUCHSCREEN,
	SOURCE_TOUCHPAD
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
 * the axis is used for y tilt information.
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
 * Indicates the device type. See above
 * for more information about the meaning of these device types.
 * GDK_DEVICE_TYPE_MASTER
 * Device is a master (or virtual) device. There will
 *  be an associated focus indicator on the screen.
 * GDK_DEVICE_TYPE_SLAVE
 * Device is a slave (or physical) device.
 * GDK_DEVICE_TYPE_FLOATING
 * Device is a physical device, currently not attached to
 *  any virtual device.
 */
public enum GdkDeviceType
{
	TYPE_MASTER,
	TYPE_SLAVE,
	TYPE_FLOATING
}
alias GdkDeviceType DeviceType;

/**
 * Defines how device grabs interact with other devices.
 * GDK_OWNERSHIP_NONE
 * All other devices' events are allowed.
 * GDK_OWNERSHIP_WINDOW
 * Other devices' events are blocked for the grab window.
 * GDK_OWNERSHIP_APPLICATION
 * Other devices' events are blocked for the whole application.
 */
public enum GdkGrabOwnership
{
	OWNERSHIP_NONE,
	OWNERSHIP_WINDOW,
	OWNERSHIP_APPLICATION
}
alias GdkGrabOwnership GrabOwnership;

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
 * A set of values that describe the manner in which the pixel values
 * for a visual are converted into RGB values for display.
 * GDK_VISUAL_STATIC_GRAY
 * Each pixel value indexes a grayscale value
 *  directly.
 * GDK_VISUAL_GRAYSCALE
 * Each pixel is an index into a color map that
 *  maps pixel values into grayscale values. The color map can be
 *  changed by an application.
 * GDK_VISUAL_STATIC_COLOR
 * Each pixel value is an index into a predefined,
 *  unmodifiable color map that maps pixel values into RGB values.
 * GDK_VISUAL_PSEUDO_COLOR
 * Each pixel is an index into a color map that
 *  maps pixel values into rgb values. The color map can be changed by
 *  an application.
 * GDK_VISUAL_TRUE_COLOR
 * Each pixel value directly contains red, green,
 *  and blue components. Use gdk_visual_get_red_pixel_details(), etc,
 *  to obtain information about how the components are assembled into
 *  a pixel value.
 * GDK_VISUAL_DIRECT_COLOR
 * Each pixel value contains red, green, and blue
 *  components as for GDK_VISUAL_TRUE_COLOR, but the components are
 *  mapped via a color table into the final output table instead of
 *  being converted directly.
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
 *  first. For instance, the 32-bit value 0xffeecc would be stored
 *  in memory as 0x00, 0xff, 0xee, 0xcc.
 */
public enum GdkByteOrder
{
	LSB_FIRST,
	MSB_FIRST
}
alias GdkByteOrder ByteOrder;

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
 *  gdk_cursor_new_from_pixbuf()
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
 * root window; this window has no parent, covers the entire
 *  screen, and is created by the window system
 * GDK_WINDOW_TOPLEVEL
 * toplevel window (used to implement GtkWindow)
 * GDK_WINDOW_CHILD
 * child window (used to implement e.g. GtkEntry)
 * GDK_WINDOW_TEMP
 * override redirect temporary window (used to implement
 *  GtkMenu)
 * GDK_WINDOW_FOREIGN
 * foreign window (see gdk_window_foreign_new())
 * GDK_WINDOW_OFFSCREEN
 * offscreen window (see
 *  the section called “Offscreen Windows”). Since 2.18
 */
public enum GdkWindowType
{
	ROOT,
	TOPLEVEL,
	CHILD,
	TEMP,
	FOREIGN,
	OFFSCREEN
}
alias GdkWindowType WindowType;

/**
 * GDK_INPUT_OUTPUT windows are the standard kind of window you might expect.
 * Such windows receive events and are also displayed on screen.
 * GDK_INPUT_ONLY windows are invisible; they are usually placed above other
 * windows in order to trap or filter the events. You can't draw on
 * GDK_INPUT_ONLY windows.
 * GDK_INPUT_OUTPUT
 * window for graphics and events
 * GDK_INPUT_ONLY
 * window for events only
 */
public enum GdkWindowWindowClass
{
	INPUT_OUTPUT, /+*< nick= input-output >+/
	INPUT_ONLY /+*< nick= input-only >+/
}
alias GdkWindowWindowClass WindowWindowClass;

/**
 * Used to indicate which fields of a GdkGeometry struct should be paid
 * attention to. Also, the presence/absence of GDK_HINT_POS,
 * GDK_HINT_USER_POS, and GDK_HINT_USER_SIZE is significant, though they don't
 * directly refer to GdkGeometry fields. GDK_HINT_USER_POS will be set
 * automatically by GtkWindow if you call gtk_window_move().
 * GDK_HINT_USER_POS and GDK_HINT_USER_SIZE should be set if the user
 * specified a size/position using a --geometry command-line argument;
 * gtk_window_parse_geometry() automatically sets these flags.
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
 * indicates that the window's position was explicitly set
 *  by the user
 * GDK_HINT_USER_SIZE
 * indicates that the window's size was explicitly set by
 *  the user
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
 *  window.
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
 * Used to indicate which fields in the GdkWindowAttr struct should be honored.
 * For example, if you filled in the "cursor" and "x" fields of GdkWindowAttr,
 * pass "GDK_WA_X | GDK_WA_CURSOR" to gdk_window_new(). Fields in
 * GdkWindowAttr not covered by a bit in this enum are required; for example,
 * the width/height, wclass, and window_type fields are required, they have
 * no corresponding flag in GdkWindowAttributesType.
 * GDK_WA_TITLE
 * Honor the title field
 * GDK_WA_X
 * Honor the X coordinate field
 * GDK_WA_Y
 * Honor the Y coordinate field
 * GDK_WA_CURSOR
 * Honor the cursor field
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
	WA_VISUAL = 1 << 5,
	WA_WMCLASS = 1 << 6,
	WA_NOREDIR = 1 << 7,
	WA_TYPE_HINT = 1 << 8
}
alias GdkWindowAttributesType WindowAttributesType;

/**
 * Indicates which monitor (in a multi-head setup) a window should span over
 * when in fullscreen mode.
 * GDK_FULLSCREEN_ON_CURRENT_MONITOR
 * Fullscreen on current monitor only.
 * GDK_FULLSCREEN_ON_ALL_MONITORS
 * Span across all monitors when fullscreen.
 * Since 3.8
 */
public enum GdkFullscreenMode
{
	ON_CURRENT_MONITOR,
	ON_ALL_MONITORS
}
alias GdkFullscreenMode FullscreenMode;

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
 * in various event types. Typical modifier keys are Shift, Control, Meta,
 * Super, Hyper, Alt, Compose, Apple, CapsLock or ShiftLock.
 * Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.
 * Since 2.10, GDK recognizes which of the Meta, Super or Hyper keys are mapped
 * to Mod2 - Mod5, and indicates this by setting GDK_SUPER_MASK,
 * GDK_HYPER_MASK or GDK_META_MASK in the state field of key events.
 * Note that GDK may add internal values to events which include
 * reserved values such as GDK_MODIFIER_RESERVED_13_MASK. Your code
 * should preserve and ignore them. You can use GDK_MODIFIER_MASK to
 * remove all reserved values.
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
 * GDK_MODIFIER_RESERVED_13_MASK
 * A reserved bit flag; do not use in your own code
 * GDK_MODIFIER_RESERVED_14_MASK
 * GDK_MODIFIER_RESERVED_15_MASK
 * GDK_MODIFIER_RESERVED_16_MASK
 * GDK_MODIFIER_RESERVED_17_MASK
 * GDK_MODIFIER_RESERVED_18_MASK
 * GDK_MODIFIER_RESERVED_19_MASK
 * GDK_MODIFIER_RESERVED_20_MASK
 * GDK_MODIFIER_RESERVED_21_MASK
 * GDK_MODIFIER_RESERVED_22_MASK
 * GDK_MODIFIER_RESERVED_23_MASK
 * GDK_MODIFIER_RESERVED_24_MASK
 * GDK_MODIFIER_RESERVED_25_MASK
 * GDK_SUPER_MASK
 * the Super modifier. Since 2.10
 * GDK_HYPER_MASK
 * the Hyper modifier. Since 2.10
 * GDK_META_MASK
 * the Meta modifier. Since 2.10
 * GDK_MODIFIER_RESERVED_29_MASK
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
	MODIFIER_RESERVED_13_MASK = 1 << 13,
	MODIFIER_RESERVED_14_MASK = 1 << 14,
	MODIFIER_RESERVED_15_MASK = 1 << 15,
	MODIFIER_RESERVED_16_MASK = 1 << 16,
	MODIFIER_RESERVED_17_MASK = 1 << 17,
	MODIFIER_RESERVED_18_MASK = 1 << 18,
	MODIFIER_RESERVED_19_MASK = 1 << 19,
	MODIFIER_RESERVED_20_MASK = 1 << 20,
	MODIFIER_RESERVED_21_MASK = 1 << 21,
	MODIFIER_RESERVED_22_MASK = 1 << 22,
	MODIFIER_RESERVED_23_MASK = 1 << 23,
	MODIFIER_RESERVED_24_MASK = 1 << 24,
	MODIFIER_RESERVED_25_MASK = 1 << 25,
	/+* The next few modifiers are used by XKB, so we skip to the end.
	 * Bits 15 - 25 are currently unused. Bit 29 is used internally.
	+/
	SUPER_MASK = 1 << 26,
	HYPER_MASK = 1 << 27,
	META_MASK = 1 << 28,
	MODIFIER_RESERVED_29_MASK = 1 << 29,
	RELEASE_MASK = 1 << 30,
	/+* Combination of SHIFT_MASK..BUTTON5_MASK + SUPER_MASK
	+ HYPER_MASK + META_MASK + RELEASE_MASK +/
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
 * These are hints originally defined by the Motif toolkit. The window manager
 * can use them when determining the functions to offer for the window. The
 * hint must be set before mapping the window.
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
 * GdkFrameClockPhase is used to represent the different paint clock
 * phases that can be requested. The elements of the enumeration
 * correspond to the signals of GdkPaintClock.
 * GDK_FRAME_CLOCK_PHASE_NONE
 * no phase
 * GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS
 * corresponds to GdkFrameClock::flush-events. Should not be handled by applications.
 * GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT
 * corresponds to GdkFrameClock::before-paint. Should not be handled by applications.
 * GDK_FRAME_CLOCK_PHASE_UPDATE
 * corresponds to GdkFrameClock::update.
 * GDK_FRAME_CLOCK_PHASE_LAYOUT
 * corresponds to GdkFrameClock::layout.
 * GDK_FRAME_CLOCK_PHASE_PAINT
 * corresponds to GdkFrameClock::paint.
 * GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS
 * corresponds to GdkFrameClock::resume-events. Should not be handled by applications.
 * GDK_FRAME_CLOCK_PHASE_AFTER_PAINT
 * corresponds to GdkFrameClock::after-paint. Should not be handled by applications.
 * Since 3.8
 */
public enum GdkFrameClockPhase
{
	NONE = 0,
	FLUSH_EVENTS = 1 << 0,
	BEFORE_PAINT = 1 << 1,
	UPDATE = 1 << 2,
	LAYOUT = 1 << 3,
	PAINT = 1 << 4,
	RESUME_EVENTS = 1 << 5,
	AFTER_PAINT = 1 << 6
}
alias GdkFrameClockPhase FrameClockPhase;

/**
 * Specifies the type of the event.
 * Do not confuse these events with the signals that GTK+ widgets emit.
 * Although many of these events result in corresponding signals being emitted,
 * the events are often transformed or filtered along the way.
 * In some language bindings, the values GDK_2BUTTON_PRESS and
 * GDK_3BUTTON_PRESS would translate into something syntactically
 * invalid (eg Gdk.EventType.2ButtonPress, where a
 * symbol is not allowed to start with a number). In that case, the
 * aliases GDK_DOUBLE_BUTTON_PRESS and GDK_TRIPLE_BUTTON_PRESS can
 * be used instead.
 * GDK_NOTHING
 * a special code to indicate a null event.
 * GDK_DELETE
 * the window manager has requested that the toplevel window be
 *  hidden or destroyed, usually when the user clicks on a special icon in the
 *  title bar.
 * GDK_DESTROY
 * the window has been destroyed.
 * GDK_EXPOSE
 * all or part of the window has become visible and needs to be
 *  redrawn.
 * GDK_MOTION_NOTIFY
 * the pointer (usually a mouse) has moved.
 * GDK_BUTTON_PRESS
 * a mouse button has been pressed.
 * GDK_2BUTTON_PRESS
 * a mouse button has been double-clicked (clicked twice
 *  within a short period of time). Note that each click also generates a
 *  GDK_BUTTON_PRESS event.
 * GDK_DOUBLE_BUTTON_PRESS
 * alias for GDK_2BUTTON_PRESS, added in 3.6.
 * GDK_3BUTTON_PRESS
 * a mouse button has been clicked 3 times in a short period
 *  of time. Note that each click also generates a GDK_BUTTON_PRESS event.
 * GDK_TRIPLE_BUTTON_PRESS
 * alias for GDK_3BUTTON_PRESS, added in 3.6.
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
 *  Note that GTK+ discards these events for GDK_WINDOW_CHILD windows.
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
 *  surface (e.g. a touchscreen or graphics tablet).
 * GDK_PROXIMITY_OUT
 * an input device has moved out of contact with a sensing
 *  surface.
 * GDK_DRAG_ENTER
 * the mouse has entered the window while a drag is in progress.
 * GDK_DRAG_LEAVE
 * the mouse has left the window while a drag is in progress.
 * GDK_DRAG_MOTION
 * the mouse has moved in the window while a drag is in
 *  progress.
 * GDK_DRAG_STATUS
 * the status of the drag operation initiated by the window
 *  has changed.
 * GDK_DROP_START
 * a drop operation onto the window has started.
 * GDK_DROP_FINISHED
 * the drop operation initiated by the window has completed.
 * GDK_CLIENT_EVENT
 * a message has been received from another application.
 * GDK_VISIBILITY_NOTIFY
 * the window visibility status has changed.
 * GDK_SCROLL
 * the scroll wheel was turned
 * GDK_WINDOW_STATE
 * the state of a window has changed. See GdkWindowState
 *  for the possible window states
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
 * GDK_TOUCH_BEGIN
 * A new touch event sequence has just started. This event
 *  type was added in 3.4.
 * GDK_TOUCH_UPDATE
 * A touch event sequence has been updated. This event type
 *  was added in 3.4.
 * GDK_TOUCH_END
 * A touch event sequence has finished. This event type
 *  was added in 3.4.
 * GDK_TOUCH_CANCEL
 * A touch event sequence has been canceled. This event type
 *  was added in 3.4.
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
	SCROLL = 31,
	WINDOW_STATE = 32,
	SETTING = 33,
	OWNER_CHANGE = 34,
	GRAB_BROKEN = 35,
	DAMAGE = 36,
	TOUCH_BEGIN = 37,
	TOUCH_UPDATE = 38,
	TOUCH_END = 39,
	TOUCH_CANCEL = 40,
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
 * If GDK_TOUCH_MASK is enabled, the window will receive touch events
 * from touch-enabled devices. Those will come as sequences of GdkEventTouch
 * with type GDK_TOUCH_UPDATE, enclosed by two events with
 * type GDK_TOUCH_BEGIN and GDK_TOUCH_END (or GDK_TOUCH_CANCEL).
 * gdk_event_get_event_sequence() returns the event sequence for these
 * events, so different sequences may be distinguished.
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
 * GDK_TOUCH_MASK
 * receive touch events. Since 3.4
 * GDK_SMOOTH_SCROLL_MASK
 * receive smooth scrolling events. Since 3.4
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
	TOUCH_MASK = 1 << 22,
	SMOOTH_SCROLL_MASK = 1 << 23,
	ALL_EVENTS_MASK = 0xFFFFFE
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
 * GDK_SCROLL_SMOOTH
 * the scrolling is determined by the delta values
 *  in GdkEventScroll. See gdk_event_get_scroll_deltas(). Since: 3.4
 */
public enum GdkScrollDirection
{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	SMOOTH
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
 * crossing because a GTK+ widget changed
 *  state (e.g. sensitivity).
 * GDK_CROSSING_TOUCH_BEGIN
 * crossing because a touch sequence has begun,
 *  this event is synthetic as the pointer might have not left the window.
 * GDK_CROSSING_TOUCH_END
 * crossing because a touch sequence has ended,
 *  this event is synthetic as the pointer might have not left the window.
 * GDK_CROSSING_DEVICE_SWITCH
 * crossing because of a device switch (i.e.
 *  a mouse taking control of the pointer after a touch device), this event
 *  is synthetic as the pointer didn't leave the window.
 */
public enum GdkCrossingMode
{
	NORMAL,
	GRAB,
	UNGRAB,
	GTK_GRAB,
	GTK_UNGRAB,
	STATE_CHANGED,
	TOUCH_BEGIN,
	TOUCH_END,
	DEVICE_SWITCH
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
 * the window is entered from or left towards
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
 * the window is maximized without
 *  decorations.
 * GDK_WINDOW_STATE_ABOVE
 * the window is kept above other windows.
 * GDK_WINDOW_STATE_BELOW
 * the window is kept below other windows.
 * GDK_WINDOW_STATE_FOCUSED
 * the window is presented as focused (with active decorations).
 */
public enum GdkWindowState
{
	WITHDRAWN = 1 << 0,
	ICONIFIED = 1 << 1,
	MAXIMIZED = 1 << 2,
	STICKY = 1 << 3,
	FULLSCREEN = 1 << 4,
	ABOVE = 1 << 5,
	BELOW = 1 << 6,
	FOCUSED = 1 << 7
}
alias GdkWindowState WindowState;

/**
 * Specifies the kind of modification applied to a setting in a
 * GdkEventSetting.
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
 * GDK_DRAG_PROTO_NONE
 * no protocol.
 * GDK_DRAG_PROTO_MOTIF
 * The Motif DND protocol.
 * GDK_DRAG_PROTO_XDND
 * The Xdnd protocol.
 * GDK_DRAG_PROTO_ROOTWIN
 * An extension to the Xdnd protocol for
 *  unclaimed root window drops.
 * GDK_DRAG_PROTO_WIN32_DROPFILES
 * The simple WM_DROPFILES protocol.
 * GDK_DRAG_PROTO_OLE2
 * The complex OLE2 DND protocol (not implemented).
 * GDK_DRAG_PROTO_LOCAL
 * Intra-application DND.
 */
public enum GdkDragProtocol
{
	NONE = 0,
	MOTIF,
	XDND,
	ROOTWIN,
	WIN32_DROPFILES,
	OLE2,
	LOCAL
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
 * Main Gtk struct.
 */
public struct GdkDisplayManager{}


/**
 * Main Gtk struct.
 */
public struct GdkDisplay{}


/**
 * Main Gtk struct.
 */
public struct GdkScreen{}


/**
 * Main Gtk struct.
 */
public struct GdkDeviceManager{}


/**
 * Main Gtk struct.
 */
public struct GdkDevice{}


/**
 * The GdkTimeCoord structure stores a single event in a motion history.
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
 * This is the main structure in the gdk-pixbuf; library. It is
 * used to represent images. It contains information about the
 * image's pixel data, its color space, bits per sample, width and
 * height, and the rowstride (the number of bytes between the start of
 * one row and the start of the next).
 */
public struct GdkPixbuf{}


/**
 * Main Gtk struct.
 * The GdkColor structure is used to describe a color,
 * similar to the XColor struct used in the X11 drawing API.
 * guint32 pixel;
 * For allocated colors, the pixel value used to
 * draw this color on the screen. Not used anymore.
 * guint16 red;
 * The red component of the color. This is
 * a value between 0 and 65535, with 65535 indicating
 * full intensity
 * guint16 green;
 * The green component of the color
 * guint16 blue;
 * The blue component of the color
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
 * The GdkRGBA structure is used to represent a (possibly translucent)
 * color, in a way that is compatible with cairos notion of color.
 * gdouble red;
 * The intensity of the red channel from 0.0 to 1.0 inclusive
 * gdouble green;
 * The intensity of the green channel from 0.0 to 1.0 inclusive
 * gdouble blue;
 * The intensity of the blue channel from 0.0 to 1.0 inclusive
 * gdouble alpha;
 * The opacity of the color from 0.0 for completely translucent to
 * 1.0 for opaque
 */
public struct GdkRGBA
{
	double red;
	double green;
	double blue;
	double alpha;
}


/**
 * Main Gtk struct.
 * The GdkVisual structure contains information about
 * a particular visual.
 */
public struct GdkVisual{}


/**
 * Main Gtk struct.
 * The GdkCursor structure represents a cursor. Its contents are private.
 */
public struct GdkCursor{}


/**
 * Main Gtk struct.
 */
public struct GdkWindow{}


/**
 * The GdkGeometry struct gives the window manager information about
 * a window's geometry constraints. Normally you would set these on
 * the GTK+ level using gtk_window_set_geometry_hints(). GtkWindow
 * then sets the hints on the GdkWindow it creates.
 * gdk_window_set_geometry_hints() expects the hints to be fully valid already
 * and simply passes them to the window manager; in contrast,
 * gtk_window_set_geometry_hints() performs some interpretation. For example,
 * GtkWindow will apply the hints to the geometry widget instead of the
 * toplevel window, if you set a geometry widget. Also, the
 * min_width/min_height/max_width/max_height fields may be set to -1, and
 * GtkWindow will substitute the size request of the window or geometry widget.
 * If the minimum size hint is not provided, GtkWindow will use its requisition
 * as the minimum size. If the minimum size is provided and a geometry widget is
 * set, GtkWindow will take the minimum size as the minimum size of the
 * geometry widget rather than the entire window. The base size is treated
 * similarly.
 * The canonical use-case for gtk_window_set_geometry_hints() is to get a
 * terminal widget to resize properly. Here, the terminal text area should be
 * the geometry widget; GtkWindow will then automatically set the base size to
 * the size of other widgets in the terminal window, such as the menubar and
 * scrollbar. Then, the width_inc and height_inc fields should be set to the
 * size of one character in the terminal. Finally, the base size should be set
 * to the size of one character. The net effect is that the minimum size of the
 * terminal will have a 1x1 character terminal area, and only terminal sizes on
 * the "character grid" will be allowed.
 * Here's an example of how the terminal example would be implemented, assuming
 * a terminal area widget called "terminal" and a toplevel window "toplevel":
 * $(DDOC_COMMENT example)
 * The other useful fields are the min_aspect and max_aspect fields; these
 * contain a width/height ratio as a floating point number. If a geometry widget
 * is set, the aspect applies to the geometry widget rather than the entire
 * window. The most common use of these hints is probably to set min_aspect and
 * max_aspect to the same value, thus forcing the window to keep a constant
 * aspect ratio.
 * gint min_width;
 * minimum width of window (or -1 to use requisition, with
 * GtkWindow only)
 * gint min_height;
 * minimum height of window (or -1 to use requisition, with
 * GtkWindow only)
 * gint max_width;
 * maximum width of window (or -1 to use requisition, with
 * GtkWindow only)
 * gint max_height;
 * maximum height of window (or -1 to use requisition, with
 * GtkWindow only)
 * gint base_width;
 * allowed window widths are base_width + width_inc * N where N
 * is any integer (-1 allowed with GtkWindow)
 * gint base_height;
 * allowed window widths are base_height + height_inc * N where
 * N is any integer (-1 allowed with GtkWindow)
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
 * GdkWindowWindowClass wclass;
 * GDK_INPUT_OUTPUT (normal window) or GDK_INPUT_ONLY (invisible
 * window that receives events)
 * GdkVisual *visual;
 * GdkVisual for window
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
	GdkWindowWindowClass wclass;
	GdkVisual *visual;
	GdkWindowType windowType;
	GdkCursor *cursor;
	char *wmclassName;
	char *wmclassClass;
	int overrideRedirect;
	GdkWindowTypeHint typeHint;
}


/**
 * Main Gtk struct.
 */
public struct GdkFrameClock
{
	GObject parentInstance;
}


/**
 * Main Gtk struct.
 */
public struct GdkFrameTimings
{
	uint refCount;
	long frameCounter;
	ulong cookie;
	long frameTime;
	long drawnTime;
	long presentationTime;
	long refreshInterval;
	long predictedPresentationTime;
	debug
	{
		long layoutStartTime;
		long paintStartTime;
		long frameEndTime;
	}
	uint bitfield0;
	//uint complete : 1;
	//uint sleptBefore : 1;
}


public struct GdkEventSequence{}


/**
 * Contains the fields which are common to all event structs.
 * Any event pointer can safely be cast to a pointer to a GdkEventAny to
 * access these fields.
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
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
 * guint keyval;
 * the key that was pressed or released. See the
 * <gdk/gdkkeysyms.h> header file for a
 * complete list of GDK key codes.
 * gint length;
 * the length of string.
 * gchar *string;
 * a string containing the an approximation of the text that
 * would result from this keypress. The only correct way to handle text
 * input of text is using input methods (see GtkIMContext), so this
 * field is deprecated and should never be used.
 * (gdk_unicode_to_keyval() provides a non-deprecated way of getting
 * an approximate translation for a key.) The string is encoded in the
 * encoding of the current locale (Note: this for backwards compatibility:
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
 * GDK_2BUTTON_PRESS, GDK_3BUTTON_PRESS or GDK_BUTTON_RELEASE,
 * Double and triple-clicks result in a sequence of events being received.
 * For double-clicks the order of events will be:
 * GDK_BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_2BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * Note that the first click is received just like a normal
 * button press, while the second click results in a GDK_2BUTTON_PRESS
 * being received just after the GDK_BUTTON_PRESS.
 * Triple-clicks are very similar to double-clicks, except that
 * GDK_3BUTTON_PRESS is inserted after the third click. The order of the
 * events is:
 * GDK_BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_2BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * GDK_BUTTON_PRESS
 * GDK_3BUTTON_PRESS
 * GDK_BUTTON_RELEASE
 * For a double click to occur, the second button press must occur within
 * 1/4 of a second of the first. For a triple click to occur, the third
 * button press must also occur within 1/2 second of the first button press.
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
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
 * guint button;
 * the button which was pressed or released, numbered from 1 to 5.
 * Normally button 1 is the left mouse button, 2 is the middle button,
 * and 3 is the right button. On 2-button mice, the middle button can
 * often be simulated by pressing both mouse buttons together.
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the
 * screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the
 * screen.
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
 * Used for touch events.
 * type field will be one of GDK_TOUCH_BEGIN, GDK_TOUCH_UPDATE,
 * GDK_TOUCH_END or GDK_TOUCH_CANCEL.
 * Touch events are grouped into sequences by means of the sequence
 * field, which can also be obtained with gdk_event_get_event_sequence().
 * Each sequence begins with a GDK_TOUCH_BEGIN event, followed by
 * any number of GDK_TOUCH_UPDATE events, and ends with a GDK_TOUCH_END
 * (or GDK_TOUCH_CANCEL) event. With multitouch devices, there may be
 * several active sequences at the same time.
 * GdkEventType type;
 * the type of the event (GDK_TOUCH_BEGIN, GDK_TOUCH_UPDATE,
 * GDK_TOUCH_END, GDK_TOUCH_CANCEL)
 * GdkWindow *window;
 * the window which received the event
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent)
 * guint32 time;
 * the time of the event in milliseconds.
 * gdouble x;
 * the x coordinate of the pointer relative to the window
 * gdouble y;
 * the y coordinate of the pointer relative to the window
 * gdouble *axes;
 * x, y translated to the axes of device, or NULL if device is
 * the mouse
 * guint state;
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
 * GdkEventSequence *sequence;
 * the event sequence that the event belongs to
 * gboolean emulating_pointer;
 * whether the event should be used for emulating
 * pointer event
 * GdkDevice *device;
 * the device where the event originated
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the
 * screen
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the
 * screen
 */
public struct GdkEventTouch
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	uint time;
	double x;
	double y;
	double *axes;
	uint state;
	GdkEventSequence *sequence;
	int emulatingPointer;
	GdkDevice *device;
	double xRoot, yRoot;
}


/**
 * Generated from button presses for the buttons 4 to 7. Wheel mice are
 * usually configured to generate button press events for buttons 4 and 5
 * when the wheel is turned.
 * Some GDK backends can also generate 'smooth' scroll events, which
 * can be recognized by the GDK_SCROLL_SMOOTH scroll direction. For
 * these, the scroll deltas can be obtained with
 * gdk_event_get_scroll_deltas().
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
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
 * GdkScrollDirection direction;
 * the direction to scroll to (one of GDK_SCROLL_UP,
 * GDK_SCROLL_DOWN, GDK_SCROLL_LEFT, GDK_SCROLL_RIGHT or
 * GDK_SCROLL_SMOOTH).
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the
 * screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the
 * screen.
 * gdouble delta_x;
 * gdouble delta_y;
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
	double deltaX;
	double deltaY;
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
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
 * gint16 is_hint;
 * set to 1 if this event is just a hint, see the
 * GDK_POINTER_MOTION_HINT_MASK value of GdkEventMask.
 * GdkDevice *device;
 * the device where the event originated.
 * gdouble x_root;
 * the x coordinate of the pointer relative to the root of the
 * screen.
 * gdouble y_root;
 * the y coordinate of the pointer relative to the root of the
 * screen.
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
 * cairo_region_t *region;
 * the region that needs to be redrawn.
 * gint count;
 * the number of contiguous GDK_EXPOSE events following this one.
 * The only use for this is "exposure compression", i.e. handling all
 * contiguous GDK_EXPOSE events in one go, though GDK performs some
 * exposure compression so this is not normally needed.
 */
public struct GdkEventExpose
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	Rectangle area;
	cairo_region_t *region;
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
 * a bit-mask representing the state of
 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
 * buttons. See GdkModifierType. [type GdkModifierType]
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
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * gint16 in;
 * TRUE if the window has gained the keyboard focus, FALSE if
 * it has lost the focus.
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
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
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
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkAtom atom;
 * the property that was changed.
 * guint32 time;
 * the time of the event in milliseconds.
 * guint state;
 * whether the property was changed
 * (GDK_PROPERTY_NEW_VALUE) or deleted (GDK_PROPERTY_DELETE). [type GdkPropertyState]
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
 * the type of the event (GDK_SELECTION_CLEAR,
 * GDK_SELECTION_NOTIFY or GDK_SELECTION_REQUEST).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkAtom selection;
 * the selection.
 * GdkAtom target;
 * the target to which the selection should be converted.
 * GdkAtom property;
 * the property in which to place the result of the conversion.
 * guint32 time;
 * the time of the event in milliseconds.
 * GdkWindow *requestor;
 * the window on which to place property or NULL if none.
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
	GdkWindow *requestor;
}


/**
 * Generated during DND operations.
 * GdkEventType type;
 * the type of the event (GDK_DRAG_ENTER, GDK_DRAG_LEAVE,
 * GDK_DRAG_MOTION, GDK_DRAG_STATUS, GDK_DROP_START or
 * GDK_DROP_FINISHED).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkDragContext *context;
 * the GdkDragContext for the current DND operation.
 * guint32 time;
 * the time of the event in milliseconds.
 * gshort x_root;
 * the x coordinate of the pointer relative to the root of the
 * screen, only set for GDK_DRAG_MOTION and GDK_DROP_START.
 * gshort y_root;
 * the y coordinate of the pointer relative to the root of the
 * screen, only set for GDK_DRAG_MOTION and GDK_DROP_START.
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
 * This event type will be used pretty rarely. It only is important for
 * XInput aware programs that are drawing their own cursor.
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
 * Generated when the state of a toplevel window changes.
 * GdkEventType type;
 * the type of the event (GDK_WINDOW_STATE).
 * GdkWindow *window;
 * the window which received the event.
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
 * GdkWindowState changed_mask;
 * mask specifying what flags have changed.
 * GdkWindowState new_window_state;
 * the new window state, a combination of
 * GdkWindowState bits.
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
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
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
 * Generated when the owner of a selection changes. On X11, this
 * information is only available if the X server supports the XFIXES
 * extension.
 * GdkEventType type;
 * the type of the event (GDK_OWNER_CHANGE).
 * GdkWindow *window;
 * the window which received the event
 * gint8 send_event;
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent)
 * GdkWindow *owner;
 * the new owner of the selection, or NULL if there is none
 * GdkOwnerChange reason;
 * the reason for the ownership change as a GdkOwnerChange value
 * GdkAtom selection;
 * the atom identifying the selection
 * guint32 time;
 * the timestamp of the event
 * guint32 selection_time;
 * the time at which the selection ownership was taken
 * over
 * Since 2.6
 */
public struct GdkEventOwnerChange
{
	GdkEventType type;
	GdkWindow *window;
	byte sendEvent;
	GdkWindow *owner;
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
 * TRUE if the event was sent explicitly (e.g. using
 * XSendEvent).
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
 * A GdkKeymapKey is a hardware key that can be mapped to a keyval.
 * guint keycode;
 * the hardware keycode. This is an identifying number for a
 * physical key.
 * gint group;
 * indicates movement in a horizontal direction. Usually groups are used
 * for two different languages. In group 0, a key might have two English
 * characters, and in group 1 it might have two Hebrew characters. The Hebrew
 * characters will be printed on the key next to the English characters.
 * gint level;
 * indicates which symbol on the key will be used, in a vertical direction.
 * So on a standard US keyboard, the key with the number "1" on it also has the
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
 */
public struct GdkDragContext{}


/**
 * An opaque type representing a string as an index into a table
 * of strings on the X server.
 */
public struct GdkAtom{}


/**
 * Main Gtk struct.
 */
public struct GdkAppLaunchContext{}


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
 * Returns the X window belonging to a GdkWindow.
 * win :
 * a GdkWindow.
 * Returns :
 * the Xlib Window of win.
 */
// TODO
// #define GDK_WINDOW_XID(win)

/*
 */
// TODO
// #define GDK_DISPLAY_XDISPLAY(display)

/*
 * Returns the display of a X11 GdkScreen.
 * screen :
 * a GdkScreen
 * Returns :
 * an Xlib Display*
 */
// TODO
// #define GDK_SCREEN_XDISPLAY(screen)

/*
 * Returns the index of a X11 GdkScreen.
 * screen :
 * a GdkScreen
 * Returns :
 * the position of screen among the screens of its display
 */
// TODO
// #define GDK_SCREEN_XNUMBER(screen) (gdk_x11_screen_get_screen_number (screen))

/*
 * Returns the screen of a X11 GdkScreen.
 * screen :
 * a GdkScreen
 * Returns :
 * an Xlib Screen*
 */
// TODO
// #define GDK_SCREEN_XSCREEN(screen) (gdk_x11_screen_get_xscreen (screen))

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
 * Converts a gpointer back to an XID that was previously converted
 * using GDK_XID_TO_POINTER().
 */
// TODO
// #define GDK_POINTER_TO_XID(pointer) GPOINTER_TO_UINT(pointer)

/*
 * Converts an XID into a gpointer. This is useful with data structures
 * that use pointer arguments such as GHashTable. Use GDK_POINTER_TO_XID()
 * to convert the argument back to an XID.
 */
// TODO
// #define GDK_XID_TO_POINTER(pointer) GUINT_TO_POINTER(pointer)

/*
 * A function of this type is responsible for freeing the pixel array
 * of a pixbuf. The gdk_pixbuf_new_from_data() function lets you
 * pass in a pre-allocated pixel array so that a pixbuf can be
 * created from it; in this case you will need to pass in a function
 * of GdkPixbufDestroyNotify so that the pixel data can be freed
 * when the pixbuf is finalized.
 * pixels :
 * The pixel array of the pixbuf
 * that is being finalized. [array][element-type guint8]
 * data :
 * User closure data. [closure]
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
 * bytes to be written. [array length=count][element-type guint8]
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
 * A function of this type is passed to gdk_window_invalidate_maybe_recurse().
 * It gets called for each child of the window to determine whether to
 * recursively invalidate it or now.
 * window :
 * a GdkWindow
 * user_data :
 * user data
 * Returns :
 * TRUE to invalidate window recursively
 */
// gboolean (*GdkWindowChildFunc) (GdkWindow *window,  gpointer user_data);
public alias extern(C) int function(GdkWindow* window, void* userData) GdkWindowChildFunc;

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
 * Specifies the type of function passed to gdk_event_handler_set() to
 * handle all GDK events.
 * event :
 * the GdkEvent to process.
 * data :
 * user data set when the event handler was installed with
 * gdk_event_handler_set(). [closure]
 */
// void (*GdkEventFunc) (GdkEvent *event,  gpointer data);
public alias extern(C) void function(GdkEvent* event, void* data) GdkEventFunc;
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
		GdkEventDND dnd;
		GdkEventWindowState windowState;
		GdkEventSetting setting;
		GdkEventGrabBroken grabBroken;
	}
}
