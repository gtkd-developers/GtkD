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


module gdk.c.types;

public import cairo.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import pango.c.types;


/**
 * Positioning hints for aligning a surface relative to a rectangle.
 *
 * These hints determine how the surface should be positioned in the case that
 * the surface would fall off-screen if placed in its ideal position.
 *
 * For example, %GDK_ANCHOR_FLIP_X will replace %GDK_GRAVITY_NORTH_WEST with
 * %GDK_GRAVITY_NORTH_EAST and vice versa if the surface extends beyond the left
 * or right edges of the monitor.
 *
 * If %GDK_ANCHOR_SLIDE_X is set, the surface can be shifted horizontally to fit
 * on-screen. If %GDK_ANCHOR_RESIZE_X is set, the surface can be shrunken
 * horizontally to fit.
 *
 * In general, when multiple flags are set, flipping should take precedence over
 * sliding, which should take precedence over resizing.
 */
public enum GdkAnchorHints
{
	/**
	 * allow flipping anchors horizontally
	 */
	FLIP_X = 1,
	/**
	 * allow flipping anchors vertically
	 */
	FLIP_Y = 2,
	/**
	 * allow sliding surface horizontally
	 */
	SLIDE_X = 4,
	/**
	 * allow sliding surface vertically
	 */
	SLIDE_Y = 8,
	/**
	 * allow resizing surface horizontally
	 */
	RESIZE_X = 16,
	/**
	 * allow resizing surface vertically
	 */
	RESIZE_Y = 32,
	/**
	 * allow flipping anchors on both axes
	 */
	FLIP = 3,
	/**
	 * allow sliding surface on both axes
	 */
	SLIDE = 12,
	/**
	 * allow resizing surface on both axes
	 */
	RESIZE = 48,
}
alias GdkAnchorHints AnchorHints;

/**
 * Flags describing the current capabilities of a device/tool.
 */
public enum GdkAxisFlags
{
	/**
	 * X axis is present
	 */
	X = 2,
	/**
	 * Y axis is present
	 */
	Y = 4,
	/**
	 * Scroll X delta axis is present
	 */
	DELTA_X = 8,
	/**
	 * Scroll Y delta axis is present
	 */
	DELTA_Y = 16,
	/**
	 * Pressure axis is present
	 */
	PRESSURE = 32,
	/**
	 * X tilt axis is present
	 */
	XTILT = 64,
	/**
	 * Y tilt axis is present
	 */
	YTILT = 128,
	/**
	 * Wheel axis is present
	 */
	WHEEL = 256,
	/**
	 * Distance axis is present
	 */
	DISTANCE = 512,
	/**
	 * Z-axis rotation is present
	 */
	ROTATION = 1024,
	/**
	 * Slider axis is present
	 */
	SLIDER = 2048,
}
alias GdkAxisFlags AxisFlags;

/**
 * Defines how device axes are interpreted by GTK.
 *
 * Note that the X and Y axes are not really needed; pointer devices
 * report their location via the x/y members of events regardless. Whether
 * X and Y are present as axes depends on the GDK backend.
 */
public enum GdkAxisUse
{
	/**
	 * the axis is ignored.
	 */
	IGNORE = 0,
	/**
	 * the axis is used as the x axis.
	 */
	X = 1,
	/**
	 * the axis is used as the y axis.
	 */
	Y = 2,
	/**
	 * the axis is used as the scroll x delta
	 */
	DELTA_X = 3,
	/**
	 * the axis is used as the scroll y delta
	 */
	DELTA_Y = 4,
	/**
	 * the axis is used for pressure information.
	 */
	PRESSURE = 5,
	/**
	 * the axis is used for x tilt information.
	 */
	XTILT = 6,
	/**
	 * the axis is used for y tilt information.
	 */
	YTILT = 7,
	/**
	 * the axis is used for wheel information.
	 */
	WHEEL = 8,
	/**
	 * the axis is used for pen/tablet distance information
	 */
	DISTANCE = 9,
	/**
	 * the axis is used for pen rotation information
	 */
	ROTATION = 10,
	/**
	 * the axis is used for pen slider information
	 */
	SLIDER = 11,
	/**
	 * a constant equal to the numerically highest axis value.
	 */
	LAST = 12,
}
alias GdkAxisUse AxisUse;

/**
 * Specifies the crossing mode for enter and leave events.
 */
public enum GdkCrossingMode
{
	/**
	 * crossing because of pointer motion.
	 */
	NORMAL = 0,
	/**
	 * crossing because a grab is activated.
	 */
	GRAB = 1,
	/**
	 * crossing because a grab is deactivated.
	 */
	UNGRAB = 2,
	/**
	 * crossing because a GTK grab is activated.
	 */
	GTK_GRAB = 3,
	/**
	 * crossing because a GTK grab is deactivated.
	 */
	GTK_UNGRAB = 4,
	/**
	 * crossing because a GTK widget changed
	 * state (e.g. sensitivity).
	 */
	STATE_CHANGED = 5,
	/**
	 * crossing because a touch sequence has begun,
	 * this event is synthetic as the pointer might have not left the surface.
	 */
	TOUCH_BEGIN = 6,
	/**
	 * crossing because a touch sequence has ended,
	 * this event is synthetic as the pointer might have not left the surface.
	 */
	TOUCH_END = 7,
	/**
	 * crossing because of a device switch (i.e.
	 * a mouse taking control of the pointer after a touch device), this event
	 * is synthetic as the pointer didn’t leave the surface.
	 */
	DEVICE_SWITCH = 8,
}
alias GdkCrossingMode CrossingMode;

/**
 * A pad feature.
 */
public enum GdkDevicePadFeature
{
	/**
	 * a button
	 */
	BUTTON = 0,
	/**
	 * a ring-shaped interactive area
	 */
	RING = 1,
	/**
	 * a straight interactive area
	 */
	STRIP = 2,
}
alias GdkDevicePadFeature DevicePadFeature;

/**
 * Indicates the specific type of tool being used being a tablet. Such as an
 * airbrush, pencil, etc.
 */
public enum GdkDeviceToolType
{
	/**
	 * Tool is of an unknown type.
	 */
	UNKNOWN = 0,
	/**
	 * Tool is a standard tablet stylus.
	 */
	PEN = 1,
	/**
	 * Tool is standard tablet eraser.
	 */
	ERASER = 2,
	/**
	 * Tool is a brush stylus.
	 */
	BRUSH = 3,
	/**
	 * Tool is a pencil stylus.
	 */
	PENCIL = 4,
	/**
	 * Tool is an airbrush stylus.
	 */
	AIRBRUSH = 5,
	/**
	 * Tool is a mouse.
	 */
	MOUSE = 6,
	/**
	 * Tool is a lens cursor.
	 */
	LENS = 7,
}
alias GdkDeviceToolType DeviceToolType;

/**
 * Used in `GdkDrop` and `GdkDrag` to indicate the actions that the
 * destination can and should do with the dropped data.
 */
public enum GdkDragAction
{
	/**
	 * Copy the data.
	 */
	COPY = 1,
	/**
	 * Move the data, i.e. first copy it, then delete
	 * it from the source using the DELETE target of the X selection protocol.
	 */
	MOVE = 2,
	/**
	 * Add a link to the data. Note that this is only
	 * useful if source and destination agree on what it means, and is not
	 * supported on all platforms.
	 */
	LINK = 4,
	/**
	 * Ask the user what to do with the data.
	 */
	ASK = 8,
}
alias GdkDragAction DragAction;

/**
 * Used in `GdkDrag` to the reason of a cancelled DND operation.
 */
public enum GdkDragCancelReason
{
	/**
	 * There is no suitable drop target.
	 */
	NO_TARGET = 0,
	/**
	 * Drag cancelled by the user
	 */
	USER_CANCELLED = 1,
	/**
	 * Unspecified error.
	 */
	ERROR = 2,
}
alias GdkDragCancelReason DragCancelReason;

/**
 * Specifies the type of the event.
 */
public enum GdkEventType
{
	/**
	 * the window manager has requested that the toplevel surface be
	 * hidden or destroyed, usually when the user clicks on a special icon in the
	 * title bar.
	 */
	DELETE = 0,
	/**
	 * the pointer (usually a mouse) has moved.
	 */
	MOTION_NOTIFY = 1,
	/**
	 * a mouse button has been pressed.
	 */
	BUTTON_PRESS = 2,
	/**
	 * a mouse button has been released.
	 */
	BUTTON_RELEASE = 3,
	/**
	 * a key has been pressed.
	 */
	KEY_PRESS = 4,
	/**
	 * a key has been released.
	 */
	KEY_RELEASE = 5,
	/**
	 * the pointer has entered the surface.
	 */
	ENTER_NOTIFY = 6,
	/**
	 * the pointer has left the surface.
	 */
	LEAVE_NOTIFY = 7,
	/**
	 * the keyboard focus has entered or left the surface.
	 */
	FOCUS_CHANGE = 8,
	/**
	 * an input device has moved into contact with a sensing
	 * surface (e.g. a touchscreen or graphics tablet).
	 */
	PROXIMITY_IN = 9,
	/**
	 * an input device has moved out of contact with a sensing
	 * surface.
	 */
	PROXIMITY_OUT = 10,
	/**
	 * the mouse has entered the surface while a drag is in progress.
	 */
	DRAG_ENTER = 11,
	/**
	 * the mouse has left the surface while a drag is in progress.
	 */
	DRAG_LEAVE = 12,
	/**
	 * the mouse has moved in the surface while a drag is in
	 * progress.
	 */
	DRAG_MOTION = 13,
	/**
	 * a drop operation onto the surface has started.
	 */
	DROP_START = 14,
	/**
	 * the scroll wheel was turned
	 */
	SCROLL = 15,
	/**
	 * a pointer or keyboard grab was broken.
	 */
	GRAB_BROKEN = 16,
	/**
	 * A new touch event sequence has just started.
	 */
	TOUCH_BEGIN = 17,
	/**
	 * A touch event sequence has been updated.
	 */
	TOUCH_UPDATE = 18,
	/**
	 * A touch event sequence has finished.
	 */
	TOUCH_END = 19,
	/**
	 * A touch event sequence has been canceled.
	 */
	TOUCH_CANCEL = 20,
	/**
	 * A touchpad swipe gesture event, the current state
	 * is determined by its phase field.
	 */
	TOUCHPAD_SWIPE = 21,
	/**
	 * A touchpad pinch gesture event, the current state
	 * is determined by its phase field.
	 */
	TOUCHPAD_PINCH = 22,
	/**
	 * A tablet pad button press event.
	 */
	PAD_BUTTON_PRESS = 23,
	/**
	 * A tablet pad button release event.
	 */
	PAD_BUTTON_RELEASE = 24,
	/**
	 * A tablet pad axis event from a "ring".
	 */
	PAD_RING = 25,
	/**
	 * A tablet pad axis event from a "strip".
	 */
	PAD_STRIP = 26,
	/**
	 * A tablet pad group mode change.
	 */
	PAD_GROUP_MODE = 27,
	/**
	 * A touchpad hold gesture event, the current state
	 * is determined by its phase field. Since: 4.6
	 */
	TOUCHPAD_HOLD = 28,
	/**
	 * marks the end of the GdkEventType enumeration.
	 */
	EVENT_LAST = 29,
}
alias GdkEventType EventType;

/**
 * Used to represent the different paint clock phases that can be requested.
 *
 * The elements of the enumeration correspond to the signals of `GdkFrameClock`.
 */
public enum GdkFrameClockPhase
{
	/**
	 * no phase
	 */
	NONE = 0,
	/**
	 * corresponds to GdkFrameClock::flush-events. Should not be handled by applications.
	 */
	FLUSH_EVENTS = 1,
	/**
	 * corresponds to GdkFrameClock::before-paint. Should not be handled by applications.
	 */
	BEFORE_PAINT = 2,
	/**
	 * corresponds to GdkFrameClock::update.
	 */
	UPDATE = 4,
	/**
	 * corresponds to GdkFrameClock::layout. Should not be handled by applicatiosn.
	 */
	LAYOUT = 8,
	/**
	 * corresponds to GdkFrameClock::paint.
	 */
	PAINT = 16,
	/**
	 * corresponds to GdkFrameClock::resume-events. Should not be handled by applications.
	 */
	RESUME_EVENTS = 32,
	/**
	 * corresponds to GdkFrameClock::after-paint. Should not be handled by applications.
	 */
	AFTER_PAINT = 64,
}
alias GdkFrameClockPhase FrameClockPhase;

/**
 * Indicates which monitor a surface should span over when in fullscreen mode.
 */
public enum GdkFullscreenMode
{
	/**
	 * Fullscreen on current monitor only.
	 */
	CURRENT_MONITOR = 0,
	/**
	 * Span across all monitors when fullscreen.
	 */
	ALL_MONITORS = 1,
}
alias GdkFullscreenMode FullscreenMode;

/**
 * The list of the different APIs that GdkGLContext can potentially support.
 *
 * Since: 4.6
 */
public enum GdkGLAPI
{
	/**
	 * The OpenGL API
	 */
	GL = 1,
	/**
	 * The OpenGL ES API
	 */
	GLES = 2,
}
alias GdkGLAPI GLAPI;

/**
 * Error enumeration for `GdkGLContext`.
 */
public enum GdkGLError
{
	/**
	 * OpenGL support is not available
	 */
	NOT_AVAILABLE = 0,
	/**
	 * The requested visual format is not supported
	 */
	UNSUPPORTED_FORMAT = 1,
	/**
	 * The requested profile is not supported
	 */
	UNSUPPORTED_PROFILE = 2,
	/**
	 * The shader compilation failed
	 */
	COMPILATION_FAILED = 3,
	/**
	 * The shader linking failed
	 */
	LINK_FAILED = 4,
}
alias GdkGLError GLError;

/**
 * Defines the reference point of a surface and is used in `GdkPopupLayout`.
 */
public enum GdkGravity
{
	/**
	 * the reference point is at the top left corner.
	 */
	NORTH_WEST = 1,
	/**
	 * the reference point is in the middle of the top edge.
	 */
	NORTH = 2,
	/**
	 * the reference point is at the top right corner.
	 */
	NORTH_EAST = 3,
	/**
	 * the reference point is at the middle of the left edge.
	 */
	WEST = 4,
	/**
	 * the reference point is at the center of the surface.
	 */
	CENTER = 5,
	/**
	 * the reference point is at the middle of the right edge.
	 */
	EAST = 6,
	/**
	 * the reference point is at the lower left corner.
	 */
	SOUTH_WEST = 7,
	/**
	 * the reference point is at the middle of the lower edge.
	 */
	SOUTH = 8,
	/**
	 * the reference point is at the lower right corner.
	 */
	SOUTH_EAST = 9,
	/**
	 * the reference point is at the top left corner of the
	 * surface itself, ignoring window manager decorations.
	 */
	STATIC = 10,
}
alias GdkGravity Gravity;

/**
 * An enumeration describing the type of an input device in general terms.
 */
public enum GdkInputSource
{
	/**
	 * the device is a mouse. (This will be reported for the core
	 * pointer, even if it is something else, such as a trackball.)
	 */
	MOUSE = 0,
	/**
	 * the device is a stylus of a graphics tablet or similar device.
	 */
	PEN = 1,
	/**
	 * the device is a keyboard.
	 */
	KEYBOARD = 2,
	/**
	 * the device is a direct-input touch device, such
	 * as a touchscreen or tablet
	 */
	TOUCHSCREEN = 3,
	/**
	 * the device is an indirect touch device, such
	 * as a touchpad
	 */
	TOUCHPAD = 4,
	/**
	 * the device is a trackpoint
	 */
	TRACKPOINT = 5,
	/**
	 * the device is a "pad", a collection of buttons,
	 * rings and strips found in drawing tablets
	 */
	TABLET_PAD = 6,
}
alias GdkInputSource InputSource;

/**
 * Describes how well an event matches a given keyval and modifiers.
 *
 * `GdkKeyMatch` values are returned by [method@Gdk.KeyEvent.matches].
 */
public enum GdkKeyMatch
{
	/**
	 * The key event does not match
	 */
	NONE = 0,
	/**
	 * The key event matches if keyboard state
	 * (specifically, the currently active group) is ignored
	 */
	PARTIAL = 1,
	/**
	 * The key event matches
	 */
	EXACT = 2,
}
alias GdkKeyMatch KeyMatch;

/**
 * `GdkMemoryFormat` describes formats that image data can have in memory.
 *
 * It describes formats by listing the contents of the memory passed to it.
 * So GDK_MEMORY_A8R8G8B8 will be 1 byte (8 bits) of alpha, followed by a
 * byte each of red, green and blue. It is not endian-dependent, so
 * CAIRO_FORMAT_ARGB32 is represented by different `GdkMemoryFormats`
 * on architectures with different endiannesses.
 *
 * Its naming is modelled after
 * [VkFormat](https://www.khronos.org/registry/vulkan/specs/1.0/html/vkspec.html#VkFormat)
 * for details).
 */
public enum GdkMemoryFormat
{
	/**
	 * 4 bytes; for blue, green, red, alpha.
	 * The color values are premultiplied with the alpha value.
	 */
	B8G8R8A8_PREMULTIPLIED = 0,
	/**
	 * 4 bytes; for alpha, red, green, blue.
	 * The color values are premultiplied with the alpha value.
	 */
	A8R8G8B8_PREMULTIPLIED = 1,
	/**
	 * 4 bytes; for red, green, blue, alpha
	 * The color values are premultiplied with the alpha value.
	 */
	R8G8B8A8_PREMULTIPLIED = 2,
	/**
	 * 4 bytes; for blue, green, red, alpha.
	 */
	B8G8R8A8 = 3,
	/**
	 * 4 bytes; for alpha, red, green, blue.
	 */
	A8R8G8B8 = 4,
	/**
	 * 4 bytes; for red, green, blue, alpha.
	 */
	R8G8B8A8 = 5,
	/**
	 * 4 bytes; for alpha, blue, green, red.
	 */
	A8B8G8R8 = 6,
	/**
	 * 3 bytes; for red, green, blue. The data is opaque.
	 */
	R8G8B8 = 7,
	/**
	 * 3 bytes; for blue, green, red. The data is opaque.
	 */
	B8G8R8 = 8,
	/**
	 * 3 guint16 values; for red, green, blue. Since: 4.6
	 */
	R16G16B16 = 9,
	/**
	 * 4 guint16 values; for red, green,
	 * blue, alpha. The color values are premultiplied with the alpha value.
	 * Since: 4.6
	 */
	R16G16B16A16_PREMULTIPLIED = 10,
	/**
	 * 4 guint16 values; for red, green, blue, alpha.
	 * Since: 4.6
	 */
	R16G16B16A16 = 11,
	/**
	 * 3 half-float values; for red, green, blue.
	 * The data is opaque. Since: 4.6
	 */
	R16G16B16_FLOAT = 12,
	/**
	 * 4 half-float values; for
	 * red, green, blue and alpha. The color values are premultiplied with
	 * the alpha value. Since: 4.6
	 */
	R16G16B16A16_FLOAT_PREMULTIPLIED = 13,
	/**
	 * 4 half-float values; for red, green,
	 * blue and alpha. Since: 4.6
	 */
	R16G16B16A16_FLOAT = 14,
	R32G32B32_FLOAT = 15,
	/**
	 * 4 float values; for
	 * red, green, blue and alpha. The color values are premultiplied with
	 * the alpha value. Since: 4.6
	 */
	R32G32B32A32_FLOAT_PREMULTIPLIED = 16,
	/**
	 * 4 float values; for red, green, blue and
	 * alpha. Since: 4.6
	 */
	R32G32B32A32_FLOAT = 17,
	/**
	 * The number of formats. This value will change as
	 * more formats get added, so do not rely on its concrete integer.
	 */
	N_FORMATS = 18,
}
alias GdkMemoryFormat MemoryFormat;

/**
 * Flags to indicate the state of modifier keys and mouse buttons
 * in events.
 *
 * Typical modifier keys are Shift, Control, Meta, Super, Hyper, Alt, Compose,
 * Apple, CapsLock or ShiftLock.
 *
 * Note that GDK may add internal values to events which include values outside
 * of this enumeration. Your code should preserve and ignore them.  You can use
 * %GDK_MODIFIER_MASK to remove all private values.
 */
public enum GdkModifierType
{
	/**
	 * the Shift key.
	 */
	SHIFT_MASK = 1,
	/**
	 * a Lock key (depending on the modifier mapping of the
	 * X server this may either be CapsLock or ShiftLock).
	 */
	LOCK_MASK = 2,
	/**
	 * the Control key.
	 */
	CONTROL_MASK = 4,
	/**
	 * the fourth modifier key (it depends on the modifier
	 * mapping of the X server which key is interpreted as this modifier, but
	 * normally it is the Alt key).
	 */
	ALT_MASK = 8,
	/**
	 * the first mouse button.
	 */
	BUTTON1_MASK = 256,
	/**
	 * the second mouse button.
	 */
	BUTTON2_MASK = 512,
	/**
	 * the third mouse button.
	 */
	BUTTON3_MASK = 1024,
	/**
	 * the fourth mouse button.
	 */
	BUTTON4_MASK = 2048,
	/**
	 * the fifth mouse button.
	 */
	BUTTON5_MASK = 4096,
	/**
	 * the Super modifier
	 */
	SUPER_MASK = 67108864,
	/**
	 * the Hyper modifier
	 */
	HYPER_MASK = 134217728,
	/**
	 * the Meta modifier
	 */
	META_MASK = 268435456,
}
alias GdkModifierType ModifierType;

/**
 * Specifies the kind of crossing for enter and leave events.
 *
 * See the X11 protocol specification of LeaveNotify for
 * full details of crossing event generation.
 */
public enum GdkNotifyType
{
	/**
	 * the surface is entered from an ancestor or
	 * left towards an ancestor.
	 */
	ANCESTOR = 0,
	/**
	 * the pointer moves between an ancestor and an
	 * inferior of the surface.
	 */
	VIRTUAL = 1,
	/**
	 * the surface is entered from an inferior or
	 * left towards an inferior.
	 */
	INFERIOR = 2,
	/**
	 * the surface is entered from or left towards
	 * a surface which is neither an ancestor nor an inferior.
	 */
	NONLINEAR = 3,
	/**
	 * the pointer moves between two surfaces
	 * which are not ancestors of each other and the surface is part of
	 * the ancestor chain between one of these surfaces and their least
	 * common ancestor.
	 */
	NONLINEAR_VIRTUAL = 4,
	/**
	 * an unknown type of enter/leave event occurred.
	 */
	UNKNOWN = 5,
}
alias GdkNotifyType NotifyType;

/**
 * Flags about a paintable object.
 *
 * Implementations use these for optimizations such as caching.
 */
public enum GdkPaintableFlags
{
	/**
	 * The size is immutable.
	 * The [signal@GdkPaintable::invalidate-size] signal will never be
	 * emitted.
	 */
	SIZE = 1,
	/**
	 * The content is immutable.
	 * The [signal@GdkPaintable::invalidate-contents] signal will never be
	 * emitted.
	 */
	CONTENTS = 2,
}
alias GdkPaintableFlags PaintableFlags;

/**
 * Specifies the direction for scroll events.
 */
public enum GdkScrollDirection
{
	/**
	 * the surface is scrolled up.
	 */
	UP = 0,
	/**
	 * the surface is scrolled down.
	 */
	DOWN = 1,
	/**
	 * the surface is scrolled to the left.
	 */
	LEFT = 2,
	/**
	 * the surface is scrolled to the right.
	 */
	RIGHT = 3,
	/**
	 * the scrolling is determined by the delta values
	 * in scroll events. See gdk_scroll_event_get_deltas()
	 */
	SMOOTH = 4,
}
alias GdkScrollDirection ScrollDirection;

/**
 * Flags describing the seat capabilities.
 */
public enum GdkSeatCapabilities
{
	/**
	 * No input capabilities
	 */
	NONE = 0,
	/**
	 * The seat has a pointer (e.g. mouse)
	 */
	POINTER = 1,
	/**
	 * The seat has touchscreen(s) attached
	 */
	TOUCH = 2,
	/**
	 * The seat has drawing tablet(s) attached
	 */
	TABLET_STYLUS = 4,
	/**
	 * The seat has keyboard(s) attached
	 */
	KEYBOARD = 8,
	/**
	 * The seat has drawing tablet pad(s) attached
	 */
	TABLET_PAD = 16,
	/**
	 * The union of all pointing capabilities
	 */
	ALL_POINTING = 7,
	/**
	 * The union of all capabilities
	 */
	ALL = 15,
}
alias GdkSeatCapabilities SeatCapabilities;

/**
 * This enumeration describes how the red, green and blue components
 * of physical pixels on an output device are laid out.
 */
public enum GdkSubpixelLayout
{
	/**
	 * The layout is not known
	 */
	UNKNOWN = 0,
	/**
	 * Not organized in this way
	 */
	NONE = 1,
	/**
	 * The layout is horizontal, the order is RGB
	 */
	HORIZONTAL_RGB = 2,
	/**
	 * The layout is horizontal, the order is BGR
	 */
	HORIZONTAL_BGR = 3,
	/**
	 * The layout is vertical, the order is RGB
	 */
	VERTICAL_RGB = 4,
	/**
	 * The layout is vertical, the order is BGR
	 */
	VERTICAL_BGR = 5,
}
alias GdkSubpixelLayout SubpixelLayout;

/**
 * Determines a surface edge or corner.
 */
public enum GdkSurfaceEdge
{
	/**
	 * the top left corner.
	 */
	NORTH_WEST = 0,
	/**
	 * the top edge.
	 */
	NORTH = 1,
	/**
	 * the top right corner.
	 */
	NORTH_EAST = 2,
	/**
	 * the left edge.
	 */
	WEST = 3,
	/**
	 * the right edge.
	 */
	EAST = 4,
	/**
	 * the lower left corner.
	 */
	SOUTH_WEST = 5,
	/**
	 * the lower edge.
	 */
	SOUTH = 6,
	/**
	 * the lower right corner.
	 */
	SOUTH_EAST = 7,
}
alias GdkSurfaceEdge SurfaceEdge;

/**
 * Possible errors that can be returned by `GdkTexture` constructors.
 *
 * Since: 4.6
 */
public enum GdkTextureError
{
	/**
	 * Not enough memory to handle this image
	 */
	TOO_LARGE = 0,
	/**
	 * The image data appears corrupted
	 */
	CORRUPT_IMAGE = 1,
	/**
	 * The image contains features
	 * that cannot be loaded
	 */
	UNSUPPORTED_CONTENT = 2,
	/**
	 * The image format is not supported
	 */
	UNSUPPORTED_FORMAT = 3,
}
alias GdkTextureError TextureError;

public enum GdkTitlebarGesture
{
	DOUBLE_CLICK = 1,
	RIGHT_CLICK = 2,
	MIDDLE_CLICK = 3,
}
alias GdkTitlebarGesture TitlebarGesture;

/**
 * Specifies the state of a toplevel surface.
 *
 * On platforms that support information about individual edges, the
 * %GDK_TOPLEVEL_STATE_TILED state will be set whenever any of the individual
 * tiled states is set. On platforms that lack that support, the tiled state
 * will give an indication of tiledness without any of the per-edge states
 * being set.
 */
public enum GdkToplevelState
{
	/**
	 * the surface is minimized
	 */
	MINIMIZED = 1,
	/**
	 * the surface is maximized
	 */
	MAXIMIZED = 2,
	/**
	 * the surface is sticky
	 */
	STICKY = 4,
	/**
	 * the surface is maximized without decorations
	 */
	FULLSCREEN = 8,
	/**
	 * the surface is kept above other surfaces
	 */
	ABOVE = 16,
	/**
	 * the surface is kept below other surfaces
	 */
	BELOW = 32,
	/**
	 * the surface is presented as focused (with active decorations)
	 */
	FOCUSED = 64,
	/**
	 * the surface is in a tiled state
	 */
	TILED = 128,
	/**
	 * whether the top edge is tiled
	 */
	TOP_TILED = 256,
	/**
	 * whether the top edge is resizable
	 */
	TOP_RESIZABLE = 512,
	/**
	 * whether the right edge is tiled
	 */
	RIGHT_TILED = 1024,
	/**
	 * whether the right edge is resizable
	 */
	RIGHT_RESIZABLE = 2048,
	/**
	 * whether the bottom edge is tiled
	 */
	BOTTOM_TILED = 4096,
	/**
	 * whether the bottom edge is resizable
	 */
	BOTTOM_RESIZABLE = 8192,
	/**
	 * whether the left edge is tiled
	 */
	LEFT_TILED = 16384,
	/**
	 * whether the left edge is resizable
	 */
	LEFT_RESIZABLE = 32768,
}
alias GdkToplevelState ToplevelState;

/**
 * Specifies the current state of a touchpad gesture.
 *
 * All gestures are guaranteed to begin with an event with phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_BEGIN, followed by 0 or several events
 * with phase %GDK_TOUCHPAD_GESTURE_PHASE_UPDATE.
 *
 * A finished gesture may have 2 possible outcomes, an event with phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_END will be emitted when the gesture is
 * considered successful, this should be used as the hint to perform any
 * permanent changes.
 *
 * Cancelled gestures may be so for a variety of reasons, due to hardware
 * or the compositor, or due to the gesture recognition layers hinting the
 * gesture did not finish resolutely (eg. a 3rd finger being added during
 * a pinch gesture). In these cases, the last event will report the phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_CANCEL, this should be used as a hint
 * to undo any visible/permanent changes that were done throughout the
 * progress of the gesture.
 */
public enum GdkTouchpadGesturePhase
{
	/**
	 * The gesture has begun.
	 */
	BEGIN = 0,
	/**
	 * The gesture has been updated.
	 */
	UPDATE = 1,
	/**
	 * The gesture was finished, changes
	 * should be permanently applied.
	 */
	END = 2,
	/**
	 * The gesture was cancelled, all
	 * changes should be undone.
	 */
	CANCEL = 3,
}
alias GdkTouchpadGesturePhase TouchpadGesturePhase;

/**
 * Error enumeration for `GdkVulkanContext`.
 */
public enum GdkVulkanError
{
	/**
	 * Vulkan is not supported on this backend or has not been
	 * compiled in.
	 */
	UNSUPPORTED = 0,
	/**
	 * Vulkan support is not available on this Surface
	 */
	NOT_AVAILABLE = 1,
}
alias GdkVulkanError VulkanError;

struct GdkAppLaunchContext;

struct GdkButtonEvent;

struct GdkCairoContext;

struct GdkClipboard;

struct GdkContentDeserializer;

struct GdkContentFormats;

struct GdkContentFormatsBuilder;

struct GdkContentProvider
{
	GObject parent;
}

/**
 * Class structure for `GdkContentProvider`.
 */
struct GdkContentProviderClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GdkContentProvider* provider) contentChanged;
	/** */
	extern(C) void function(GdkContentProvider* provider, GdkClipboard* clipboard) attachClipboard;
	/** */
	extern(C) void function(GdkContentProvider* provider, GdkClipboard* clipboard) detachClipboard;
	/**
	 *
	 * Params:
	 *     provider = a `GdkContentProvider`
	 * Returns: The formats of the provider
	 */
	extern(C) GdkContentFormats* function(GdkContentProvider* provider) refFormats;
	/**
	 *
	 * Params:
	 *     provider = a `GdkContentProvider`
	 * Returns: The storable formats of the provider
	 */
	extern(C) GdkContentFormats* function(GdkContentProvider* provider) refStorableFormats;
	/** */
	extern(C) void function(GdkContentProvider* provider, const(char)* mimeType, GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) writeMimeTypeAsync;
	/**
	 *
	 * Params:
	 *     provider = a `GdkContentProvider`
	 *     result = a `GAsyncResult`
	 * Returns: %TRUE if the operation was completed successfully. Otherwise
	 *     @error will be set to describe the failure.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GdkContentProvider* provider, GAsyncResult* result, GError** err) writeMimeTypeFinish;
	/**
	 *
	 * Params:
	 *     provider = a `GdkContentProvider`
	 *     value = the `GValue` to fill
	 * Returns: %TRUE if the value was set successfully. Otherwise
	 *     @error will be set to describe the failure.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GdkContentProvider* provider, GValue* value, GError** err) getValue;
	void*[8] padding;
}

struct GdkContentSerializer;

struct GdkCrossingEvent;

struct GdkCursor;

struct GdkDNDEvent;

struct GdkDeleteEvent;

struct GdkDevice;

struct GdkDevicePad;

struct GdkDevicePadInterface;

struct GdkDeviceTool;

struct GdkDisplay;

struct GdkDisplayManager;

struct GdkDrag;

struct GdkDragSurface;

/**
 * The `GdkDragSurfaceInterface` implementation is private to GDK.
 */
struct GdkDragSurfaceInterface;

struct GdkDrawContext;

struct GdkDrop;

struct GdkEvent;

/**
 * `GdkEventSequence` is an opaque type representing a sequence
 * of related touch events.
 */
struct GdkEventSequence;

struct GdkFileList;

struct GdkFocusEvent;

struct GdkFrameClock;

struct GdkFrameClockClass;

struct GdkFrameClockPrivate;

struct GdkFrameTimings;

struct GdkGLContext;

struct GdkGLTexture;

struct GdkGLTextureClass;

struct GdkGrabBrokenEvent;

struct GdkKeyEvent;

/**
 * A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
 */
struct GdkKeymapKey
{
	/**
	 * the hardware keycode. This is an identifying number for a
	 * physical key.
	 */
	uint keycode;
	/**
	 * indicates movement in a horizontal direction. Usually groups are used
	 * for two different languages. In group 0, a key might have two English
	 * characters, and in group 1 it might have two Hebrew characters. The Hebrew
	 * characters will be printed on the key next to the English characters.
	 */
	int group;
	/**
	 * indicates which symbol on the key will be used, in a vertical direction.
	 * So on a standard US keyboard, the key with the number “1” on it also has the
	 * exclamation point ("!") character on it. The level indicates whether to use
	 * the “1” or the “!” symbol. The letter keys are considered to have a lowercase
	 * letter at level 0, and an uppercase letter at level 1, though only the
	 * uppercase letter is printed.
	 */
	int level;
}

struct GdkMemoryTexture;

struct GdkMemoryTextureClass;

struct GdkMonitor;

struct GdkMonitorClass;

struct GdkMotionEvent;

struct GdkPadEvent;

struct GdkPaintable;

/**
 * The list of functions that can be implemented for the `GdkPaintable`
 * interface.
 *
 * Note that apart from the [vfunc@Gdk.Paintable.snapshot] function,
 * no virtual function of this interface is mandatory to implement, though it
 * is a good idea to implement [vfunc@Gdk.Paintable.get_current_image]
 * for non-static paintables and [vfunc@Gdk.Paintable.get_flags] if the
 * image is not dynamic as the default implementation returns no flags and
 * that will make the implementation likely quite slow.
 */
struct GdkPaintableInterface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GdkPaintable* paintable, GdkSnapshot* snapshot, double width, double height) snapshot;
	/**
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 * Returns: An immutable paintable for the current
	 *     contents of @paintable
	 */
	extern(C) GdkPaintable* function(GdkPaintable* paintable) getCurrentImage;
	/**
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 * Returns: The `GdkPaintableFlags` for this paintable
	 */
	extern(C) GdkPaintableFlags function(GdkPaintable* paintable) getFlags;
	/**
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 * Returns: the intrinsic width of @paintable or 0 if none.
	 */
	extern(C) int function(GdkPaintable* paintable) getIntrinsicWidth;
	/**
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 * Returns: the intrinsic height of @paintable or 0 if none.
	 */
	extern(C) int function(GdkPaintable* paintable) getIntrinsicHeight;
	/**
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 * Returns: the intrinsic aspect ratio of @paintable or 0 if none.
	 */
	extern(C) double function(GdkPaintable* paintable) getIntrinsicAspectRatio;
}

struct GdkPopup;

struct GdkPopupInterface;

struct GdkPopupLayout;

struct GdkProximityEvent;

struct GdkRGBA
{
	/**
	 * The intensity of the red channel from 0.0 to 1.0 inclusive
	 */
	float red;
	/**
	 * The intensity of the green channel from 0.0 to 1.0 inclusive
	 */
	float green;
	/**
	 * The intensity of the blue channel from 0.0 to 1.0 inclusive
	 */
	float blue;
	/**
	 * The opacity of the color from 0.0 for completely translucent to
	 * 1.0 for opaque
	 */
	float alpha;
}

/**
 * A `GdkRectangle` data type for representing rectangles.
 *
 * `GdkRectangle` is identical to `cairo_rectangle_t`. Together with Cairo’s
 * `cairo_region_t` data type, these are the central types for representing
 * sets of pixels.
 *
 * The intersection of two rectangles can be computed with
 * [method@Gdk.Rectangle.intersect]; to find the union of two rectangles use
 * [method@Gdk.Rectangle.union].
 *
 * The `cairo_region_t` type provided by Cairo is usually used for managing
 * non-rectangular clipping of graphical operations.
 *
 * The Graphene library has a number of other data types for regions and
 * volumes in 2D and 3D.
 */
struct GdkRectangle
{
	/**
	 * the x coordinate of the top left corner
	 */
	int x;
	/**
	 * the y coordinate of the top left corner
	 */
	int y;
	/**
	 * the width of the rectangle
	 */
	int width;
	/**
	 * the height of the rectangle
	 */
	int height;
}

struct GdkScrollEvent;

struct GdkSeat
{
	GObject parentInstance;
}

struct GdkSnapshot;

struct GdkSnapshotClass;

struct GdkSurface;

struct GdkSurfaceClass;

struct GdkTexture;

struct GdkTextureClass;

/**
 * A `GdkTimeCoord` stores a single event in a motion history.
 */
struct GdkTimeCoord
{
	/**
	 * The timestamp for this event
	 */
	uint time;
	/**
	 * Flags indicating what axes are present
	 */
	GdkAxisFlags flags;
	/**
	 * axis values
	 */
	double[12] axes;
}

struct GdkToplevel;

struct GdkToplevelInterface;

struct GdkToplevelLayout;

struct GdkToplevelSize;

struct GdkTouchEvent;

struct GdkTouchpadEvent;

struct GdkVulkanContext;

/**
 * The type of a function that can be registered with gdk_content_register_deserializer().
 *
 * When the function gets called to operate on content, it can call functions on the
 * @deserializer object to obtain the mime type, input stream, user data, etc. for its
 * operation.
 *
 * Params:
 *     deserializer = a `GdkContentDeserializer`
 */
public alias extern(C) void function(GdkContentDeserializer* deserializer) GdkContentDeserializeFunc;

/**
 * The type of a function that can be registered with gdk_content_register_serializer().
 *
 * When the function gets called to operate on content, it can call functions on the
 * @serializer object to obtain the mime type, output stream, user data, etc. for its
 * operation.
 *
 * Params:
 *     serializer = a `GdkContentSerializer`
 */
public alias extern(C) void function(GdkContentSerializer* serializer) GdkContentSerializeFunc;

/**
 * Defines all possible DND actions.
 *
 * This can be used in [method@Gdk.Drop.status] messages when any drop
 * can be accepted or a more specific drop method is not yet known.
 */
enum ACTION_ALL = 7;
alias GDK_ACTION_ALL = ACTION_ALL;

/**
 * The middle button.
 */
enum BUTTON_MIDDLE = 2;
alias GDK_BUTTON_MIDDLE = BUTTON_MIDDLE;

/**
 * The primary button. This is typically the left mouse button, or the
 * right button in a left-handed setup.
 */
enum BUTTON_PRIMARY = 1;
alias GDK_BUTTON_PRIMARY = BUTTON_PRIMARY;

/**
 * The secondary button. This is typically the right mouse button, or the
 * left button in a left-handed setup.
 */
enum BUTTON_SECONDARY = 3;
alias GDK_BUTTON_SECONDARY = BUTTON_SECONDARY;

/**
 * Represents the current time, and can be used anywhere a time is expected.
 */
enum CURRENT_TIME = 0;
alias GDK_CURRENT_TIME = CURRENT_TIME;

/**
 * Use this macro as the return value for continuing the propagation of
 * an event handler.
 */
enum EVENT_PROPAGATE = false;
alias GDK_EVENT_PROPAGATE = EVENT_PROPAGATE;

/**
 * Use this macro as the return value for stopping the propagation of
 * an event handler.
 */
enum EVENT_STOP = true;
alias GDK_EVENT_STOP = EVENT_STOP;

/**
 * A mask covering all entries in `GdkModifierType`.
 */
enum MODIFIER_MASK = 469769999;
alias GDK_MODIFIER_MASK = MODIFIER_MASK;

/**
 * This is the priority that the idle handler processing surface updates
 * is given in the main loop.
 */
enum PRIORITY_REDRAW = 120;
alias GDK_PRIORITY_REDRAW = PRIORITY_REDRAW;
