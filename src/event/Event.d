/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module event.Event;

private import dui.DUI;
private import dui.ObjectG;
private import def.Types;
private import def.Constants;
private import ddi.Screen;


public:

enum GdkFilterReturn{
	GDK_FILTER_CONTINUE, /* Event not handled, continue processesing */
	GDK_FILTER_TRANSLATE, /* Translated event stored */
	GDK_FILTER_REMOVE /* Terminate processing, removing event */
};

//typedef GdkFilterReturn(* GdkFilterFunc) (GdkXEvent * xevent, GdkEvent * event, gpointer data);

/* Event types.
 *   Nothing: No event occurred.
 *   Delete: A window delete event was sent by the window manager.
 *	     The specified window should be deleted.
 *   Destroy: A window has been destroyed.
 *   Expose: Part of a window has been uncovered.
 *   NoExpose: Same as expose, but no expose event was generated.
 *   VisibilityNotify: A window has become fully/partially/not obscured.
 *   MotionNotify: The mouse has moved.
 *   ButtonPress: A mouse button was pressed.
 *   ButtonRelease: A mouse button was release.
 *   KeyPress: A key was pressed.
 *   KeyRelease: A key was released.
 *   EnterNotify: A window was entered.
 *   LeaveNotify: A window was exited.
 *   FocusChange: The focus window has changed. (The focus window gets
 *		  keyboard events).
 *   Resize: A window has been resized.
 *   Map: A window has been mapped. (It is now visible on the screen).
 *   Unmap: A window has been unmapped. (It is no longer visible on
 *	    the screen).
 *   Scroll: A mouse wheel was scrolled either up or down.
 */
 
alias int GdkEventType;

public enum EventType{
		NOTHING = -1,
		DELETE = 0,
		DESTROY = 1,
		EXPOSE = 2,
		MOTION_NOTIFY = 3,
		BUTTON_PRESS = 4,
		BUTTON2_PRESS = 5,
		BUTTON3_PRESS = 6,
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
		NO_EXPOSE = 30,
		SCROLL = 31,
		WINDOW_STATE = 32,
		SETTING = 33}
;

public:
char [][] EventTypeDesc = [
"NOTHING",
"DELETE",
"DESTROY",
"EXPOSE",
"MOTION_NOTIFY",
"BUTTON_PRESS",
"BUTTON2_PRESS",
"BUTTON3_PRESS",
"BUTTON_RELEASE",
"KEY_PRESS",
"KEY_RELEASE",
"ENTER_NOTIFY",
"LEAVE_NOTIFY",
"FOCUS_CHANGE",
"CONFIGURE",
"MAP",
"UNMAP",
"PROPERTY_NOTIFY",
"SELECTION_CLEAR",
"SELECTION_REQUEST",
"SELECTION_NOTIFY",
"PROXIMITY_IN",
"PROXIMITY_OUT",
"DRAG_ENTER",
"DRAG_LEAVE",
"DRAG_MOTION",
"DRAG_STATUS",
"DROP_START",
"DROP_FINISHED",
"CLIENT_EVENT",
"VISIBILITY_NOTIFY",
"NO_EXPOSE",
"SCROLL",
"WINDOW_STATE",
"SETTING"
];



/**
 * 
 */
struct GdkEventAny {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
}


/**
 * 
 */
struct GdkEventExpose {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkRectangle area;
	GdkRegion * region;
	gint count; /* If non-zero, how many more events follow. */
}

/**
 * 
 */
struct GdkEventNoExpose {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
}

alias VisibilityState GdkVisibilityState;

/**
 * 
 */
struct GdkEventVisibility {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkVisibilityState state;
}

/**
 * 
 */
struct GdkEventMotion {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble * axes;
	guint state;
	gint16 is_hint;
	GdkDevice * device;
	gdouble x_root, y_root;
}

/**
 * 
 */
struct GdkEventButton {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble * axes;
	guint state;
	guint button;
	GdkDevice * device;
	gdouble x_root, y_root;
}


alias ScrollDirection GdkScrollDirection;
/**
 * 
 */
struct GdkEventScroll {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	gdouble x;
	gdouble y;
	guint state;
	GdkScrollDirection direction;
	GdkDevice * device;
	gdouble x_root, y_root;
}

/**
 * 
 */
struct GdkEventKey {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	guint state;
	guint keyval;
	gint length;
	gchar * string;
	guint16 hardware_keycode;
	guint8 group;
}

alias CrossingMode GdkCrossingMode;
alias NotifyType GdkNotifyType;

/**
 * 
 */
struct GdkEventCrossing {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkWindow * subwindow;
	guint32 time;
	gdouble x;
	gdouble y;
	gdouble x_root;
	gdouble y_root;
	GdkCrossingMode mode;
	GdkNotifyType detail;
	gboolean focus;
	guint state;
}

/**
 * 
 */
struct GdkEventFocus {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	gint16 iN;
}

/**
 * 
 */
struct GdkEventConfigure {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	gint x, y;
	gint width;
	gint height;
}

/**
 * 
 */
struct GdkEventProperty {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom atom;
	guint32 time;
	guint state;
}

alias gpointer GdkNativeWindow;

/**
 * 
 */
struct GdkEventSelection {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom selection;
	GdkAtom target;
	GdkAtom property;
	guint32 time;
	GdkNativeWindow requestor;
}

/* This event type will be used pretty rarely. It only is private important
   for XInput aware programs that are drawing their own cursor */

/**
 * 
 */
struct GdkEventProximity {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	guint32 time;
	GdkDevice * device;
}

/**
 * 
 */
struct GdkEventClient {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkAtom message_type;
	gushort data_format;
	union data{
		char b[20];
		short s[10];
		long l[5];
	}
	;
}

alias SettingAction GdkSettingAction;
/**
 * 
 */
struct GdkEventSetting {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkSettingAction action;
	char * name;
}


alias WindowState GdkWindowState;

/**
 * 
 */
struct GdkEventWindowState {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkWindowState changed_mask;
	GdkWindowState new_window_state;
};

/**
 * 
 */
struct GdkEventDND {
	GdkEventType type;
	GdkWindow * window;
	gint8 send_event;
	GdkDragContext * context;

	guint32 time;
	gshort x_root, y_root;
};

union GdkEvent {
	GdkEventType type;
	GdkEventAny any;
	GdkEventExpose expose;
	GdkEventNoExpose no_expose;
	GdkEventVisibility visibility;
	GdkEventMotion motion;
	GdkEventButton button;
	GdkEventScroll scroll;
	GdkEventKey key;
	GdkEventCrossing crossing;
	GdkEventFocus focus_change;
	GdkEventConfigure configure;
	GdkEventProperty property;
	GdkEventSelection selection;
	GdkEventProximity proximity;
	GdkEventClient client;
	GdkEventDND dnd;
	GdkEventWindowState window_state;
	GdkEventSetting setting;
};

private:

alias int GdkAxisUse;
alias void *GdkEventFunc;

extern (C) GType gdk_event_get_type();

extern (C) gboolean gdk_events_pending();
extern (C) GdkEvent * gdk_event_get();

extern (C) GdkEvent * gdk_event_peek();
extern (C) GdkEvent * gdk_event_get_graphics_expose(GdkWindow * window);
extern (C) void gdk_event_put(GdkEvent * event);

extern (C) GdkEvent * gdk_event_new(GdkEventType type);
extern (C) GdkEvent * gdk_event_copy(GdkEvent * event);
extern (C) void gdk_event_free(GdkEvent * event);

extern (C) guint32 gdk_event_get_time(GdkEvent * event);
extern (C) gboolean gdk_event_get_state(GdkEvent * event, GdkModifierType * state);
extern (C) gboolean gdk_event_get_coords(GdkEvent * event, gdouble * x_win, gdouble * y_win);
extern (C) gboolean gdk_event_get_root_coords(GdkEvent * event, gdouble * x_root, gdouble * y_root);
extern (C) gboolean gdk_event_get_axis(GdkEvent * event, GdkAxisUse axis_use, gdouble * value);
extern (C) void gdk_event_handler_set(GdkEventFunc func, gpointer data, GDestroyNotify notify);

extern (C) void gdk_event_set_screen(GdkEvent * event, GdkScreen * screen);
extern (C) GdkScreen * gdk_event_get_screen(GdkEvent * event);

extern (C) void gdk_set_show_events(gboolean show_events);
extern (C) gboolean gdk_get_show_events();

//# ifndef GDK_MULTIHEAD_SAFE 
//extern (C) void gdk_add_client_message_filter(GdkAtom message_type, GdkFilterFunc func, gpointer data);

//extern (C) gboolean gdk_setting_get(gchar * name, GValue * value);
//# endif /* GDK_MULTIHEAD_SAFE */


/**
 * GUI events from gtk
 */
public:
class Event
{

	public enum
   {
		NOTHING = -1,
		DELETE = 0,
		DESTROY = 1,
		EXPOSE = 2,
		MOTION_NOTIFY = 3,
		BUTTON_PRESS = 4,
		BUTTON_PRESS2 = 5,
		BUTTON_PRESS3 = 6,
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
		NO_EXPOSE = 30,
		SCROLL = 31,
		WINDOW_STATE = 32,
		SETTING = 33
	};

	GdkEvent* event;

	package:

	this(GdkEvent *event)
	{
		this.event = event;
		//printf("Event.Constructor %.*s\n",EventTypeDesc[getType()+1]);
	}
	
	public:

	/**
	 * Gets the GDK evetn struct
	 * @return the GdkEvent*
	 */
	public GdkEvent* getE()
	{
		return event;
	}
	
	Event create(GdkEvent *gdkEvent)
	{
		GdkEventAny* eventAny = cast(GdkEventAny*)gdkEvent;
		Event event;
		switch(eventAny.type)
		{
			/*
			case DELETE: event = new EventDelete(gdkEvent); break;
			case DESTROY: event = new EventDestroy(gdkEvent); break;
			case EXPOSE: event = new EventExpose(gdkEvent); break;
			case MOTION_NOTIFY: event = new EventMotionNotify(gdkEvent); break;
			case BUTTON_PRESS: event = new EventButtonPress(gdkEvent); break;
			case BUTTON_PRESS2: event = new EventButtonsPress2(gdkEvent); break;
			case BUTTON_PRESS3: event = new EventButtonPress3(gdkEvent); break;
			case BUTTON_RELEASE: event = new EventButtonRelease(gdkEvent); break;
			case KEY_PRESS: event = new EventKeyPress(gdkEvent); break;
			case KEY_RELEASE: event = new EventKeyRelease(gdkEvent); break;
			case ENTER_NOTIFY: event = new EventEnterNotify(gdkEvent); break;
			case LEAVE_NOTIFY: event = new EventLeaveNotify(gdkEvent); break;
			case FOCUS_CHANGE: event = new EventFocusGhange(gdkEvent); break;
			case CONFIGURE: event = new EventConfigure(gdkEvent); break;
			case MAP: event = new EventMap(gdkEvent); break;
			case UNMAP: event = new EventUnmap(gdkEvent); break;
			case PROPERTY_NOTIFY: event = new EventPropertyNotify(gdkEvent); break;
			case SELECTION_CLEAR: event = new EventSelectionClear(gdkEvent); break;
			case SELECTION_REQUEST: event = new EventSelectionRequest(gdkEvent); break;
			case SELECTION_NOTIFY: event = new EventSelectionNotify(gdkEvent); break;
			case PROXIMITY_IN: event = new EventProximityIn(gdkEvent); break;
			case PROXIMITY_OUT: event = new EventProximityOut(gdkEvent); break;
			case DRAG_ENTER: event = new EventDragEnter(gdkEvent); break;
			case DRAG_LEAVE: event = new EventDragLeave(gdkEvent); break;
			case DRAG_MOTION: event = new EventDragMotion(gdkEvent); break;
			case DRAG_STATUS: event = new EventDragStatus(gdkEvent); break;
			case DROP_START: event = new EventDropStart(gdkEvent); break;
			case DROP_FINISHED: event = new EventDropFinish(gdkEvent); break;
			case CLIENT_EVENT: event = new EventClientEvent(gdkEvent); break;
			case VISIBILITY_NOTIFY: event = new EventVisibilityNotify(gdkEvent); break;
			case NO_EXPOSE: event = new EventNoExpose(gdkEvent); break;
			case SCROLL: event = new EventScroll(gdkEvent); break;
			case WINDOW_STATE: event = new EventWindowState(gdkEvent); break;
			case SETTING: event = new EventSetting(gdkEvent); break;
			*/
			default:
				new Event(gdkEvent);
			break;
		}
		return event;
	}
	
	public:
	
	/**
	 * Gets the event types
	 * @return the event type
	 */
	int getType()
	{
		return event.type;
	}

	/**
	 * Gets the event pointer X value or 0 if the event contains no mouse information
	 * @return the pointer X values or 0 if the event contains no mouse information
	 */
	public int getX()
	{
		int x = 0;
		switch(event.type)
		{
			case MOTION_NOTIFY:
			case BUTTON_PRESS:
			case BUTTON_RELEASE:
				x = cast(int)(cast(GdkEventMotion*)event).x;
			break;
			default:
				x = 0;
			break;
		}
		return x;
	}

	/**
	 * Gets the event pointer Y value or 0 if the event contains no mouse information
	 * @return the pointer Y values or 0 if the event contains no mouse information
	 */
	public int getY()
	{
		int y = 0;
		switch(event.type)
		{
			case MOTION_NOTIFY:
			case BUTTON_PRESS:
			case BUTTON_RELEASE:
				y = cast(int)(cast(GdkEventMotion*)event).y;
			break;
			default:
				y = 0;
			break;
		}
		return y;
	}

	/**
	 * Gets the event pointer X value or 0 if the event contains no mouse information
	 * @return the pointer X values or 0 if the event contains no mouse information
	 */
	public int getXRoot()
	{
		int x = 0;
		switch(event.type)
		{
			case MOTION_NOTIFY:
			case BUTTON_PRESS:
			case BUTTON_RELEASE:
				x = cast(int)(cast(GdkEventMotion*)event).x_root;
			break;
			default:
				x = 0;
			break;
		}
		return x;
	}

	/**
	 * Gets the event pointer Y value or 0 if the event contains no mouse information
	 * @return the pointer Y values or 0 if the event contains no mouse information
	 */
	public int getYRoot()
	{
		int y = 0;
		switch(event.type)
		{
			case MOTION_NOTIFY:
			case BUTTON_PRESS:
			case BUTTON_RELEASE:
				y = cast(int)(cast(GdkEventMotion*)event).y_root;
			break;
			default:
				y = 0;
			break;
		}
		return y;
	}

	/**
	 * Gets the window for this event
	 * @return the event's window
	 */
	public static GdkWindow* getWindow(GdkEvent *event)
	{
		return (cast(GdkEventAny*)event).window;
	}
	
	///**
	// * Gets the event type
	// * @return the event type
	// */
	//GType getType()
	//{
	//	return gdk_event_get_type(event);
	//}

	/+
	/*
	gboolean gdk_events_pending();
	GdkEvent * gdk_event_get();

	GdkEvent * gdk_event_peek();
	GdkEvent * gdk_event_get_graphics_expose(GdkWindow * window);
	*/
	+/
	
	/**
	 * Puts this event into the queue
	 */
	void put()
	{
		gdk_event_put(event);
	}
	
	/**
	 * Creates a new event from an event type
	 * @return a new event
	 */
	Event createEvent(GdkEventType type)
	{
		return new Event(gdk_event_new(type));
	}
	
	/**
	 * Creates a copy of this event
	 * @return a copy of this event
	 */
	Event copy()
	{
		return new Event(gdk_event_copy(event));
	}
	
	/**
	 * Frees this event ???
	 */
	void free()
	{
		gdk_event_free(event);
	}

	/**
	 * Returns the time stamp of this event
	 * @return the event time
	 */
	guint32 getTime()
	{
		return gdk_event_get_time(event);
	}
	
	/**
	 * Gets the state of this event for a given modifier
	 * @param state the modifier types to test
	 * @return true if the test was sucesseful and set the state according to the event
	 */
	gboolean getState(GdkModifierType * state)
	{
		return gdk_event_get_state(event, state) ==0 ? false : true;
	}
	
	/**
	 * Gets the state for the modifer masks passed
	 * @return true if the test is sucesseful and all modifiers are present
	 */
	bit testState(ModifierType state)
	{
		bit ok = false;
		ModifierType st = state;
		if ( getState(&st) )
		{
			ok = (st == state);
		}
		return ok;
	}
	
	/**
	 * Gets the event pointer coordinates on the root window
	 * @param xWin the x pointer coord on the window
	 * @param yWin the y pointer coord on the window
	 */
	gboolean getCoords(gdouble* xWin, gdouble* yWin)
	{
		return gdk_event_get_coords(event, xWin, yWin)==0 ? false : true;
	}
	
	/**
	 * Gets the event pointer coordinates on the root window
	 * @param xRoot the x pointer coord on the root window
	 * @param yRoot the y pointer coord on the root window
	 */
	gboolean getRootCoords(gdouble* xRoot, gdouble* yRoot)
	{
		return gdk_event_get_root_coords(event, xRoot, yRoot)==0 ? false : true;
	}
	
	/**
	 * Gets the event axis ???
	 * @return true if the event can return the axis
	 */
	gboolean getAxis(GdkAxisUse axis_use, gdouble * value)
	{
		return gdk_event_get_axis(event, axis_use, value)==0 ? false : true;
	}

	//void gdk_event_handler_set(GdkEventFunc func, gpointer data, GDestroyNotify notify);

	/**
	 * Sets the event screen
	 * @param screen
	 */
	void setScreen(Screen screen)
	{
		gdk_event_set_screen(event, screen.gdkScreen());
	}
	
	/**
	 * Gets the event screen
	 * @return the evetn screen
	 */
	Screen getScreen()
	{
		return new Screen(gdk_event_get_screen(event));
	}

	/**
	 * Set the show events flag
	 * @param showEvents 
	 */
	void setShowEvents(gboolean showEvents)
	{
		gdk_set_show_events(showEvents);
	}
	
	/**
	 * Gets the show events flag
	 * @return the show event flag
	 */
	gboolean getShowEvents()
	{
		return gdk_get_show_events();
	}

	//# ifndef GDK_MULTIHEAD_SAFE 
	//void gdk_add_client_message_filter(GdkAtom message_type, GdkFilterFunc func, gpointer data);

	//gboolean gdk_setting_get(gchar * name, GValue * value);
	//# endif /* GDK_MULTIHEAD_SAFE */
};

/**
 * A mouse button event
 */
public:
class EventButton : Event
{

	/**
	 * Creates a new EventButton from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

	GdkEventButton* gdkE()
	{
		return cast(GdkEventButton*)event;
	}
	
	int button()
	{
		return gdkE().button;
	}
	
	int getX()
	{
		return cast(int)gdkE().x;
	}

	int getY()
	{
		return cast(int)gdkE().y;
	}

	
	bit isDoubleClick()
	{
		return isDoubleClick(1);
	}
	bit isDoubleClick(int buttonNumber)
	{
		return button()==buttonNumber && getType() == EventType.BUTTON2_PRESS;
	}
	
	
	bit isTripleClick()
	{
		return isTripleClick(1);
	}
	bit isTripleClick(int buttonNumber)
	{
		return button() == buttonNumber && getType() == EventType.BUTTON3_PRESS;
	}
};

/**
 * A configure event
 */
public:
class EventConfigure : Event
{

	/**
	 * Creates a new EventMotion from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * A visibility event
 */
public:
class EventVisibility : Event
{

	/**
	 * Creates a new EventMotion from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}
	
	/**
	 * Gets the visibility state
	 * @return the visibility state
	 */
	VisibilityState getState()
	{
		return (cast(GdkEventVisibility*)event).state;
	}

};

/**
 * A mouse movement event
 */
public:
class EventMotion : Event
{

	/**
	 * Creates a new EventMotion from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

	GdkEventMotion* gdkE()
	{
		return cast(GdkEventMotion*)event;
	}

};

/**
 * Mouse enter or leave event
 */
public:
class EventCrossing : Event
{

	/**
	 * Creates a new EventCrossing from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Focus receive in or out
 */
public:
class EventFocus : Event
{

	/**
	 * Creates a new EventFocus from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Key pressed ot released event
 */
public:
class EventKey : Event
{

	private import dool.String;

	/**
	 * Creates a new EventKey from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

//	GdkEventType type;
//	GdkWindow * window;
//	gint8 send_event;
//	guint32 time;
//	guint state;
//	guint keyval;
//	gint length;
//	gchar * string;
//	guint16 hardware_keycode;
//	guint8 group;

	/**
	 * the key value
	 * @return the key value
	 */
	int getKeyVal()
	{
		return (cast(GdkEventKey*)event).keyval;
	}
	
	int getState()
	{
		return (cast(GdkEventKey*)event).state;
	}
	
	String getString()
	{
		return String.newz((cast(GdkEventKey*)event).string);
	}
	
	bit isAlt()
	{
		return (getState() & KeyState.ALT) == KeyState.ALT;
	}
	
	bit isShift()
	{
		return (getState() & KeyState.ALT) == KeyState.ALT;
	}
	
	bit isCtrl()
	{
		return (getState() & KeyState.CTRL) == KeyState.CTRL;
	}
	
};

/**
 * Exposed event
 */
public:
class EventExpose : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

	/**
	 * if non 0 how many more events
	 * @return 
	 */
	int getCount()
	{
		return (cast(GdkEventExpose*)event).count;
	}

};

/**
 * NoExposed event
 */
public:
class EventNoExpose : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Scroll event
 */
public:
class EventScroll : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Property event
 */
public:
class EventProperty : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Selection event
 */
public:
class EventSelection : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Proximity event
 */
public:
class EventProximity : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Client event
 */
public:
class EventClient : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Setting event
 */
public:
class EventSetting : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * Window state event
 */
public:
class EventWindowState : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

/**
 * DND event
 */
public:
class EventDND : Event
{

	/**
	 * Creates a new EventExpose from a GdkEvent 
	 */
	this(GdkEvent *event)
	{
		super(event);
	}

};

