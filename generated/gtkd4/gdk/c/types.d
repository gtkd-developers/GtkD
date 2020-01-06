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
 * An opaque type representing a string as an index into a table
 * of strings on the X server.
 */
public alias const(char)* GdkAtom;

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
	 * Pressure axis is present
	 */
	PRESSURE = 8,
	/**
	 * X tilt axis is present
	 */
	XTILT = 16,
	/**
	 * Y tilt axis is present
	 */
	YTILT = 32,
	/**
	 * Wheel axis is present
	 */
	WHEEL = 64,
	/**
	 * Distance axis is present
	 */
	DISTANCE = 128,
	/**
	 * Z-axis rotation is present
	 */
	ROTATION = 256,
	/**
	 * Slider axis is present
	 */
	SLIDER = 512,
}
alias GdkAxisFlags AxisFlags;

/**
 * An enumeration describing the way in which a device
 * axis (valuator) maps onto the predefined valuator
 * types that GTK understands.
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
	 * the axis is used for pressure information.
	 */
	PRESSURE = 3,
	/**
	 * the axis is used for x tilt information.
	 */
	XTILT = 4,
	/**
	 * the axis is used for y tilt information.
	 */
	YTILT = 5,
	/**
	 * the axis is used for wheel information.
	 */
	WHEEL = 6,
	/**
	 * the axis is used for pen/tablet distance information
	 */
	DISTANCE = 7,
	/**
	 * the axis is used for pen rotation information
	 */
	ROTATION = 8,
	/**
	 * the axis is used for pen slider information
	 */
	SLIDER = 9,
	/**
	 * a constant equal to the numerically highest axis value.
	 */
	LAST = 10,
}
alias GdkAxisUse AxisUse;

/**
 * A set of values describing the possible byte-orders
 * for storing pixel values in memory.
 */
public enum GdkByteOrder
{
	/**
	 * The values are stored with the least-significant byte
	 * first. For instance, the 32-bit value 0xffeecc would be stored
	 * in memory as 0xcc, 0xee, 0xff, 0x00.
	 */
	LSB_FIRST = 0,
	/**
	 * The values are stored with the most-significant byte
	 * first. For instance, the 32-bit value 0xffeecc would be stored
	 * in memory as 0x00, 0xff, 0xee, 0xcc.
	 */
	MSB_FIRST = 1,
}
alias GdkByteOrder ByteOrder;

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
	 * crossing because a GTK+ grab is activated.
	 */
	GTK_GRAB = 3,
	/**
	 * crossing because a GTK+ grab is deactivated.
	 */
	GTK_UNGRAB = 4,
	/**
	 * crossing because a GTK+ widget changed
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
 * Indicates the device type.
 */
public enum GdkDeviceType
{
	/**
	 * Device is a master (or virtual) device. There will
	 * be an associated focus indicator on the screen.
	 */
	MASTER = 0,
	/**
	 * Device is a slave (or physical) device.
	 */
	SLAVE = 1,
	/**
	 * Device is a physical device, currently not attached to
	 * any seat.
	 */
	FLOATING = 2,
}
alias GdkDeviceType DeviceType;

/**
 * Used in #GdkDrag to indicate what the destination
 * should do with the dropped data.
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
	 * useful if source and destination agree on what it means.
	 */
	LINK = 4,
	/**
	 * Ask the user what to do with the data.
	 */
	ASK = 8,
}
alias GdkDragAction DragAction;

/**
 * Used in #GdkDrag to the reason of a cancelled DND operation.
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
 * A set of bit-flags to indicate which events a surface is to receive.
 * Most of these masks map onto one or more of the #GdkEventType event types
 * above.
 *
 * See the [input handling overview][chap-input-handling] for details of
 * [event masks][event-masks] and [event propagation][event-propagation].
 *
 * If %GDK_TOUCH_MASK is enabled, the surface will receive touch events
 * from touch-enabled devices. Those will come as sequences of #GdkEventTouch
 * with type %GDK_TOUCH_UPDATE, enclosed by two events with
 * type %GDK_TOUCH_BEGIN and %GDK_TOUCH_END (or %GDK_TOUCH_CANCEL).
 * gdk_event_get_event_sequence() returns the event sequence for these
 * events, so different sequences may be distinguished.
 */
public enum GdkEventMask
{
	/**
	 * receive expose events
	 */
	EXPOSURE_MASK = 2,
	/**
	 * receive all pointer motion events
	 */
	POINTER_MOTION_MASK = 4,
	/**
	 * receive pointer motion events while any button is pressed
	 */
	BUTTON_MOTION_MASK = 16,
	/**
	 * receive pointer motion events while 1 button is pressed
	 */
	BUTTON1_MOTION_MASK = 32,
	/**
	 * receive pointer motion events while 2 button is pressed
	 */
	BUTTON2_MOTION_MASK = 64,
	/**
	 * receive pointer motion events while 3 button is pressed
	 */
	BUTTON3_MOTION_MASK = 128,
	/**
	 * receive button press events
	 */
	BUTTON_PRESS_MASK = 256,
	/**
	 * receive button release events
	 */
	BUTTON_RELEASE_MASK = 512,
	/**
	 * receive key press events
	 */
	KEY_PRESS_MASK = 1024,
	/**
	 * receive key release events
	 */
	KEY_RELEASE_MASK = 2048,
	/**
	 * receive surface enter events
	 */
	ENTER_NOTIFY_MASK = 4096,
	/**
	 * receive surface leave events
	 */
	LEAVE_NOTIFY_MASK = 8192,
	/**
	 * receive focus change events
	 */
	FOCUS_CHANGE_MASK = 16384,
	/**
	 * receive events about surface configuration change
	 */
	STRUCTURE_MASK = 32768,
	/**
	 * receive property change events
	 */
	PROPERTY_CHANGE_MASK = 65536,
	/**
	 * receive proximity in events
	 */
	PROXIMITY_IN_MASK = 262144,
	/**
	 * receive proximity out events
	 */
	PROXIMITY_OUT_MASK = 524288,
	/**
	 * receive events about surface configuration changes of child surfaces
	 */
	SUBSTRUCTURE_MASK = 1048576,
	/**
	 * receive scroll events
	 */
	SCROLL_MASK = 2097152,
	/**
	 * receive touch events
	 */
	TOUCH_MASK = 4194304,
	/**
	 * receive smooth scrolling events
	 */
	SMOOTH_SCROLL_MASK = 8388608,
	/**
	 * receive touchpad gesture events
	 */
	TOUCHPAD_GESTURE_MASK = 16777216,
	/**
	 * receive tablet pad events
	 */
	TABLET_PAD_MASK = 33554432,
	/**
	 * the combination of all the above event masks.
	 */
	ALL_EVENTS_MASK = 67108862,
}
alias GdkEventMask EventMask;

/**
 * Specifies the type of the event.
 *
 * Do not confuse these events with the signals that GTK+ widgets emit.
 * Although many of these events result in corresponding signals being emitted,
 * the events are often transformed or filtered along the way.
 */
public enum GdkEventType
{
	/**
	 * a special code to indicate a null event.
	 */
	NOTHING = 0,
	/**
	 * the window manager has requested that the toplevel surface be
	 * hidden or destroyed, usually when the user clicks on a special icon in the
	 * title bar.
	 */
	DELETE = 1,
	/**
	 * the surface has been destroyed.
	 */
	DESTROY = 2,
	/**
	 * the pointer (usually a mouse) has moved.
	 */
	MOTION_NOTIFY = 3,
	/**
	 * a mouse button has been pressed.
	 */
	BUTTON_PRESS = 4,
	/**
	 * a mouse button has been released.
	 */
	BUTTON_RELEASE = 5,
	/**
	 * a key has been pressed.
	 */
	KEY_PRESS = 6,
	/**
	 * a key has been released.
	 */
	KEY_RELEASE = 7,
	/**
	 * the pointer has entered the surface.
	 */
	ENTER_NOTIFY = 8,
	/**
	 * the pointer has left the surface.
	 */
	LEAVE_NOTIFY = 9,
	/**
	 * the keyboard focus has entered or left the surface.
	 */
	FOCUS_CHANGE = 10,
	/**
	 * the size, position or stacking order of the surface has changed.
	 */
	CONFIGURE = 11,
	/**
	 * an input device has moved into contact with a sensing
	 * surface (e.g. a touchscreen or graphics tablet).
	 */
	PROXIMITY_IN = 12,
	/**
	 * an input device has moved out of contact with a sensing
	 * surface.
	 */
	PROXIMITY_OUT = 13,
	/**
	 * the mouse has entered the surface while a drag is in progress.
	 */
	DRAG_ENTER = 14,
	/**
	 * the mouse has left the surface while a drag is in progress.
	 */
	DRAG_LEAVE = 15,
	/**
	 * the mouse has moved in the surface while a drag is in
	 * progress.
	 */
	DRAG_MOTION = 16,
	/**
	 * a drop operation onto the surface has started.
	 */
	DROP_START = 17,
	/**
	 * the scroll wheel was turned
	 */
	SCROLL = 18,
	/**
	 * a pointer or keyboard grab was broken. This event type
	 * was added in 2.8.
	 */
	GRAB_BROKEN = 19,
	/**
	 * A new touch event sequence has just started. This event
	 * type was added in 3.4.
	 */
	TOUCH_BEGIN = 20,
	/**
	 * A touch event sequence has been updated. This event type
	 * was added in 3.4.
	 */
	TOUCH_UPDATE = 21,
	/**
	 * A touch event sequence has finished. This event type
	 * was added in 3.4.
	 */
	TOUCH_END = 22,
	/**
	 * A touch event sequence has been canceled. This event type
	 * was added in 3.4.
	 */
	TOUCH_CANCEL = 23,
	/**
	 * A touchpad swipe gesture event, the current state
	 * is determined by its phase field. This event type was added in 3.18.
	 */
	TOUCHPAD_SWIPE = 24,
	/**
	 * A touchpad pinch gesture event, the current state
	 * is determined by its phase field. This event type was added in 3.18.
	 */
	TOUCHPAD_PINCH = 25,
	/**
	 * A tablet pad button press event. This event type
	 * was added in 3.22.
	 */
	PAD_BUTTON_PRESS = 26,
	/**
	 * A tablet pad button release event. This event type
	 * was added in 3.22.
	 */
	PAD_BUTTON_RELEASE = 27,
	/**
	 * A tablet pad axis event from a "ring". This event type was
	 * added in 3.22.
	 */
	PAD_RING = 28,
	/**
	 * A tablet pad axis event from a "strip". This event type was
	 * added in 3.22.
	 */
	PAD_STRIP = 29,
	/**
	 * A tablet pad group mode change. This event type was
	 * added in 3.22.
	 */
	PAD_GROUP_MODE = 30,
	/**
	 * marks the end of the GdkEventType enumeration. Added in 2.18
	 */
	EVENT_LAST = 31,
}
alias GdkEventType EventType;

/**
 * #GdkFrameClockPhase is used to represent the different paint clock
 * phases that can be requested. The elements of the enumeration
 * correspond to the signals of #GdkFrameClock.
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
	 * corresponds to GdkFrameClock::layout.
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
 * Indicates which monitor (in a multi-head setup) a surface should span over
 * when in fullscreen mode.
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
 * Error enumeration for #GdkGLContext.
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
 * Defines how device grabs interact with other devices.
 */
public enum GdkGrabOwnership
{
	/**
	 * All other devices’ events are allowed.
	 */
	NONE = 0,
	/**
	 * Other devices’ events are blocked for the grab surface.
	 */
	SURFACE = 1,
	/**
	 * Other devices’ events are blocked for the whole application.
	 */
	APPLICATION = 2,
}
alias GdkGrabOwnership GrabOwnership;

/**
 * Returned by gdk_device_grab() to indicate success or the reason for the
 * failure of the grab attempt.
 */
public enum GdkGrabStatus
{
	/**
	 * the resource was successfully grabbed.
	 */
	SUCCESS = 0,
	/**
	 * the resource is actively grabbed by another client.
	 */
	ALREADY_GRABBED = 1,
	/**
	 * the resource was grabbed more recently than the
	 * specified time.
	 */
	INVALID_TIME = 2,
	/**
	 * the grab surface or the @confine_to surface are not
	 * viewable.
	 */
	NOT_VIEWABLE = 3,
	/**
	 * the resource is frozen by an active grab of another client.
	 */
	FROZEN = 4,
	/**
	 * the grab failed for some other reason
	 */
	FAILED = 5,
}
alias GdkGrabStatus GrabStatus;

/**
 * Defines the reference point of a surface and the meaning of coordinates
 * passed to gtk_window_move(). See gtk_window_move() and the "implementation
 * notes" section of the
 * [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
 * specification for more details.
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
 * An enumeration that describes the mode of an input device.
 */
public enum GdkInputMode
{
	/**
	 * the device is disabled and will not report any events.
	 */
	DISABLED = 0,
	/**
	 * the device is enabled. The device’s coordinate space
	 * maps to the entire screen.
	 */
	SCREEN = 1,
	/**
	 * the device is enabled. The device’s coordinate space
	 * is mapped to a single surface. The manner in which this surface
	 * is chosen is undefined, but it will typically be the same
	 * way in which the focus surface for key events is determined.
	 */
	SURFACE = 2,
}
alias GdkInputMode InputMode;

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
	 * the device is an eraser. Typically, this would be the other end
	 * of a stylus on a graphics tablet.
	 */
	ERASER = 2,
	/**
	 * the device is a graphics tablet “puck” or similar device.
	 */
	CURSOR = 3,
	/**
	 * the device is a keyboard.
	 */
	KEYBOARD = 4,
	/**
	 * the device is a direct-input touch device, such
	 * as a touchscreen or tablet. This device type has been added in 3.4.
	 */
	TOUCHSCREEN = 5,
	/**
	 * the device is an indirect touch device, such
	 * as a touchpad. This device type has been added in 3.4.
	 */
	TOUCHPAD = 6,
	/**
	 * the device is a trackpoint. This device type has been
	 * added in 3.22
	 */
	TRACKPOINT = 7,
	/**
	 * the device is a "pad", a collection of buttons,
	 * rings and strips found in drawing tablets. This device type has been
	 * added in 3.22.
	 */
	TABLET_PAD = 8,
}
alias GdkInputSource InputSource;

/**
 * #GdkMemoryFormat describes a format that bytes can have in memory.
 *
 * It describes formats by listing the contents of the memory passed to it.
 * So GDK_MEMORY_A8R8G8B8 will be 1 byte (8 bits) of alpha, followed by a
 * byte each of red, green and blue. It is not endian-dependent, so
 * CAIRO_FORMAT_ARGB32 is represented by different #GdkMemoryFormats on
 * architectures with different endiannesses.
 *
 * Its naming is modelled after VkFormat (see
 * https://www.khronos.org/registry/vulkan/specs/1.0/html/vkspec.html#VkFormat
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
	 * 4 bytes; for blue, green, red, alpha.
	 */
	B8G8R8A8 = 2,
	/**
	 * 4 bytes; for alpha, red, green, blue.
	 */
	A8R8G8B8 = 3,
	/**
	 * 4 bytes; for red, green, blue, alpha.
	 */
	R8G8B8A8 = 4,
	/**
	 * 4 bytes; for alpha, blue, green, red.
	 */
	A8B8G8R8 = 5,
	/**
	 * 3 bytes; for red, green, blue. The data is opaque.
	 */
	R8G8B8 = 6,
	/**
	 * 3 bytes; for blue, green, red. The data is opaque.
	 */
	B8G8R8 = 7,
	/**
	 * The number of formats. This value will change as
	 * more formats get added, so do not rely on its concrete integer.
	 */
	N_FORMATS = 8,
}
alias GdkMemoryFormat MemoryFormat;

/**
 * This enum is used with gdk_keymap_get_modifier_mask()
 * in order to determine what modifiers the
 * currently used windowing system backend uses for particular
 * purposes. For example, on X11/Windows, the Control key is used for
 * invoking menu shortcuts (accelerators), whereas on Apple computers
 * it’s the Command key (which correspond to %GDK_CONTROL_MASK and
 * %GDK_MOD2_MASK, respectively).
 */
public enum GdkModifierIntent
{
	/**
	 * the primary modifier used to invoke
	 * menu accelerators.
	 */
	PRIMARY_ACCELERATOR = 0,
	/**
	 * the modifier used to invoke context menus.
	 * Note that mouse button 3 always triggers context menus. When this modifier
	 * is not 0, it additionally triggers context menus when used with mouse button 1.
	 */
	CONTEXT_MENU = 1,
	/**
	 * the modifier used to extend selections
	 * using `modifier`-click or `modifier`-cursor-key
	 */
	EXTEND_SELECTION = 2,
	/**
	 * the modifier used to modify selections,
	 * which in most cases means toggling the clicked item into or out of the selection.
	 */
	MODIFY_SELECTION = 3,
	/**
	 * when any of these modifiers is pressed, the
	 * key event cannot produce a symbol directly. This is meant to be used for
	 * input methods, and for use cases like typeahead search.
	 */
	NO_TEXT_INPUT = 4,
	/**
	 * the modifier that switches between keyboard
	 * groups (AltGr on X11/Windows and Option/Alt on OS X).
	 */
	SHIFT_GROUP = 5,
	/**
	 * The set of modifier masks accepted
	 * as modifiers in accelerators. Needed because Command is mapped to MOD2 on
	 * OSX, which is widely used, but on X11 MOD2 is NumLock and using that for a
	 * mod key is problematic at best.
	 * Ref: https://bugzilla.gnome.org/show_bug.cgi?id=736125.
	 */
	DEFAULT_MOD_MASK = 6,
}
alias GdkModifierIntent ModifierIntent;

/**
 * A set of bit-flags to indicate the state of modifier keys and mouse buttons
 * in various event types. Typical modifier keys are Shift, Control, Meta,
 * Super, Hyper, Alt, Compose, Apple, CapsLock or ShiftLock.
 *
 * Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.
 *
 * GDK recognizes which of the Meta, Super or Hyper keys are mapped
 * to Mod2 - Mod5, and indicates this by setting %GDK_SUPER_MASK,
 * %GDK_HYPER_MASK or %GDK_META_MASK in the state field of key events.
 *
 * Note that GDK may add internal values to events which include
 * reserved values such as %GDK_MODIFIER_RESERVED_13_MASK.  Your code
 * should preserve and ignore them.  You can use %GDK_MODIFIER_MASK to
 * remove all reserved values.
 *
 * Also note that the GDK X backend interprets button press events for button
 * 4-7 as scroll events, so %GDK_BUTTON4_MASK and %GDK_BUTTON5_MASK will never
 * be set.
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
	MOD1_MASK = 8,
	/**
	 * the fifth modifier key (it depends on the modifier
	 * mapping of the X server which key is interpreted as this modifier).
	 */
	MOD2_MASK = 16,
	/**
	 * the sixth modifier key (it depends on the modifier
	 * mapping of the X server which key is interpreted as this modifier).
	 */
	MOD3_MASK = 32,
	/**
	 * the seventh modifier key (it depends on the modifier
	 * mapping of the X server which key is interpreted as this modifier).
	 */
	MOD4_MASK = 64,
	/**
	 * the eighth modifier key (it depends on the modifier
	 * mapping of the X server which key is interpreted as this modifier).
	 */
	MOD5_MASK = 128,
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
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_13_MASK = 8192,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_14_MASK = 16384,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_15_MASK = 32768,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_16_MASK = 65536,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_17_MASK = 131072,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_18_MASK = 262144,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_19_MASK = 524288,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_20_MASK = 1048576,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_21_MASK = 2097152,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_22_MASK = 4194304,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_23_MASK = 8388608,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_24_MASK = 16777216,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_25_MASK = 33554432,
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
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_29_MASK = 536870912,
	/**
	 * not used in GDK itself. GTK uses it to differentiate
	 * between (keyval, modifiers) pairs from key press and release events.
	 */
	RELEASE_MASK = 1073741824,
	/**
	 * a mask covering all modifier types.
	 */
	MODIFIER_MASK = 1543512063,
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
 * Flags about this object. Implementations use these for optimizations
 * such as caching.
 */
public enum GdkPaintableFlags
{
	/**
	 * The size is immutable.
	 * The GdkPaintable::invalidate-size signal will never be
	 * emitted.
	 */
	SIZE = 1,
	/**
	 * The content is immutable.
	 * The GdkPaintable::invalidate-content signal will never be
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
	 * in scroll events. See gdk_event_get_scroll_deltas()
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
 * Used to indicate which fields of a #GdkGeometry struct should be paid
 * attention to. Also, the presence/absence of @GDK_HINT_POS,
 * @GDK_HINT_USER_POS, and @GDK_HINT_USER_SIZE is significant, though they don't
 * directly refer to #GdkGeometry fields. @GDK_HINT_USER_POS will be set
 * automatically by #GtkWindow if you call gtk_window_move().
 * @GDK_HINT_USER_POS and @GDK_HINT_USER_SIZE should be set if the user
 * specified a size/position using a --geometry command-line argument;
 * gtk_window_parse_geometry() automatically sets these flags.
 */
public enum GdkSurfaceHints
{
	/**
	 * indicates that the program has positioned the surface
	 */
	POS = 1,
	/**
	 * min size fields are set
	 */
	MIN_SIZE = 2,
	/**
	 * max size fields are set
	 */
	MAX_SIZE = 4,
	/**
	 * base size fields are set
	 */
	BASE_SIZE = 8,
	/**
	 * aspect ratio fields are set
	 */
	ASPECT = 16,
	/**
	 * resize increment fields are set
	 */
	RESIZE_INC = 32,
	/**
	 * surface gravity field is set
	 */
	WIN_GRAVITY = 64,
	/**
	 * indicates that the surface’s position was explicitly set
	 * by the user
	 */
	USER_POS = 128,
	/**
	 * indicates that the surface’s size was explicitly set by
	 * the user
	 */
	USER_SIZE = 256,
}
alias GdkSurfaceHints SurfaceHints;

/**
 * Specifies the state of a toplevel surface.
 *
 * On platforms that support information about individual edges, the %GDK_SURFACE_STATE_TILED
 * state will be set whenever any of the individual tiled states is set. On platforms
 * that lack that support, the tiled state will give an indication of tiledness without
 * any of the per-edge states being set.
 */
public enum GdkSurfaceState
{
	/**
	 * the surface is not shown
	 */
	WITHDRAWN = 1,
	/**
	 * the surface is minimized
	 */
	MINIMIZED = 2,
	/**
	 * the surface is maximized
	 */
	MAXIMIZED = 4,
	/**
	 * the surface is sticky
	 */
	STICKY = 8,
	/**
	 * the surface is maximized without decorations
	 */
	FULLSCREEN = 16,
	/**
	 * the surface is kept above other surfaces
	 */
	ABOVE = 32,
	/**
	 * the surface is kept below other surfaces
	 */
	BELOW = 64,
	/**
	 * the surface is presented as focused (with active decorations)
	 */
	FOCUSED = 128,
	/**
	 * the surface is in a tiled state
	 */
	TILED = 256,
	/**
	 * whether the top edge is tiled
	 */
	TOP_TILED = 512,
	/**
	 * whether the top edge is resizable
	 */
	TOP_RESIZABLE = 1024,
	/**
	 * whether the right edge is tiled
	 */
	RIGHT_TILED = 2048,
	/**
	 * whether the right edge is resizable
	 */
	RIGHT_RESIZABLE = 4096,
	/**
	 * whether the bottom edge is tiled
	 */
	BOTTOM_TILED = 8192,
	/**
	 * whether the bottom edge is resizable
	 */
	BOTTOM_RESIZABLE = 16384,
	/**
	 * whether the left edge is tiled
	 */
	LEFT_TILED = 32768,
	/**
	 * whether the left edge is resizable
	 */
	LEFT_RESIZABLE = 65536,
}
alias GdkSurfaceState SurfaceState;

/**
 * Describes the kind of surface.
 */
public enum GdkSurfaceType
{
	/**
	 * toplevel window (used to implement #GtkWindow)
	 */
	TOPLEVEL = 0,
	/**
	 * override redirect temporary surface (used to implement #GtkMenu)
	 */
	TEMP = 1,
	/**
	 * popup window with semantics like xdg-popover
	 */
	POPUP = 2,
}
alias GdkSurfaceType SurfaceType;

/**
 * These are hints for the window manager that indicate what type of function
 * the window has. The window manager can use this when determining decoration
 * and behaviour of the window. The hint must be set before mapping the window.
 *
 * See the [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
 * specification for more details about window types.
 */
public enum GdkSurfaceTypeHint
{
	/**
	 * Normal toplevel window.
	 */
	NORMAL = 0,
	/**
	 * Dialog window.
	 */
	DIALOG = 1,
	/**
	 * Window used to implement a menu; GTK uses
	 * this hint only for torn-off menus, see #GtkTearoffMenuItem.
	 */
	MENU = 2,
	/**
	 * Window used to implement toolbars.
	 */
	TOOLBAR = 3,
	/**
	 * Window used to display a splash
	 * screen during application startup.
	 */
	SPLASHSCREEN = 4,
	/**
	 * Utility windows which are not detached
	 * toolbars or dialogs.
	 */
	UTILITY = 5,
	/**
	 * Used for creating dock or panel windows.
	 */
	DOCK = 6,
	/**
	 * Used for creating the desktop background
	 * window.
	 */
	DESKTOP = 7,
	/**
	 * A menu that belongs to a menubar.
	 */
	DROPDOWN_MENU = 8,
	/**
	 * A menu that does not belong to a menubar,
	 * e.g. a context menu.
	 */
	POPUP_MENU = 9,
	/**
	 * A tooltip.
	 */
	TOOLTIP = 10,
	/**
	 * A notification - typically a “bubble”
	 * that belongs to a status icon.
	 */
	NOTIFICATION = 11,
	/**
	 * A popup from a combo box.
	 */
	COMBO = 12,
	/**
	 * A window that is used to implement a DND cursor.
	 */
	DND = 13,
}
alias GdkSurfaceTypeHint SurfaceTypeHint;

/**
 * Specifies the current state of a touchpad gesture. All gestures are
 * guaranteed to begin with an event with phase %GDK_TOUCHPAD_GESTURE_PHASE_BEGIN,
 * followed by 0 or several events with phase %GDK_TOUCHPAD_GESTURE_PHASE_UPDATE.
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
 * Error enumeration for #GdkVulkanContext.
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

/**
 * These are hints originally defined by the Motif toolkit.
 * The window manager can use them when determining how to decorate
 * the surface. The hint must be set before mapping the surface.
 */
public enum GdkWMDecoration
{
	/**
	 * all decorations should be applied.
	 */
	ALL = 1,
	/**
	 * a frame should be drawn around the surface.
	 */
	BORDER = 2,
	/**
	 * the frame should have resize handles.
	 */
	RESIZEH = 4,
	/**
	 * a titlebar should be placed above the surface.
	 */
	TITLE = 8,
	/**
	 * a button for opening a menu should be included.
	 */
	MENU = 16,
	/**
	 * a minimize button should be included.
	 */
	MINIMIZE = 32,
	/**
	 * a maximize button should be included.
	 */
	MAXIMIZE = 64,
}
alias GdkWMDecoration WMDecoration;

/**
 * These are hints originally defined by the Motif toolkit. The window manager
 * can use them when determining the functions to offer for the surface. The
 * hint must be set before mapping the surface.
 */
public enum GdkWMFunction
{
	/**
	 * all functions should be offered.
	 */
	ALL = 1,
	/**
	 * the surface should be resizable.
	 */
	RESIZE = 2,
	/**
	 * the surface should be movable.
	 */
	MOVE = 4,
	/**
	 * the surface should be minimizable.
	 */
	MINIMIZE = 8,
	/**
	 * the surface should be maximizable.
	 */
	MAXIMIZE = 16,
	/**
	 * the surface should be closable.
	 */
	CLOSE = 32,
}
alias GdkWMFunction WMFunction;

struct GdkAppLaunchContext;

struct GdkCairoContext;

struct GdkClipboard;

struct GdkContentDeserializer;

struct GdkContentFormats;

struct GdkContentFormatsBuilder;

struct GdkContentProvider
{
	GObject parent;
}

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
	 *     provider = a #GdkContentProvider
	 * Returns: The formats of the provider
	 */
	extern(C) GdkContentFormats* function(GdkContentProvider* provider) refFormats;
	/**
	 *
	 * Params:
	 *     provider = a #GdkContentProvider
	 * Returns: The storable formats of the provider
	 */
	extern(C) GdkContentFormats* function(GdkContentProvider* provider) refStorableFormats;
	/** */
	extern(C) void function(GdkContentProvider* provider, const(char)* mimeType, GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) writeMimeTypeAsync;
	/**
	 *
	 * Params:
	 *     provider = a #GdkContentProvider
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation was completed successfully. Otherwise
	 *     @error will be set to describe the failure.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GdkContentProvider* provider, GAsyncResult* result, GError** err) writeMimeTypeFinish;
	/**
	 *
	 * Params:
	 *     provider = a #GdkContentProvider
	 *     value = the #GValue to fill
	 * Returns: %TRUE if the value was set successfully. Otherwise
	 *     @error will be set to describe the failure.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GdkContentProvider* provider, GValue* value, GError** err) getValue;
	void*[8] padding;
}

struct GdkContentSerializer;

struct GdkCursor;

struct GdkDevice;

struct GdkDevicePad;

struct GdkDevicePadInterface;

struct GdkDeviceTool;

struct GdkDisplay;

struct GdkDisplayManager;

struct GdkDrag;

struct GdkDrawContext;

struct GdkDrawingContext;

struct GdkDrop;

struct GdkEvent;

struct GdkEventAny;

struct GdkEventButton;

struct GdkEventConfigure;

struct GdkEventCrossing;

struct GdkEventDND;

struct GdkEventFocus;

struct GdkEventGrabBroken;

struct GdkEventKey;

struct GdkEventMotion;

struct GdkEventPadAxis;

struct GdkEventPadButton;

struct GdkEventPadGroupMode;

struct GdkEventProximity;

struct GdkEventScroll;

/**
 * GdkEventSequence is an opaque type representing a sequence
 * of related touch events.
 */
struct GdkEventSequence;

struct GdkEventSetting;

struct GdkEventTouch;

struct GdkEventTouchpadPinch;

struct GdkEventTouchpadSwipe;

struct GdkFrameClock;

struct GdkFrameClockClass;

struct GdkFrameClockPrivate;

struct GdkFrameTimings;

struct GdkGLContext;

struct GdkGLTexture;

struct GdkGLTextureClass;

/**
 * The #GdkGeometry struct gives the window manager information about
 * a surface’s geometry constraints. Normally you would set these on
 * the GTK+ level using gtk_window_set_geometry_hints(). #GtkWindow
 * then sets the hints on the #GdkSurface it creates.
 *
 * gdk_surface_set_geometry_hints() expects the hints to be fully valid already
 * and simply passes them to the window manager; in contrast,
 * gtk_window_set_geometry_hints() performs some interpretation. For example,
 * #GtkWindow will apply the hints to the geometry widget instead of the
 * toplevel window, if you set a geometry widget. Also, the
 * @min_width/@min_height/@max_width/@max_height fields may be set to -1, and
 * #GtkWindow will substitute the size request of the surface or geometry widget.
 * If the minimum size hint is not provided, #GtkWindow will use its requisition
 * as the minimum size. If the minimum size is provided and a geometry widget is
 * set, #GtkWindow will take the minimum size as the minimum size of the
 * geometry widget rather than the entire surface. The base size is treated
 * similarly.
 *
 * The canonical use-case for gtk_window_set_geometry_hints() is to get a
 * terminal widget to resize properly. Here, the terminal text area should be
 * the geometry widget; #GtkWindow will then automatically set the base size to
 * the size of other widgets in the terminal window, such as the menubar and
 * scrollbar. Then, the @width_inc and @height_inc fields should be set to the
 * size of one character in the terminal. Finally, the base size should be set
 * to the size of one character. The net effect is that the minimum size of the
 * terminal will have a 1x1 character terminal area, and only terminal sizes on
 * the “character grid” will be allowed.
 *
 * Here’s an example of how the terminal example would be implemented, assuming
 * a terminal area widget called “terminal” and a toplevel window “toplevel”:
 *
 * |[<!-- language="C" -->
 * GdkGeometry hints;
 *
 * hints.base_width = terminal->char_width;
 * hints.base_height = terminal->char_height;
 * hints.min_width = terminal->char_width;
 * hints.min_height = terminal->char_height;
 * hints.width_inc = terminal->char_width;
 * hints.height_inc = terminal->char_height;
 *
 * gtk_window_set_geometry_hints (GTK_WINDOW (toplevel),
 * GTK_WIDGET (terminal),
 * &hints,
 * GDK_HINT_RESIZE_INC |
 * GDK_HINT_MIN_SIZE |
 * GDK_HINT_BASE_SIZE);
 * ]|
 *
 * The other useful fields are the @min_aspect and @max_aspect fields; these
 * contain a width/height ratio as a floating point number. If a geometry widget
 * is set, the aspect applies to the geometry widget rather than the entire
 * window. The most common use of these hints is probably to set @min_aspect and
 * @max_aspect to the same value, thus forcing the window to keep a constant
 * aspect ratio.
 */
struct GdkGeometry
{
	/**
	 * minimum width of surface (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int minWidth;
	/**
	 * minimum height of surface (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int minHeight;
	/**
	 * maximum width of surface (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int maxWidth;
	/**
	 * maximum height of surface (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int maxHeight;
	/**
	 * allowed surface widths are @base_width + @width_inc * N where N
	 * is any integer (-1 allowed with #GtkWindow)
	 */
	int baseWidth;
	/**
	 * allowed surface widths are @base_height + @height_inc * N where
	 * N is any integer (-1 allowed with #GtkWindow)
	 */
	int baseHeight;
	/**
	 * width resize increment
	 */
	int widthInc;
	/**
	 * height resize increment
	 */
	int heightInc;
	/**
	 * minimum width/height ratio
	 */
	double minAspect;
	/**
	 * maximum width/height ratio
	 */
	double maxAspect;
	/**
	 * surface gravity, see gtk_window_set_gravity()
	 */
	GdkGravity winGravity;
}

struct GdkKeymap;

/**
 * A #GdkKeymapKey is a hardware key that can be mapped to a keyval.
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

struct GdkPaintable;

/**
 * The list of functions that can be implemented for the #GdkPaintable interface.
 * Note that apart from the first function, no function is mandatory to implement,
 * though it is a good idea to implement GdkPaintable:get_current_image() for
 * non-static paintables and GdkPaintable:get_flags() if the image is not dynamic
 * as the default implementation returns no flags and that will make the
 * implementation likely quite slow.
 */
struct GdkPaintableInterface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GdkPaintable* paintable, GdkSnapshot* snapshot, double width, double height) snapshot;
	/**
	 *
	 * Params:
	 *     paintable = a #GdkPaintable
	 * Returns: An immutable paintable for the current
	 *     contents of @paintable.
	 */
	extern(C) GdkPaintable* function(GdkPaintable* paintable) getCurrentImage;
	/**
	 *
	 * Params:
	 *     paintable = a #GdkPaintable
	 * Returns: The #GdkPaintableFlags for this paintable.
	 */
	extern(C) GdkPaintableFlags function(GdkPaintable* paintable) getFlags;
	/**
	 *
	 * Params:
	 *     paintable = a #GdkPaintable
	 * Returns: the intrinsic width of @paintable or 0 if none.
	 */
	extern(C) int function(GdkPaintable* paintable) getIntrinsicWidth;
	/**
	 *
	 * Params:
	 *     paintable = a #GdkPaintable
	 * Returns: the intrinsic height of @paintable or 0 if none.
	 */
	extern(C) int function(GdkPaintable* paintable) getIntrinsicHeight;
	/**
	 *
	 * Params:
	 *     paintable = a #GdkPaintable
	 * Returns: the intrinsic aspect ratio of @paintable or 0.0 if none.
	 */
	extern(C) double function(GdkPaintable* paintable) getIntrinsicAspectRatio;
}

/**
 * Defines the x and y coordinates of a point.
 */
struct GdkPoint
{
	/**
	 * the x coordinate of the point
	 */
	int x;
	/**
	 * the y coordinate of the point
	 */
	int y;
}

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
 * Defines the position and size of a rectangle. It is identical to
 * #cairo_rectangle_int_t.
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
 * A #GdkTimeCoord stores a single event in a motion history.
 */
struct GdkTimeCoord
{
	/**
	 * The timestamp for this event.
	 */
	uint time;
	/**
	 * the values of the device’s axes.
	 */
	double[128] axes;
}

struct GdkVulkanContext;

/**
 * The type of a function that can be registered with gdk_content_register_deserializer().
 * When the function gets called to operate on content, it can call functions on the
 * @deserializer object to obtain the mime type, input stream, user data, etc. for its
 * operation.
 *
 * Params:
 *     deserializer = a #GdkContentDeserializer
 */
public alias extern(C) void function(GdkContentDeserializer* deserializer) GdkContentDeserializeFunc;

/**
 * The type of a function that can be registered with gdk_content_register_serializer().
 * When the function gets called to operate on content, it can call functions on the
 * @serializer object to obtain the mime type, output stream, user data, etc. for its
 * operation.
 *
 * Params:
 *     serializer = a #GdkContentSerializer
 */
public alias extern(C) void function(GdkContentSerializer* serializer) GdkContentSerializeFunc;

/**
 * Type of the callback used to set up @surface so it can be
 * grabbed. A typical action would be ensuring the surface is
 * visible, although there's room for other initialization
 * actions.
 *
 * Params:
 *     seat = the #GdkSeat being grabbed
 *     surface = the #GdkSurface being grabbed
 *     userData = user data passed in gdk_seat_grab()
 */
public alias extern(C) void function(GdkSeat* seat, GdkSurface* surface, void* userData) GdkSeatGrabPrepareFunc;

/**
 * Defines all possible DND actions. This can be used in gdk_drop_status()
 * messages when any drop can be accepted or a more specific drop method
 * is not yet known.
 */
enum ACTION_ALL = 0;
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

enum MAX_TIMECOORD_AXES = 128;
alias GDK_MAX_TIMECOORD_AXES = MAX_TIMECOORD_AXES;

/**
 * A special value, indicating that the background
 * for a surface should be inherited from the parent surface.
 */
enum PARENT_RELATIVE = 1;
alias GDK_PARENT_RELATIVE = PARENT_RELATIVE;

/**
 * This is the priority that the idle handler processing surface updates
 * is given in the
 * [GLib Main Loop][glib-The-Main-Event-Loop].
 */
enum PRIORITY_REDRAW = 120;
alias GDK_PRIORITY_REDRAW = PRIORITY_REDRAW;
