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

/**
 * Used to represent native events (XEvents for the X11
 * backend, MSGs for Win32).
 */
public alias void* GdkXEvent;

/**
 * An enumeration describing the way in which a device
 * axis (valuator) maps onto the predefined valuator
 * types that GTK+ understands.
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
	 * a constant equal to the numerically highest axis value.
	 */
	LAST = 7,
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
 * Specifies the crossing mode for #GdkEventCrossing.
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
	 * this event is synthetic as the pointer might have not left the window.
	 */
	TOUCH_BEGIN = 6,
	/**
	 * crossing because a touch sequence has ended,
	 * this event is synthetic as the pointer might have not left the window.
	 */
	TOUCH_END = 7,
	/**
	 * crossing because of a device switch (i.e.
	 * a mouse taking control of the pointer after a touch device), this event
	 * is synthetic as the pointer didn’t leave the window.
	 */
	DEVICE_SWITCH = 8,
}
alias GdkCrossingMode CrossingMode;

/**
 * Predefined cursors.
 *
 * Note that these IDs are directly taken from the X cursor font, and many
 * of these cursors are either not useful, or are not available on other platforms.
 *
 * The recommended way to create cursors is to use gdk_cursor_new_from_name().
 */
public enum GdkCursorType
{
	/**
	 * ![](X_cursor.png)
	 */
	X_CURSOR = 0,
	/**
	 * ![](arrow.png)
	 */
	ARROW = 2,
	/**
	 * ![](based_arrow_down.png)
	 */
	BASED_ARROW_DOWN = 4,
	/**
	 * ![](based_arrow_up.png)
	 */
	BASED_ARROW_UP = 6,
	/**
	 * ![](boat.png)
	 */
	BOAT = 8,
	/**
	 * ![](bogosity.png)
	 */
	BOGOSITY = 10,
	/**
	 * ![](bottom_left_corner.png)
	 */
	BOTTOM_LEFT_CORNER = 12,
	/**
	 * ![](bottom_right_corner.png)
	 */
	BOTTOM_RIGHT_CORNER = 14,
	/**
	 * ![](bottom_side.png)
	 */
	BOTTOM_SIDE = 16,
	/**
	 * ![](bottom_tee.png)
	 */
	BOTTOM_TEE = 18,
	/**
	 * ![](box_spiral.png)
	 */
	BOX_SPIRAL = 20,
	/**
	 * ![](center_ptr.png)
	 */
	CENTER_PTR = 22,
	/**
	 * ![](circle.png)
	 */
	CIRCLE = 24,
	/**
	 * ![](clock.png)
	 */
	CLOCK = 26,
	/**
	 * ![](coffee_mug.png)
	 */
	COFFEE_MUG = 28,
	/**
	 * ![](cross.png)
	 */
	CROSS = 30,
	/**
	 * ![](cross_reverse.png)
	 */
	CROSS_REVERSE = 32,
	/**
	 * ![](crosshair.png)
	 */
	CROSSHAIR = 34,
	/**
	 * ![](diamond_cross.png)
	 */
	DIAMOND_CROSS = 36,
	/**
	 * ![](dot.png)
	 */
	DOT = 38,
	/**
	 * ![](dotbox.png)
	 */
	DOTBOX = 40,
	/**
	 * ![](double_arrow.png)
	 */
	DOUBLE_ARROW = 42,
	/**
	 * ![](draft_large.png)
	 */
	DRAFT_LARGE = 44,
	/**
	 * ![](draft_small.png)
	 */
	DRAFT_SMALL = 46,
	/**
	 * ![](draped_box.png)
	 */
	DRAPED_BOX = 48,
	/**
	 * ![](exchange.png)
	 */
	EXCHANGE = 50,
	/**
	 * ![](fleur.png)
	 */
	FLEUR = 52,
	/**
	 * ![](gobbler.png)
	 */
	GOBBLER = 54,
	/**
	 * ![](gumby.png)
	 */
	GUMBY = 56,
	/**
	 * ![](hand1.png)
	 */
	HAND1 = 58,
	/**
	 * ![](hand2.png)
	 */
	HAND2 = 60,
	/**
	 * ![](heart.png)
	 */
	HEART = 62,
	/**
	 * ![](icon.png)
	 */
	ICON = 64,
	/**
	 * ![](iron_cross.png)
	 */
	IRON_CROSS = 66,
	/**
	 * ![](left_ptr.png)
	 */
	LEFT_PTR = 68,
	/**
	 * ![](left_side.png)
	 */
	LEFT_SIDE = 70,
	/**
	 * ![](left_tee.png)
	 */
	LEFT_TEE = 72,
	/**
	 * ![](leftbutton.png)
	 */
	LEFTBUTTON = 74,
	/**
	 * ![](ll_angle.png)
	 */
	LL_ANGLE = 76,
	/**
	 * ![](lr_angle.png)
	 */
	LR_ANGLE = 78,
	/**
	 * ![](man.png)
	 */
	MAN = 80,
	/**
	 * ![](middlebutton.png)
	 */
	MIDDLEBUTTON = 82,
	/**
	 * ![](mouse.png)
	 */
	MOUSE = 84,
	/**
	 * ![](pencil.png)
	 */
	PENCIL = 86,
	/**
	 * ![](pirate.png)
	 */
	PIRATE = 88,
	/**
	 * ![](plus.png)
	 */
	PLUS = 90,
	/**
	 * ![](question_arrow.png)
	 */
	QUESTION_ARROW = 92,
	/**
	 * ![](right_ptr.png)
	 */
	RIGHT_PTR = 94,
	/**
	 * ![](right_side.png)
	 */
	RIGHT_SIDE = 96,
	/**
	 * ![](right_tee.png)
	 */
	RIGHT_TEE = 98,
	/**
	 * ![](rightbutton.png)
	 */
	RIGHTBUTTON = 100,
	/**
	 * ![](rtl_logo.png)
	 */
	RTL_LOGO = 102,
	/**
	 * ![](sailboat.png)
	 */
	SAILBOAT = 104,
	/**
	 * ![](sb_down_arrow.png)
	 */
	SB_DOWN_ARROW = 106,
	/**
	 * ![](sb_h_double_arrow.png)
	 */
	SB_H_DOUBLE_ARROW = 108,
	/**
	 * ![](sb_left_arrow.png)
	 */
	SB_LEFT_ARROW = 110,
	/**
	 * ![](sb_right_arrow.png)
	 */
	SB_RIGHT_ARROW = 112,
	/**
	 * ![](sb_up_arrow.png)
	 */
	SB_UP_ARROW = 114,
	/**
	 * ![](sb_v_double_arrow.png)
	 */
	SB_V_DOUBLE_ARROW = 116,
	/**
	 * ![](shuttle.png)
	 */
	SHUTTLE = 118,
	/**
	 * ![](sizing.png)
	 */
	SIZING = 120,
	/**
	 * ![](spider.png)
	 */
	SPIDER = 122,
	/**
	 * ![](spraycan.png)
	 */
	SPRAYCAN = 124,
	/**
	 * ![](star.png)
	 */
	STAR = 126,
	/**
	 * ![](target.png)
	 */
	TARGET = 128,
	/**
	 * ![](tcross.png)
	 */
	TCROSS = 130,
	/**
	 * ![](top_left_arrow.png)
	 */
	TOP_LEFT_ARROW = 132,
	/**
	 * ![](top_left_corner.png)
	 */
	TOP_LEFT_CORNER = 134,
	/**
	 * ![](top_right_corner.png)
	 */
	TOP_RIGHT_CORNER = 136,
	/**
	 * ![](top_side.png)
	 */
	TOP_SIDE = 138,
	/**
	 * ![](top_tee.png)
	 */
	TOP_TEE = 140,
	/**
	 * ![](trek.png)
	 */
	TREK = 142,
	/**
	 * ![](ul_angle.png)
	 */
	UL_ANGLE = 144,
	/**
	 * ![](umbrella.png)
	 */
	UMBRELLA = 146,
	/**
	 * ![](ur_angle.png)
	 */
	UR_ANGLE = 148,
	/**
	 * ![](watch.png)
	 */
	WATCH = 150,
	/**
	 * ![](xterm.png)
	 */
	XTERM = 152,
	/**
	 * last cursor type
	 */
	LAST_CURSOR = 153,
	/**
	 * Blank cursor. Since 2.16
	 */
	BLANK_CURSOR = -2,
	/**
	 * type of cursors constructed with
	 * gdk_cursor_new_from_pixbuf()
	 */
	CURSOR_IS_PIXMAP = -1,
}
alias GdkCursorType CursorType;

/**
 * Indicates the device type. See [above][GdkDeviceManager.description]
 * for more information about the meaning of these device types.
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
	 * any virtual device.
	 */
	FLOATING = 2,
}
alias GdkDeviceType DeviceType;

/**
 * Used in #GdkDragContext to indicate what the destination
 * should do with the dropped data.
 */
public enum GdkDragAction
{
	/**
	 * Means nothing, and should not be used.
	 */
	DEFAULT = 1,
	/**
	 * Copy the data.
	 */
	COPY = 2,
	/**
	 * Move the data, i.e. first copy it, then delete
	 * it from the source using the DELETE target of the X selection protocol.
	 */
	MOVE = 4,
	/**
	 * Add a link to the data. Note that this is only
	 * useful if source and destination agree on what it means.
	 */
	LINK = 8,
	/**
	 * Special action which tells the source that the
	 * destination will do something that the source doesn’t understand.
	 */
	PRIVATE = 16,
	/**
	 * Ask the user what to do with the data.
	 */
	ASK = 32,
}
alias GdkDragAction DragAction;

/**
 * Used in #GdkDragContext to the reason of a cancelled DND operation.
 *
 * Since: 3.20
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
 * Used in #GdkDragContext to indicate the protocol according to
 * which DND is done.
 */
public enum GdkDragProtocol
{
	/**
	 * no protocol.
	 */
	NONE = 0,
	/**
	 * The Motif DND protocol. No longer supported
	 */
	MOTIF = 1,
	/**
	 * The Xdnd protocol.
	 */
	XDND = 2,
	/**
	 * An extension to the Xdnd protocol for
	 * unclaimed root window drops.
	 */
	ROOTWIN = 3,
	/**
	 * The simple WM_DROPFILES protocol.
	 */
	WIN32_DROPFILES = 4,
	/**
	 * The complex OLE2 DND protocol (not implemented).
	 */
	OLE2 = 5,
	/**
	 * Intra-application DND.
	 */
	LOCAL = 6,
	/**
	 * Wayland DND protocol.
	 */
	WAYLAND = 7,
}
alias GdkDragProtocol DragProtocol;

/**
 * A set of bit-flags to indicate which events a window is to receive.
 * Most of these masks map onto one or more of the #GdkEventType event types
 * above.
 *
 * See the [input handling overview][chap-input-handling] for details of
 * [event masks][event-masks] and [event propagation][event-propagation].
 *
 * %GDK_POINTER_MOTION_HINT_MASK is deprecated. It is a special mask
 * to reduce the number of %GDK_MOTION_NOTIFY events received. When using
 * %GDK_POINTER_MOTION_HINT_MASK, fewer %GDK_MOTION_NOTIFY events will
 * be sent, some of which are marked as a hint (the is_hint member is
 * %TRUE). To receive more motion events after a motion hint event,
 * the application needs to asks for more, by calling
 * gdk_event_request_motions().
 *
 * Since GTK 3.8, motion events are already compressed by default, independent
 * of this mechanism. This compression can be disabled with
 * gdk_window_set_event_compression(). See the documentation of that function
 * for details.
 *
 * If %GDK_TOUCH_MASK is enabled, the window will receive touch events
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
	 * deprecated. see the explanation above
	 */
	POINTER_MOTION_HINT_MASK = 8,
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
	 * receive window enter events
	 */
	ENTER_NOTIFY_MASK = 4096,
	/**
	 * receive window leave events
	 */
	LEAVE_NOTIFY_MASK = 8192,
	/**
	 * receive focus change events
	 */
	FOCUS_CHANGE_MASK = 16384,
	/**
	 * receive events about window configuration change
	 */
	STRUCTURE_MASK = 32768,
	/**
	 * receive property change events
	 */
	PROPERTY_CHANGE_MASK = 65536,
	/**
	 * receive visibility change events
	 */
	VISIBILITY_NOTIFY_MASK = 131072,
	/**
	 * receive proximity in events
	 */
	PROXIMITY_IN_MASK = 262144,
	/**
	 * receive proximity out events
	 */
	PROXIMITY_OUT_MASK = 524288,
	/**
	 * receive events about window configuration changes of
	 * child windows
	 */
	SUBSTRUCTURE_MASK = 1048576,
	/**
	 * receive scroll events
	 */
	SCROLL_MASK = 2097152,
	/**
	 * receive touch events. Since 3.4
	 */
	TOUCH_MASK = 4194304,
	/**
	 * receive smooth scrolling events. Since 3.4
	 */
	SMOOTH_SCROLL_MASK = 8388608,
	/**
	 * receive touchpad gesture events. Since 3.18
	 */
	TOUCHPAD_GESTURE_MASK = 16777216,
	/**
	 * the combination of all the above event masks.
	 */
	ALL_EVENTS_MASK = 16777214,
}
alias GdkEventMask EventMask;

/**
 * Specifies the type of the event.
 *
 * Do not confuse these events with the signals that GTK+ widgets emit.
 * Although many of these events result in corresponding signals being emitted,
 * the events are often transformed or filtered along the way.
 *
 * In some language bindings, the values %GDK_2BUTTON_PRESS and
 * %GDK_3BUTTON_PRESS would translate into something syntactically
 * invalid (eg `Gdk.EventType.2ButtonPress`, where a
 * symbol is not allowed to start with a number). In that case, the
 * aliases %GDK_DOUBLE_BUTTON_PRESS and %GDK_TRIPLE_BUTTON_PRESS can
 * be used instead.
 */
public enum GdkEventType
{
	/**
	 * a special code to indicate a null event.
	 */
	NOTHING = -1,
	/**
	 * the window manager has requested that the toplevel window be
	 * hidden or destroyed, usually when the user clicks on a special icon in the
	 * title bar.
	 */
	DELETE = 0,
	/**
	 * the window has been destroyed.
	 */
	DESTROY = 1,
	/**
	 * all or part of the window has become visible and needs to be
	 * redrawn.
	 */
	EXPOSE = 2,
	/**
	 * the pointer (usually a mouse) has moved.
	 */
	MOTION_NOTIFY = 3,
	/**
	 * a mouse button has been pressed.
	 */
	BUTTON_PRESS = 4,
	/**
	 * alias for %GDK_2BUTTON_PRESS, added in 3.6.
	 */
	DOUBLE_BUTTON_PRESS = 5,
	/**
	 * alias for %GDK_3BUTTON_PRESS, added in 3.6.
	 */
	TRIPLE_BUTTON_PRESS = 6,
	/**
	 * a mouse button has been released.
	 */
	BUTTON_RELEASE = 7,
	/**
	 * a key has been pressed.
	 */
	KEY_PRESS = 8,
	/**
	 * a key has been released.
	 */
	KEY_RELEASE = 9,
	/**
	 * the pointer has entered the window.
	 */
	ENTER_NOTIFY = 10,
	/**
	 * the pointer has left the window.
	 */
	LEAVE_NOTIFY = 11,
	/**
	 * the keyboard focus has entered or left the window.
	 */
	FOCUS_CHANGE = 12,
	/**
	 * the size, position or stacking order of the window has changed.
	 * Note that GTK+ discards these events for %GDK_WINDOW_CHILD windows.
	 */
	CONFIGURE = 13,
	/**
	 * the window has been mapped.
	 */
	MAP = 14,
	/**
	 * the window has been unmapped.
	 */
	UNMAP = 15,
	/**
	 * a property on the window has been changed or deleted.
	 */
	PROPERTY_NOTIFY = 16,
	/**
	 * the application has lost ownership of a selection.
	 */
	SELECTION_CLEAR = 17,
	/**
	 * another application has requested a selection.
	 */
	SELECTION_REQUEST = 18,
	/**
	 * a selection has been received.
	 */
	SELECTION_NOTIFY = 19,
	/**
	 * an input device has moved into contact with a sensing
	 * surface (e.g. a touchscreen or graphics tablet).
	 */
	PROXIMITY_IN = 20,
	/**
	 * an input device has moved out of contact with a sensing
	 * surface.
	 */
	PROXIMITY_OUT = 21,
	/**
	 * the mouse has entered the window while a drag is in progress.
	 */
	DRAG_ENTER = 22,
	/**
	 * the mouse has left the window while a drag is in progress.
	 */
	DRAG_LEAVE = 23,
	/**
	 * the mouse has moved in the window while a drag is in
	 * progress.
	 */
	DRAG_MOTION = 24,
	/**
	 * the status of the drag operation initiated by the window
	 * has changed.
	 */
	DRAG_STATUS = 25,
	/**
	 * a drop operation onto the window has started.
	 */
	DROP_START = 26,
	/**
	 * the drop operation initiated by the window has completed.
	 */
	DROP_FINISHED = 27,
	/**
	 * a message has been received from another application.
	 */
	CLIENT_EVENT = 28,
	/**
	 * the window visibility status has changed.
	 */
	VISIBILITY_NOTIFY = 29,
	/**
	 * the scroll wheel was turned
	 */
	SCROLL = 31,
	/**
	 * the state of a window has changed. See #GdkWindowState
	 * for the possible window states
	 */
	WINDOW_STATE = 32,
	/**
	 * a setting has been modified.
	 */
	SETTING = 33,
	/**
	 * the owner of a selection has changed. This event type
	 * was added in 2.6
	 */
	OWNER_CHANGE = 34,
	/**
	 * a pointer or keyboard grab was broken. This event type
	 * was added in 2.8.
	 */
	GRAB_BROKEN = 35,
	/**
	 * the content of the window has been changed. This event type
	 * was added in 2.14.
	 */
	DAMAGE = 36,
	/**
	 * A new touch event sequence has just started. This event
	 * type was added in 3.4.
	 */
	TOUCH_BEGIN = 37,
	/**
	 * A touch event sequence has been updated. This event type
	 * was added in 3.4.
	 */
	TOUCH_UPDATE = 38,
	/**
	 * A touch event sequence has finished. This event type
	 * was added in 3.4.
	 */
	TOUCH_END = 39,
	/**
	 * A touch event sequence has been canceled. This event type
	 * was added in 3.4.
	 */
	TOUCH_CANCEL = 40,
	/**
	 * A touchpad swipe gesture event, the current state
	 * is determined by its phase field. This event type was added in 3.18.
	 */
	TOUCHPAD_SWIPE = 41,
	/**
	 * A touchpad pinch gesture event, the current state
	 * is determined by its phase field. This event type was added in 3.18.
	 */
	TOUCHPAD_PINCH = 42,
	/**
	 * marks the end of the GdkEventType enumeration. Added in 2.18
	 */
	EVENT_LAST = 43,
}
alias GdkEventType EventType;

/**
 * Specifies the result of applying a #GdkFilterFunc to a native event.
 */
public enum GdkFilterReturn
{
	/**
	 * event not handled, continue processing.
	 */
	CONTINUE = 0,
	/**
	 * native event translated into a GDK event and stored
	 * in the `event` structure that was passed in.
	 */
	TRANSLATE = 1,
	/**
	 * event handled, terminate processing.
	 */
	REMOVE = 2,
}
alias GdkFilterReturn FilterReturn;

/**
 * #GdkFrameClockPhase is used to represent the different paint clock
 * phases that can be requested. The elements of the enumeration
 * correspond to the signals of #GdkFrameClock.
 *
 * Since: 3.8
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
 * Indicates which monitor (in a multi-head setup) a window should span over
 * when in fullscreen mode.
 *
 * Since: 3.8
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
 *
 * Since: 3.16
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
	 * Other devices’ events are blocked for the grab window.
	 */
	WINDOW = 1,
	/**
	 * Other devices’ events are blocked for the whole application.
	 */
	APPLICATION = 2,
}
alias GdkGrabOwnership GrabOwnership;

/**
 * Returned by gdk_device_grab(), gdk_pointer_grab() and gdk_keyboard_grab() to
 * indicate success or the reason for the failure of the grab attempt.
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
	 * the grab window or the @confine_to window are not
	 * viewable.
	 */
	NOT_VIEWABLE = 3,
	/**
	 * the resource is frozen by an active grab of another client.
	 */
	FROZEN = 4,
	/**
	 * the grab failed for some other reason.
	 */
	FAILED = 5,
}
alias GdkGrabStatus GrabStatus;

/**
 * Defines the reference point of a window and the meaning of coordinates
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
	 * the reference point is at the center of the window.
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
	 * window itself, ignoring window manager decorations.
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
	 * is mapped to a single window. The manner in which this window
	 * is chosen is undefined, but it will typically be the same
	 * way in which the focus window for key events is determined.
	 */
	WINDOW = 2,
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
}
alias GdkInputSource InputSource;

/**
 * This enum is used with gdk_keymap_get_modifier_mask()
 * in order to determine what modifiers the
 * currently used windowing system backend uses for particular
 * purposes. For example, on X11/Windows, the Control key is used for
 * invoking menu shortcuts (accelerators), whereas on Apple computers
 * it’s the Command key (which correspond to %GDK_CONTROL_MASK and
 * %GDK_MOD2_MASK, respectively).
 *
 * Since: 3.4
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
 * Since 2.10, GDK recognizes which of the Meta, Super or Hyper keys are mapped
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
	 * the Super modifier. Since 2.10
	 */
	SUPER_MASK = 67108864,
	/**
	 * the Hyper modifier. Since 2.10
	 */
	HYPER_MASK = 134217728,
	/**
	 * the Meta modifier. Since 2.10
	 */
	META_MASK = 268435456,
	/**
	 * A reserved bit flag; do not use in your own code
	 */
	MODIFIER_RESERVED_29_MASK = 536870912,
	/**
	 * not used in GDK itself. GTK+ uses it to differentiate
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
 * Specifies the kind of crossing for #GdkEventCrossing.
 *
 * See the X11 protocol specification of LeaveNotify for
 * full details of crossing event generation.
 */
public enum GdkNotifyType
{
	/**
	 * the window is entered from an ancestor or
	 * left towards an ancestor.
	 */
	ANCESTOR = 0,
	/**
	 * the pointer moves between an ancestor and an
	 * inferior of the window.
	 */
	VIRTUAL = 1,
	/**
	 * the window is entered from an inferior or
	 * left towards an inferior.
	 */
	INFERIOR = 2,
	/**
	 * the window is entered from or left towards
	 * a window which is neither an ancestor nor an inferior.
	 */
	NONLINEAR = 3,
	/**
	 * the pointer moves between two windows
	 * which are not ancestors of each other and the window is part of
	 * the ancestor chain between one of these windows and their least
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
 * Specifies why a selection ownership was changed.
 */
public enum GdkOwnerChange
{
	/**
	 * some other app claimed the ownership
	 */
	NEW_OWNER = 0,
	/**
	 * the window was destroyed
	 */
	DESTROY = 1,
	/**
	 * the client was closed
	 */
	CLOSE = 2,
}
alias GdkOwnerChange OwnerChange;

/**
 * Describes how existing data is combined with new data when
 * using gdk_property_change().
 */
public enum GdkPropMode
{
	/**
	 * the new data replaces the existing data.
	 */
	REPLACE = 0,
	/**
	 * the new data is prepended to the existing data.
	 */
	PREPEND = 1,
	/**
	 * the new data is appended to the existing data.
	 */
	APPEND = 2,
}
alias GdkPropMode PropMode;

/**
 * Specifies the type of a property change for a #GdkEventProperty.
 */
public enum GdkPropertyState
{
	/**
	 * the property value was changed.
	 */
	NEW_VALUE = 0,
	/**
	 * the property was deleted.
	 */
	DELETE = 1,
}
alias GdkPropertyState PropertyState;

/**
 * Specifies the direction for #GdkEventScroll.
 */
public enum GdkScrollDirection
{
	/**
	 * the window is scrolled up.
	 */
	UP = 0,
	/**
	 * the window is scrolled down.
	 */
	DOWN = 1,
	/**
	 * the window is scrolled to the left.
	 */
	LEFT = 2,
	/**
	 * the window is scrolled to the right.
	 */
	RIGHT = 3,
	/**
	 * the scrolling is determined by the delta values
	 * in #GdkEventScroll. See gdk_event_get_scroll_deltas(). Since: 3.4
	 */
	SMOOTH = 4,
}
alias GdkScrollDirection ScrollDirection;

/**
 * Flags describing the seat capabilities.
 *
 * Since: 3.20
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
 * Specifies the kind of modification applied to a setting in a
 * #GdkEventSetting.
 */
public enum GdkSettingAction
{
	/**
	 * a setting was added.
	 */
	NEW = 0,
	/**
	 * a setting was changed.
	 */
	CHANGED = 1,
	/**
	 * a setting was deleted.
	 */
	DELETED = 2,
}
alias GdkSettingAction SettingAction;

public enum GdkStatus
{
	OK = 0,
	ERROR = -1,
	ERROR_PARAM = -2,
	ERROR_FILE = -3,
	ERROR_MEM = -4,
}
alias GdkStatus Status;

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
 *
 * See also #GdkEventTouchpadSwipe and #GdkEventTouchpadPinch.
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
 * Specifies the visiblity status of a window for a #GdkEventVisibility.
 */
public enum GdkVisibilityState
{
	/**
	 * the window is completely visible.
	 */
	UNOBSCURED = 0,
	/**
	 * the window is partially visible.
	 */
	PARTIAL = 1,
	/**
	 * the window is not visible at all.
	 */
	FULLY_OBSCURED = 2,
}
alias GdkVisibilityState VisibilityState;

/**
 * A set of values that describe the manner in which the pixel values
 * for a visual are converted into RGB values for display.
 */
public enum GdkVisualType
{
	/**
	 * Each pixel value indexes a grayscale value
	 * directly.
	 */
	STATIC_GRAY = 0,
	/**
	 * Each pixel is an index into a color map that
	 * maps pixel values into grayscale values. The color map can be
	 * changed by an application.
	 */
	GRAYSCALE = 1,
	/**
	 * Each pixel value is an index into a predefined,
	 * unmodifiable color map that maps pixel values into RGB values.
	 */
	STATIC_COLOR = 2,
	/**
	 * Each pixel is an index into a color map that
	 * maps pixel values into rgb values. The color map can be changed by
	 * an application.
	 */
	PSEUDO_COLOR = 3,
	/**
	 * Each pixel value directly contains red, green,
	 * and blue components. Use gdk_visual_get_red_pixel_details(), etc,
	 * to obtain information about how the components are assembled into
	 * a pixel value.
	 */
	TRUE_COLOR = 4,
	/**
	 * Each pixel value contains red, green, and blue
	 * components as for %GDK_VISUAL_TRUE_COLOR, but the components are
	 * mapped via a color table into the final output table instead of
	 * being converted directly.
	 */
	DIRECT_COLOR = 5,
}
alias GdkVisualType VisualType;

/**
 * These are hints originally defined by the Motif toolkit.
 * The window manager can use them when determining how to decorate
 * the window. The hint must be set before mapping the window.
 */
public enum GdkWMDecoration
{
	/**
	 * all decorations should be applied.
	 */
	ALL = 1,
	/**
	 * a frame should be drawn around the window.
	 */
	BORDER = 2,
	/**
	 * the frame should have resize handles.
	 */
	RESIZEH = 4,
	/**
	 * a titlebar should be placed above the window.
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
 * can use them when determining the functions to offer for the window. The
 * hint must be set before mapping the window.
 */
public enum GdkWMFunction
{
	/**
	 * all functions should be offered.
	 */
	ALL = 1,
	/**
	 * the window should be resizable.
	 */
	RESIZE = 2,
	/**
	 * the window should be movable.
	 */
	MOVE = 4,
	/**
	 * the window should be minimizable.
	 */
	MINIMIZE = 8,
	/**
	 * the window should be maximizable.
	 */
	MAXIMIZE = 16,
	/**
	 * the window should be closable.
	 */
	CLOSE = 32,
}
alias GdkWMFunction WMFunction;

/**
 * Used to indicate which fields in the #GdkWindowAttr struct should be honored.
 * For example, if you filled in the “cursor” and “x” fields of #GdkWindowAttr,
 * pass “@GDK_WA_X | @GDK_WA_CURSOR” to gdk_window_new(). Fields in
 * #GdkWindowAttr not covered by a bit in this enum are required; for example,
 * the @width/@height, @wclass, and @window_type fields are required, they have
 * no corresponding flag in #GdkWindowAttributesType.
 */
public enum GdkWindowAttributesType
{
	/**
	 * Honor the title field
	 */
	TITLE = 2,
	/**
	 * Honor the X coordinate field
	 */
	X = 4,
	/**
	 * Honor the Y coordinate field
	 */
	Y = 8,
	/**
	 * Honor the cursor field
	 */
	CURSOR = 16,
	/**
	 * Honor the visual field
	 */
	VISUAL = 32,
	/**
	 * Honor the wmclass_class and wmclass_name fields
	 */
	WMCLASS = 64,
	/**
	 * Honor the override_redirect field
	 */
	NOREDIR = 128,
	/**
	 * Honor the type_hint field
	 */
	TYPE_HINT = 256,
}
alias GdkWindowAttributesType WindowAttributesType;

/**
 * Determines a window edge or corner.
 */
public enum GdkWindowEdge
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
alias GdkWindowEdge WindowEdge;

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
public enum GdkWindowHints
{
	/**
	 * indicates that the program has positioned the window
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
	 * window gravity field is set
	 */
	WIN_GRAVITY = 64,
	/**
	 * indicates that the window’s position was explicitly set
	 * by the user
	 */
	USER_POS = 128,
	/**
	 * indicates that the window’s size was explicitly set by
	 * the user
	 */
	USER_SIZE = 256,
}
alias GdkWindowHints WindowHints;

/**
 * Specifies the state of a toplevel window.
 */
public enum GdkWindowState
{
	/**
	 * the window is not shown.
	 */
	WITHDRAWN = 1,
	/**
	 * the window is minimized.
	 */
	ICONIFIED = 2,
	/**
	 * the window is maximized.
	 */
	MAXIMIZED = 4,
	/**
	 * the window is sticky.
	 */
	STICKY = 8,
	/**
	 * the window is maximized without
	 * decorations.
	 */
	FULLSCREEN = 16,
	/**
	 * the window is kept above other windows.
	 */
	ABOVE = 32,
	/**
	 * the window is kept below other windows.
	 */
	BELOW = 64,
	/**
	 * the window is presented as focused (with active decorations).
	 */
	FOCUSED = 128,
	/**
	 * the window is in a tiled state, Since 3.10
	 */
	TILED = 256,
}
alias GdkWindowState WindowState;

/**
 * Describes the kind of window.
 */
public enum GdkWindowType
{
	/**
	 * root window; this window has no parent, covers the entire
	 * screen, and is created by the window system
	 */
	ROOT = 0,
	/**
	 * toplevel window (used to implement #GtkWindow)
	 */
	TOPLEVEL = 1,
	/**
	 * child window (used to implement e.g. #GtkEntry)
	 */
	CHILD = 2,
	/**
	 * override redirect temporary window (used to implement
	 * #GtkMenu)
	 */
	TEMP = 3,
	/**
	 * foreign window (see gdk_window_foreign_new())
	 */
	FOREIGN = 4,
	/**
	 * offscreen window (see
	 * [Offscreen Windows][OFFSCREEN-WINDOWS]). Since 2.18
	 */
	OFFSCREEN = 5,
	/**
	 * subsurface-based window; This window is visually
	 * tied to a toplevel, and is moved/stacked with it. Currently this window
	 * type is only implemented in Wayland. Since 3.14
	 */
	SUBSURFACE = 6,
}
alias GdkWindowType WindowType;

/**
 * These are hints for the window manager that indicate what type of function
 * the window has. The window manager can use this when determining decoration
 * and behaviour of the window. The hint must be set before mapping the window.
 *
 * See the [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
 * specification for more details about window types.
 */
public enum GdkWindowTypeHint
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
	 * Window used to implement a menu; GTK+ uses
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
alias GdkWindowTypeHint WindowTypeHint;

/**
 * @GDK_INPUT_OUTPUT windows are the standard kind of window you might expect.
 * Such windows receive events and are also displayed on screen.
 * @GDK_INPUT_ONLY windows are invisible; they are usually placed above other
 * windows in order to trap or filter the events. You can’t draw on
 * @GDK_INPUT_ONLY windows.
 */
public enum GdkWindowWindowClass
{
	/**
	 * window for graphics and events
	 */
	INPUT_OUTPUT = 0,
	/**
	 * window for events only
	 */
	INPUT_ONLY = 1,
}
alias GdkWindowWindowClass WindowWindowClass;

/**
 * An opaque type representing a string as an index into a table
 * of strings on the X server.
 */
alias _GdkAtom* GdkAtom;
public struct _GdkAtom;

struct GdkAppLaunchContext;

struct GdkColor
{
	/**
	 * For allocated colors, the pixel value used to
	 * draw this color on the screen. Not used anymore.
	 */
	uint pixel;
	/**
	 * The red component of the color. This is
	 * a value between 0 and 65535, with 65535 indicating
	 * full intensity
	 */
	ushort red;
	/**
	 * The green component of the color
	 */
	ushort green;
	/**
	 * The blue component of the color
	 */
	ushort blue;
}

struct GdkCursor;

struct GdkDevice;

struct GdkDeviceManager;

struct GdkDisplay;

struct GdkDisplayManager;

struct GdkDragContext;

struct GdkEvent
{
	union
	{
		/**
		 * the #GdkEventType
		 */
		GdkEventType type;
		/**
		 * a #GdkEventAny
		 */
		GdkEventAny any;
		/**
		 * a #GdkEventExpose
		 */
		GdkEventExpose expose;
		/**
		 * a #GdkEventVisibility
		 */
		GdkEventVisibility visibility;
		/**
		 * a #GdkEventMotion
		 */
		GdkEventMotion motion;
		/**
		 * a #GdkEventButton
		 */
		GdkEventButton button;
		/**
		 * a #GdkEventTouch
		 */
		GdkEventTouch touch;
		/**
		 * a #GdkEventScroll
		 */
		GdkEventScroll scroll;
		/**
		 * a #GdkEventKey
		 */
		GdkEventKey key;
		/**
		 * a #GdkEventCrossing
		 */
		GdkEventCrossing crossing;
		/**
		 * a #GdkEventFocus
		 */
		GdkEventFocus focusChange;
		/**
		 * a #GdkEventConfigure
		 */
		GdkEventConfigure configure;
		/**
		 * a #GdkEventProperty
		 */
		GdkEventProperty property;
		/**
		 * a #GdkEventSelection
		 */
		GdkEventSelection selection;
		/**
		 * a #GdkEventOwnerChange
		 */
		GdkEventOwnerChange ownerChange;
		/**
		 * a #GdkEventProximity
		 */
		GdkEventProximity proximity;
		/**
		 * a #GdkEventDND
		 */
		GdkEventDND dnd;
		/**
		 * a #GdkEventWindowState
		 */
		GdkEventWindowState windowState;
		/**
		 * a #GdkEventSetting
		 */
		GdkEventSetting setting;
		/**
		 * a #GdkEventGrabBroken
		 */
		GdkEventGrabBroken grabBroken;
		GdkEventTouchpadSwipe touchpadSwipe;
		GdkEventTouchpadPinch touchpadPinch;
	}
}

/**
 * Contains the fields which are common to all event structs.
 * Any event pointer can safely be cast to a pointer to a #GdkEventAny to
 * access these fields.
 */
struct GdkEventAny
{
	/**
	 * the type of the event.
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
}

/**
 * Used for button press and button release events. The
 * @type field will be one of %GDK_BUTTON_PRESS,
 * %GDK_2BUTTON_PRESS, %GDK_3BUTTON_PRESS or %GDK_BUTTON_RELEASE,
 *
 * Double and triple-clicks result in a sequence of events being received.
 * For double-clicks the order of events will be:
 *
 * - %GDK_BUTTON_PRESS
 * - %GDK_BUTTON_RELEASE
 * - %GDK_BUTTON_PRESS
 * - %GDK_2BUTTON_PRESS
 * - %GDK_BUTTON_RELEASE
 *
 * Note that the first click is received just like a normal
 * button press, while the second click results in a %GDK_2BUTTON_PRESS
 * being received just after the %GDK_BUTTON_PRESS.
 *
 * Triple-clicks are very similar to double-clicks, except that
 * %GDK_3BUTTON_PRESS is inserted after the third click. The order of the
 * events is:
 *
 * - %GDK_BUTTON_PRESS
 * - %GDK_BUTTON_RELEASE
 * - %GDK_BUTTON_PRESS
 * - %GDK_2BUTTON_PRESS
 * - %GDK_BUTTON_RELEASE
 * - %GDK_BUTTON_PRESS
 * - %GDK_3BUTTON_PRESS
 * - %GDK_BUTTON_RELEASE
 *
 * For a double click to occur, the second button press must occur within
 * 1/4 of a second of the first. For a triple click to occur, the third
 * button press must also occur within 1/2 second of the first button press.
 */
struct GdkEventButton
{
	/**
	 * the type of the event (%GDK_BUTTON_PRESS, %GDK_2BUTTON_PRESS,
	 * %GDK_3BUTTON_PRESS or %GDK_BUTTON_RELEASE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the window.
	 */
	double x;
	/**
	 * the y coordinate of the pointer relative to the window.
	 */
	double y;
	/**
	 * @x, @y translated to the axes of @device, or %NULL if @device is
	 * the mouse.
	 */
	double* axes;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
	/**
	 * the button which was pressed or released, numbered from 1 to 5.
	 * Normally button 1 is the left mouse button, 2 is the middle button,
	 * and 3 is the right button. On 2-button mice, the middle button can
	 * often be simulated by pressing both mouse buttons together.
	 */
	uint button;
	/**
	 * the master device that the event originated from. Use
	 * gdk_event_get_source_device() to get the slave device.
	 */
	GdkDevice* device;
	/**
	 * the x coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double yRoot;
}

/**
 * Generated when a window size or position has changed.
 */
struct GdkEventConfigure
{
	/**
	 * the type of the event (%GDK_CONFIGURE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the new x coordinate of the window, relative to its parent.
	 */
	int x;
	/**
	 * the new y coordinate of the window, relative to its parent.
	 */
	int y;
	/**
	 * the new width of the window.
	 */
	int width;
	/**
	 * the new height of the window.
	 */
	int height;
}

/**
 * Generated when the pointer enters or leaves a window.
 */
struct GdkEventCrossing
{
	/**
	 * the type of the event (%GDK_ENTER_NOTIFY or %GDK_LEAVE_NOTIFY).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the window that was entered or left.
	 */
	GdkWindow* subwindow;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the window.
	 */
	double x;
	/**
	 * the y coordinate of the pointer relative to the window.
	 */
	double y;
	/**
	 * the x coordinate of the pointer relative to the root of the screen.
	 */
	double xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the screen.
	 */
	double yRoot;
	/**
	 * the crossing mode (%GDK_CROSSING_NORMAL, %GDK_CROSSING_GRAB,
	 * %GDK_CROSSING_UNGRAB, %GDK_CROSSING_GTK_GRAB, %GDK_CROSSING_GTK_UNGRAB or
	 * %GDK_CROSSING_STATE_CHANGED).  %GDK_CROSSING_GTK_GRAB, %GDK_CROSSING_GTK_UNGRAB,
	 * and %GDK_CROSSING_STATE_CHANGED were added in 2.14 and are always synthesized,
	 * never native.
	 */
	GdkCrossingMode mode;
	/**
	 * the kind of crossing that happened (%GDK_NOTIFY_INFERIOR,
	 * %GDK_NOTIFY_ANCESTOR, %GDK_NOTIFY_VIRTUAL, %GDK_NOTIFY_NONLINEAR or
	 * %GDK_NOTIFY_NONLINEAR_VIRTUAL).
	 */
	GdkNotifyType detail;
	/**
	 * %TRUE if @window is the focus window or an inferior.
	 */
	bool focus;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
}

/**
 * Generated during DND operations.
 */
struct GdkEventDND
{
	/**
	 * the type of the event (%GDK_DRAG_ENTER, %GDK_DRAG_LEAVE,
	 * %GDK_DRAG_MOTION, %GDK_DRAG_STATUS, %GDK_DROP_START or
	 * %GDK_DROP_FINISHED).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the #GdkDragContext for the current DND operation.
	 */
	GdkDragContext* context;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the root of the
	 * screen, only set for %GDK_DRAG_MOTION and %GDK_DROP_START.
	 */
	short xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the
	 * screen, only set for %GDK_DRAG_MOTION and %GDK_DROP_START.
	 */
	short yRoot;
}

/**
 * Generated when all or part of a window becomes visible and needs to be
 * redrawn.
 */
struct GdkEventExpose
{
	/**
	 * the type of the event (%GDK_EXPOSE or %GDK_DAMAGE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * bounding box of @region.
	 */
	GdkRectangle area;
	/**
	 * the region that needs to be redrawn.
	 */
	cairo_region_t* region;
	/**
	 * the number of contiguous %GDK_EXPOSE events following this one.
	 * The only use for this is “exposure compression”, i.e. handling all
	 * contiguous %GDK_EXPOSE events in one go, though GDK performs some
	 * exposure compression so this is not normally needed.
	 */
	int count;
}

/**
 * Describes a change of keyboard focus.
 */
struct GdkEventFocus
{
	/**
	 * the type of the event (%GDK_FOCUS_CHANGE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * %TRUE if the window has gained the keyboard focus, %FALSE if
	 * it has lost the focus.
	 */
	short inn;
}

/**
 * Generated when a pointer or keyboard grab is broken. On X11, this happens
 * when the grab window becomes unviewable (i.e. it or one of its ancestors
 * is unmapped), or if the same application grabs the pointer or keyboard
 * again. Note that implicit grabs (which are initiated by button presses)
 * can also cause #GdkEventGrabBroken events.
 *
 * Since: 2.8
 */
struct GdkEventGrabBroken
{
	/**
	 * the type of the event (%GDK_GRAB_BROKEN)
	 */
	GdkEventType type;
	/**
	 * the window which received the event, i.e. the window
	 * that previously owned the grab
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * %TRUE if a keyboard grab was broken, %FALSE if a pointer
	 * grab was broken
	 */
	bool keyboard;
	/**
	 * %TRUE if the broken grab was implicit
	 */
	bool implicit;
	/**
	 * If this event is caused by another grab in the same
	 * application, @grab_window contains the new grab window. Otherwise
	 * @grab_window is %NULL.
	 */
	GdkWindow* grabWindow;
}

/**
 * Describes a key press or key release event.
 */
struct GdkEventKey
{
	/**
	 * the type of the event (%GDK_KEY_PRESS or %GDK_KEY_RELEASE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
	/**
	 * the key that was pressed or released. See the
	 * `gdk/gdkkeysyms.h` header file for a
	 * complete list of GDK key codes.
	 */
	uint keyval;
	/**
	 * the length of @string.
	 */
	int length;
	/**
	 * a string containing an approximation of the text that
	 * would result from this keypress. The only correct way to handle text
	 * input of text is using input methods (see #GtkIMContext), so this
	 * field is deprecated and should never be used.
	 * (gdk_unicode_to_keyval() provides a non-deprecated way of getting
	 * an approximate translation for a key.) The string is encoded in the
	 * encoding of the current locale (Note: this for backwards compatibility:
	 * strings in GTK+ and GDK are typically in UTF-8.) and NUL-terminated.
	 * In some cases, the translation of the key code will be a single
	 * NUL byte, in which case looking at @length is necessary to distinguish
	 * it from the an empty translation.
	 */
	char* str;
	/**
	 * the raw code of the key that was pressed or released.
	 */
	ushort hardwareKeycode;
	/**
	 * the keyboard group.
	 */
	ubyte group;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isModifier", 1,
		uint, "", 31
	));
}

/**
 * Generated when the pointer moves.
 */
struct GdkEventMotion
{
	/**
	 * the type of the event.
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the window.
	 */
	double x;
	/**
	 * the y coordinate of the pointer relative to the window.
	 */
	double y;
	/**
	 * @x, @y translated to the axes of @device, or %NULL if @device is
	 * the mouse.
	 */
	double* axes;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
	/**
	 * set to 1 if this event is just a hint, see the
	 * %GDK_POINTER_MOTION_HINT_MASK value of #GdkEventMask.
	 */
	short isHint;
	/**
	 * the master device that the event originated from. Use
	 * gdk_event_get_source_device() to get the slave device.
	 */
	GdkDevice* device;
	/**
	 * the x coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double yRoot;
}

/**
 * Generated when the owner of a selection changes. On X11, this
 * information is only available if the X server supports the XFIXES
 * extension.
 *
 * Since: 2.6
 */
struct GdkEventOwnerChange
{
	/**
	 * the type of the event (%GDK_OWNER_CHANGE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the new owner of the selection, or %NULL if there is none
	 */
	GdkWindow* owner;
	/**
	 * the reason for the ownership change as a #GdkOwnerChange value
	 */
	GdkOwnerChange reason;
	/**
	 * the atom identifying the selection
	 */
	GdkAtom selection;
	/**
	 * the timestamp of the event
	 */
	uint time;
	/**
	 * the time at which the selection ownership was taken
	 * over
	 */
	uint selectionTime;
}

/**
 * Describes a property change on a window.
 */
struct GdkEventProperty
{
	/**
	 * the type of the event (%GDK_PROPERTY_NOTIFY).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the property that was changed.
	 */
	GdkAtom atom;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * whether the property was changed
	 * (%GDK_PROPERTY_NEW_VALUE) or deleted (%GDK_PROPERTY_DELETE).
	 */
	PropertyState state;
}

/**
 * Proximity events are generated when using GDK’s wrapper for the
 * XInput extension. The XInput extension is an add-on for standard X
 * that allows you to use nonstandard devices such as graphics tablets.
 * A proximity event indicates that the stylus has moved in or out of
 * contact with the tablet, or perhaps that the user’s finger has moved
 * in or out of contact with a touch screen.
 *
 * This event type will be used pretty rarely. It only is important for
 * XInput aware programs that are drawing their own cursor.
 */
struct GdkEventProximity
{
	/**
	 * the type of the event (%GDK_PROXIMITY_IN or %GDK_PROXIMITY_OUT).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the master device that the event originated from. Use
	 * gdk_event_get_source_device() to get the slave device.
	 */
	GdkDevice* device;
}

/**
 * Generated from button presses for the buttons 4 to 7. Wheel mice are
 * usually configured to generate button press events for buttons 4 and 5
 * when the wheel is turned.
 *
 * Some GDK backends can also generate “smooth” scroll events, which
 * can be recognized by the %GDK_SCROLL_SMOOTH scroll direction. For
 * these, the scroll deltas can be obtained with
 * gdk_event_get_scroll_deltas().
 */
struct GdkEventScroll
{
	/**
	 * the type of the event (%GDK_SCROLL).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the window.
	 */
	double x;
	/**
	 * the y coordinate of the pointer relative to the window.
	 */
	double y;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
	/**
	 * the direction to scroll to (one of %GDK_SCROLL_UP,
	 * %GDK_SCROLL_DOWN, %GDK_SCROLL_LEFT, %GDK_SCROLL_RIGHT or
	 * %GDK_SCROLL_SMOOTH).
	 */
	GdkScrollDirection direction;
	/**
	 * the master device that the event originated from. Use
	 * gdk_event_get_source_device() to get the slave device.
	 */
	GdkDevice* device;
	/**
	 * the x coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the
	 * screen.
	 */
	double yRoot;
	/**
	 * the x coordinate of the scroll delta
	 */
	double deltaX;
	/**
	 * the y coordinate of the scroll delta
	 */
	double deltaY;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isStop", 1,
		uint, "", 31
	));
}

/**
 * Generated when a selection is requested or ownership of a selection
 * is taken over by another client application.
 */
struct GdkEventSelection
{
	/**
	 * the type of the event (%GDK_SELECTION_CLEAR,
	 * %GDK_SELECTION_NOTIFY or %GDK_SELECTION_REQUEST).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the selection.
	 */
	GdkAtom selection;
	/**
	 * the target to which the selection should be converted.
	 */
	GdkAtom target;
	/**
	 * the property in which to place the result of the conversion.
	 */
	GdkAtom property;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the window on which to place @property or %NULL if none.
	 */
	GdkWindow* requestor;
}

struct GdkEventSequence;

/**
 * Generated when a setting is modified.
 */
struct GdkEventSetting
{
	/**
	 * the type of the event (%GDK_SETTING).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * what happened to the setting (%GDK_SETTING_ACTION_NEW,
	 * %GDK_SETTING_ACTION_CHANGED or %GDK_SETTING_ACTION_DELETED).
	 */
	GdkSettingAction action;
	/**
	 * the name of the setting.
	 */
	char* name;
}

/**
 * Used for touch events.
 * @type field will be one of %GDK_TOUCH_BEGIN, %GDK_TOUCH_UPDATE,
 * %GDK_TOUCH_END or %GDK_TOUCH_CANCEL.
 *
 * Touch events are grouped into sequences by means of the @sequence
 * field, which can also be obtained with gdk_event_get_event_sequence().
 * Each sequence begins with a %GDK_TOUCH_BEGIN event, followed by
 * any number of %GDK_TOUCH_UPDATE events, and ends with a %GDK_TOUCH_END
 * (or %GDK_TOUCH_CANCEL) event. With multitouch devices, there may be
 * several active sequences at the same time.
 */
struct GdkEventTouch
{
	/**
	 * the type of the event (%GDK_TOUCH_BEGIN, %GDK_TOUCH_UPDATE,
	 * %GDK_TOUCH_END, %GDK_TOUCH_CANCEL)
	 */
	GdkEventType type;
	/**
	 * the window which received the event
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the time of the event in milliseconds.
	 */
	uint time;
	/**
	 * the x coordinate of the pointer relative to the window
	 */
	double x;
	/**
	 * the y coordinate of the pointer relative to the window
	 */
	double y;
	/**
	 * @x, @y translated to the axes of @device, or %NULL if @device is
	 * the mouse
	 */
	double* axes;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType
	 */
	ModifierType state;
	/**
	 * the event sequence that the event belongs to
	 */
	GdkEventSequence* sequence;
	/**
	 * whether the event should be used for emulating
	 * pointer event
	 */
	bool emulatingPointer;
	/**
	 * the master device that the event originated from. Use
	 * gdk_event_get_source_device() to get the slave device.
	 */
	GdkDevice* device;
	/**
	 * the x coordinate of the pointer relative to the root of the
	 * screen
	 */
	double xRoot;
	/**
	 * the y coordinate of the pointer relative to the root of the
	 * screen
	 */
	double yRoot;
}

/**
 * Generated during touchpad swipe gestures.
 */
struct GdkEventTouchpadPinch
{
	/**
	 * the type of the event (%GDK_TOUCHPAD_PINCH)
	 */
	GdkEventType type;
	/**
	 * the window which received the event
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly
	 */
	byte sendEvent;
	/**
	 * the current phase of the gesture
	 */
	TouchpadGesturePhase phase;
	/**
	 * The number of fingers triggering the pinch
	 */
	byte nFingers;
	/**
	 * the time of the event in milliseconds
	 */
	uint time;
	/**
	 * The X coordinate of the pointer
	 */
	double x;
	/**
	 * The Y coordinate of the pointer
	 */
	double y;
	/**
	 * Movement delta in the X axis of the swipe focal point
	 */
	double dx;
	/**
	 * Movement delta in the Y axis of the swipe focal point
	 */
	double dy;
	/**
	 * The angle change in radians, negative angles
	 * denote counter-clockwise movements
	 */
	double angleDelta;
	/**
	 * The current scale, relative to that at the time of
	 * the corresponding %GDK_TOUCHPAD_GESTURE_PHASE_BEGIN event
	 */
	double scale;
	/**
	 * The X coordinate of the pointer, relative to the
	 * root of the screen.
	 */
	double xRoot;
	/**
	 * The Y coordinate of the pointer, relative to the
	 * root of the screen.
	 */
	double yRoot;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
}

/**
 * Generated during touchpad swipe gestures.
 */
struct GdkEventTouchpadSwipe
{
	/**
	 * the type of the event (%GDK_TOUCHPAD_SWIPE)
	 */
	GdkEventType type;
	/**
	 * the window which received the event
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly
	 */
	byte sendEvent;
	/**
	 * the current phase of the gesture
	 */
	TouchpadGesturePhase phase;
	/**
	 * The number of fingers triggering the swipe
	 */
	byte nFingers;
	/**
	 * the time of the event in milliseconds
	 */
	uint time;
	/**
	 * The X coordinate of the pointer
	 */
	double x;
	/**
	 * The Y coordinate of the pointer
	 */
	double y;
	/**
	 * Movement delta in the X axis of the swipe focal point
	 */
	double dx;
	/**
	 * Movement delta in the Y axis of the swipe focal point
	 */
	double dy;
	/**
	 * The X coordinate of the pointer, relative to the
	 * root of the screen.
	 */
	double xRoot;
	/**
	 * The Y coordinate of the pointer, relative to the
	 * root of the screen.
	 */
	double yRoot;
	/**
	 * a bit-mask representing the state of
	 * the modifier keys (e.g. Control, Shift and Alt) and the pointer
	 * buttons. See #GdkModifierType.
	 */
	ModifierType state;
}

/**
 * Generated when the window visibility status has changed.
 *
 * Deprecated: Modern composited windowing systems with pervasive
 * transparency make it impossible to track the visibility of a window
 * reliably, so this event can not be guaranteed to provide useful
 * information.
 */
struct GdkEventVisibility
{
	/**
	 * the type of the event (%GDK_VISIBILITY_NOTIFY).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * the new visibility state (%GDK_VISIBILITY_FULLY_OBSCURED,
	 * %GDK_VISIBILITY_PARTIAL or %GDK_VISIBILITY_UNOBSCURED).
	 */
	GdkVisibilityState state;
}

/**
 * Generated when the state of a toplevel window changes.
 */
struct GdkEventWindowState
{
	/**
	 * the type of the event (%GDK_WINDOW_STATE).
	 */
	GdkEventType type;
	/**
	 * the window which received the event.
	 */
	GdkWindow* window;
	/**
	 * %TRUE if the event was sent explicitly.
	 */
	byte sendEvent;
	/**
	 * mask specifying what flags have changed.
	 */
	GdkWindowState changedMask;
	/**
	 * the new window state, a combination of
	 * #GdkWindowState bits.
	 */
	GdkWindowState newWindowState;
}

struct GdkFrameClock;

struct GdkFrameClockClass;

struct GdkFrameClockPrivate;

struct GdkFrameTimings;

struct GdkGLContext;

/**
 * The #GdkGeometry struct gives the window manager information about
 * a window’s geometry constraints. Normally you would set these on
 * the GTK+ level using gtk_window_set_geometry_hints(). #GtkWindow
 * then sets the hints on the #GdkWindow it creates.
 *
 * gdk_window_set_geometry_hints() expects the hints to be fully valid already
 * and simply passes them to the window manager; in contrast,
 * gtk_window_set_geometry_hints() performs some interpretation. For example,
 * #GtkWindow will apply the hints to the geometry widget instead of the
 * toplevel window, if you set a geometry widget. Also, the
 * @min_width/@min_height/@max_width/@max_height fields may be set to -1, and
 * #GtkWindow will substitute the size request of the window or geometry widget.
 * If the minimum size hint is not provided, #GtkWindow will use its requisition
 * as the minimum size. If the minimum size is provided and a geometry widget is
 * set, #GtkWindow will take the minimum size as the minimum size of the
 * geometry widget rather than the entire window. The base size is treated
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
	 * minimum width of window (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int minWidth;
	/**
	 * minimum height of window (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int minHeight;
	/**
	 * maximum width of window (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int maxWidth;
	/**
	 * maximum height of window (or -1 to use requisition, with
	 * #GtkWindow only)
	 */
	int maxHeight;
	/**
	 * allowed window widths are @base_width + @width_inc * N where N
	 * is any integer (-1 allowed with #GtkWindow)
	 */
	int baseWidth;
	/**
	 * allowed window widths are @base_height + @height_inc * N where
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
	 * window gravity, see gtk_window_set_gravity()
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

/**
 * Defines the x and y coordinates of a point.
 */
struct GdkPoint
{
	/**
	 * the x coordinate of the point.
	 */
	int x;
	/**
	 * the y coordinate of the point.
	 */
	int y;
}

struct GdkRGBA
{
	/**
	 * The intensity of the red channel from 0.0 to 1.0 inclusive
	 */
	double red;
	/**
	 * The intensity of the green channel from 0.0 to 1.0 inclusive
	 */
	double green;
	/**
	 * The intensity of the blue channel from 0.0 to 1.0 inclusive
	 */
	double blue;
	/**
	 * The opacity of the color from 0.0 for completely translucent to
	 * 1.0 for opaque
	 */
	double alpha;
}

/**
 * Defines the position and size of a rectangle. It is identical to
 * #cairo_rectangle_int_t.
 */
struct GdkRectangle
{
	int x;
	int y;
	int width;
	int height;
}

struct GdkScreen;

struct GdkSeat
{
	GObject parentInstance;
}

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

struct GdkVisual;

struct GdkWindow;

/**
 * Attributes to use for a newly-created window.
 */
struct GdkWindowAttr
{
	/**
	 * title of the window (for toplevel windows)
	 */
	char* title;
	/**
	 * event mask (see gdk_window_set_events())
	 */
	int eventMask;
	/**
	 * X coordinate relative to parent window (see gdk_window_move())
	 */
	int x;
	/**
	 * Y coordinate relative to parent window (see gdk_window_move())
	 */
	int y;
	/**
	 * width of window
	 */
	int width;
	/**
	 * height of window
	 */
	int height;
	/**
	 * #GDK_INPUT_OUTPUT (normal window) or #GDK_INPUT_ONLY (invisible
	 * window that receives events)
	 */
	GdkWindowWindowClass wclass;
	/**
	 * #GdkVisual for window
	 */
	GdkVisual* visual;
	/**
	 * type of window
	 */
	GdkWindowType windowType;
	/**
	 * cursor for the window (see gdk_window_set_cursor())
	 */
	GdkCursor* cursor;
	/**
	 * don’t use (see gtk_window_set_wmclass())
	 */
	char* wmclassName;
	/**
	 * don’t use (see gtk_window_set_wmclass())
	 */
	char* wmclassClass;
	/**
	 * %TRUE to bypass the window manager
	 */
	bool overrideRedirect;
	/**
	 * a hint of the function of the window
	 */
	GdkWindowTypeHint typeHint;
}

struct GdkWindowClass
{
	GObjectClass parentClass;
	/** */
	extern(C) GdkWindow* function(GdkWindow* window, double x, double y) pickEmbeddedChild;
	/** */
	extern(C) void function(GdkWindow* window, double offscreenX, double offscreenY, double* embedderX, double* embedderY) toEmbedder;
	/** */
	extern(C) void function(GdkWindow* window, double embedderX, double embedderY, double* offscreenX, double* offscreenY) fromEmbedder;
	/** */
	extern(C) cairo_surface_t* function(GdkWindow* window, int width, int height) createSurface;
	/** */
	extern(C) void function() GdkReserved1;
	/** */
	extern(C) void function() GdkReserved2;
	/** */
	extern(C) void function() GdkReserved3;
	/** */
	extern(C) void function() GdkReserved4;
	/** */
	extern(C) void function() GdkReserved5;
	/** */
	extern(C) void function() GdkReserved6;
	/** */
	extern(C) void function() GdkReserved7;
	/** */
	extern(C) void function() GdkReserved8;
}

struct GdkWindowRedirect;

struct GdkX11Window;

struct GdkX11WindowClass;

/**
 * Specifies the type of function passed to gdk_event_handler_set() to
 * handle all GDK events.
 *
 * Params:
 *     event = the #GdkEvent to process.
 *     data = user data set when the event handler was installed with
 *         gdk_event_handler_set().
 */
public alias extern(C) void function(GdkEvent* event, void* data) GdkEventFunc;

/**
 * Specifies the type of function used to filter native events before they are
 * converted to GDK events.
 *
 * When a filter is called, @event is unpopulated, except for
 * `event->window`. The filter may translate the native
 * event to a GDK event and store the result in @event, or handle it without
 * translation. If the filter translates the event and processing should
 * continue, it should return %GDK_FILTER_TRANSLATE.
 *
 * Params:
 *     xevent = the native event to filter.
 *     event = the GDK event to which the X event will be translated.
 *     data = user data set when the filter was installed.
 *
 * Return: a #GdkFilterReturn value.
 */
public alias extern(C) GdkFilterReturn function(GdkXEvent* xevent, GdkEvent* event, void* data) GdkFilterFunc;

/**
 * Type of the callback used to set up @window so it can be
 * grabbed. A typical action would be ensuring the window is
 * visible, although there's room for other initialization
 * actions.
 *
 * Params:
 *     seat = the #GdkSeat being grabbed
 *     window = the #GdkWindow being grabbed
 *     userData = user data passed in gdk_seat_grab()
 *
 * Since: 3.20
 */
public alias extern(C) void function(GdkSeat* seat, GdkWindow* window, void* userData) GdkSeatGrabPrepareFunc;

/**
 * A function of this type is passed to gdk_window_invalidate_maybe_recurse().
 * It gets called for each child of the window to determine whether to
 * recursively invalidate it or now.
 *
 * Params:
 *     window = a #GdkWindow
 *     userData = user data
 *
 * Return: %TRUE to invalidate @window recursively
 */
public alias extern(C) int function(GdkWindow* window, void* userData) GdkWindowChildFunc;

/**
 * Whenever some area of the window is invalidated (directly in the
 * window or in a child window) this gets called with @region in
 * the coordinate space of @window. You can use @region to just
 * keep track of the dirty region, or you can actually change
 * @region in case you are doing display tricks like showing
 * a child in multiple places.
 *
 * Params:
 *     window = a #GdkWindow
 *     region = a #cairo_region_t
 *
 * Since: 3.10
 */
public alias extern(C) void function(GdkWindow* window, cairo_region_t* region) GdkWindowInvalidateHandlerFunc;
