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

/*
 * Conversion parameters:
 * inFile  = GtkWidget.html
 * outPack = gtk
 * outFile = Widget
 * strct   = GtkWidget
 * realStrct=
 * ctorStrct=
 * clss    = Widget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_widget_
 * 	- gtk_
 * omit structs:
 * 	- GtkWidgetClass
 * 	- GtkRequisition
 * omit prefixes:
 * 	- gtk_requisition_
 * omit code:
 * omit signals:
 * imports:
 * 	- std.conv
 * 	- atk.ObjectAtk
 * 	- cairo.Context
 * 	- cairo.Region
 * 	- glib.ListG
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gobject.Type
 * 	- gobject.Value
 * 	- gio.ActionGroupIF
 * 	- gdk.Color
 * 	- gdk.Cursor
 * 	- gdk.Device
 * 	- gdk.Display
 * 	- gdk.DragContext
 * 	- gdk.Event
 * 	- gdk.FrameClock
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gdk.Screen
 * 	- gdk.Visual
 * 	- gdk.Window
 * 	- gtk.AccelGroup
 * 	- gtk.Clipboard
 * 	- gtk.RcStyle
 * 	- gtk.SelectionData
 * 	- gtk.Settings
 * 	- gtk.Style
 * 	- gtk.StyleContext
 * 	- gtk.Tooltip
 * 	- gtk.WidgetPath
 * 	- pango.PgContext
 * 	- pango.PgFontDescription
 * 	- pango.PgLayout
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- CairoContext* -> Context
 * 	- GActionGroup* -> ActionGroupIF
 * 	- GList* -> ListG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GdkColor* -> Color
 * 	- GdkDevice* -> Device
 * 	- GdkDisplay* -> Display
 * 	- GdkDragContext* -> DragContext
 * 	- GdkEvent* -> Event
 * 	- GdkFrameClock* -> FrameClock
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * 	- GdkWindow* -> Window
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkClipboard* -> Clipboard
 * 	- GtkRcStyle* -> RcStyle
 * 	- GtkSelectionData* -> SelectionData
 * 	- GtkSettings* -> Settings
 * 	- GtkStyle* -> Style
 * 	- GtkStyleContext* -> StyleContext
 * 	- GtkTooltip* -> Tooltip
 * 	- GtkWidget* -> Widget
 * 	- GtkWidgetPath* -> WidgetPath
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLayout* -> PgLayout
 * 	- cairo_region_t* -> Region
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Widget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
private import cairo.Context;
private import cairo.Region;
private import glib.ListG;
private import glib.Str;
private import gobject.ParamSpec;
private import gobject.Type;
private import gobject.Value;
private import gio.ActionGroupIF;
private import gdk.Color;
private import gdk.Cursor;
private import gdk.Device;
private import gdk.Display;
private import gdk.DragContext;
private import gdk.Event;
private import gdk.FrameClock;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gdk.Screen;
private import gdk.Visual;
private import gdk.Window;
private import gtk.AccelGroup;
private import gtk.Clipboard;
private import gtk.RcStyle;
private import gtk.SelectionData;
private import gtk.Settings;
private import gtk.Style;
private import gtk.StyleContext;
private import gtk.Tooltip;
private import gtk.WidgetPath;
private import pango.PgContext;
private import pango.PgFontDescription;
private import pango.PgLayout;
private import gtk.BuildableIF;
private import gtk.BuildableT;


version(Tango) {
	private import tango.text.convert.Integer;
} else {
	private import std.conv;
}


private import gobject.ObjectG;

/**
 * GtkWidget is the base class all widgets in GTK+ derive from. It manages the
 * widget lifecycle, states and style.
 *
 * Height-for-width Geometry Management
 *
 * GTK+ uses a height-for-width (and width-for-height) geometry management
 * system. Height-for-width means that a widget can change how much
 * vertical space it needs, depending on the amount of horizontal space
 * that it is given (and similar for width-for-height). The most common
 * example is a label that reflows to fill up the available width, wraps
 * to fewer lines, and therefore needs less height.
 *
 * Height-for-width geometry management is implemented in GTK+ by way
 * of five virtual methods:
 *
 * GtkWidgetClass.get_request_mode()
 * GtkWidgetClass.get_preferred_width()
 * GtkWidgetClass.get_preferred_height()
 * GtkWidgetClass.get_preferred_height_for_width()
 * GtkWidgetClass.get_preferred_width_for_height()
 *
 * There are some important things to keep in mind when implementing
 * height-for-width and when using it in container implementations.
 *
 * The geometry management system will query a widget hierarchy in
 * only one orientation at a time. When widgets are initially queried
 * for their minimum sizes it is generally done in two initial passes
 * in the GtkSizeRequestMode chosen by the toplevel.
 *
 * For example, when queried in the normal
 * GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH mode:
 * First, the default minimum and natural width for each widget
 * in the interface will be computed using gtk_widget_get_preferred_width().
 * Because the preferred widths for each container depend on the preferred
 * widths of their children, this information propagates up the hierarchy,
 * and finally a minimum and natural width is determined for the entire
 * toplevel. Next, the toplevel will use the minimum width to query for the
 * minimum height contextual to that width using
 * gtk_widget_get_preferred_height_for_width(), which will also be a highly
 * recursive operation. The minimum height for the minimum width is normally
 * used to set the minimum size constraint on the toplevel
 * (unless gtk_window_set_geometry_hints() is explicitly used instead).
 *
 * After the toplevel window has initially requested its size in both
 * dimensions it can go on to allocate itself a reasonable size (or a size
 * previously specified with gtk_window_set_default_size()). During the
 * recursive allocation process it's important to note that request cycles
 * will be recursively executed while container widgets allocate their children.
 * Each container widget, once allocated a size, will go on to first share the
 * space in one orientation among its children and then request each child's
 * height for its target allocated width or its width for allocated height,
 * depending. In this way a GtkWidget will typically be requested its size
 * a number of times before actually being allocated a size. The size a
 * widget is finally allocated can of course differ from the size it has
 * requested. For this reason, GtkWidget caches a small number of results
 * to avoid re-querying for the same sizes in one allocation cycle.
 *
 * See GtkContainer's
 * geometry management section
 * to learn more about how height-for-width allocations are performed
 * by container widgets.
 *
 * If a widget does move content around to intelligently use up the
 * allocated size then it must support the request in both
 * GtkSizeRequestModes even if the widget in question only
 * trades sizes in a single orientation.
 *
 * For instance, a GtkLabel that does height-for-width word wrapping
 * will not expect to have GtkWidgetClass.get_preferred_height() called
 * because that call is specific to a width-for-height request. In this
 * case the label must return the height required for its own minimum
 * possible width. By following this rule any widget that handles
 * height-for-width or width-for-height requests will always be allocated
 * at least enough space to fit its own content.
 *
 * Here are some examples of how a GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH widget
 * generally deals with width-for-height requests, for GtkWidgetClass.get_preferred_height()
 * it will do:
 *
 * static void
 * foo_widget_get_preferred_height (GtkWidget *widget, gint *min_height, gint *nat_height)
 * {
	 *  if (i_am_in_height_for_width_mode)
	 *  {
		 *  gint min_width;
		 *
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget, min_width, NULL);
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width (widget, min_width,
		 *  min_height, nat_height);
	 *  }
	 *  else
	 *  {
		 *  ... some widgets do both. For instance, if a GtkLabel is rotated to 90 degrees
		 *  it will return the minimum and natural height for the rotated label here.
	 *  }
 * }
 *
 * And in GtkWidgetClass.get_preferred_width_for_height() it will simply return
 * the minimum and natural width:
 *
 * static void
 * foo_widget_get_preferred_width_for_height (GtkWidget *widget, gint for_height,
 *  gint *min_width, gint *nat_width)
 * {
	 *  if (i_am_in_height_for_width_mode)
	 *  {
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget, min_width, nat_width);
	 *  }
	 *  else
	 *  {
		 *  ... again if a widget is sometimes operating in width-for-height mode
		 *  (like a rotated GtkLabel) it can go ahead and do its real width for
		 *  height calculation here.
	 *  }
 * }
 *
 * Often a widget needs to get its own request during size request or
 * allocation. For example, when computing height it may need to also
 * compute width. Or when deciding how to use an allocation, the widget
 * may need to know its natural size. In these cases, the widget should
 * be careful to call its virtual methods directly, like this:
 *
 * $(DDOC_COMMENT example)
 *
 * It will not work to use the wrapper functions, such as
 * gtk_widget_get_preferred_width() inside your own size request
 * implementation. These return a request adjusted by GtkSizeGroup
 * and by the GtkWidgetClass.adjust_size_request() virtual method. If a
 * widget used the wrappers inside its virtual method implementations,
 * then the adjustments (such as widget margins) would be applied
 * twice. GTK+ therefore does not allow this and will warn if you try
 * to do it.
 *
 * Of course if you are getting the size request for
 * another widget, such as a child of a
 * container, you must use the wrapper APIs.
 * Otherwise, you would not properly consider widget margins,
 * GtkSizeGroup, and so forth.
 *
 * <hr>
 *
 * Style Properties
 *
 * GtkWidget introduces style
 * properties - these are basically object properties that are stored
 * not on the object, but in the style object associated to the widget. Style
 * properties are set in resource files.
 * This mechanism is used for configuring such things as the location of the
 * scrollbar arrows through the theme, giving theme authors more control over the
 * look of applications without the need to write a theme engine in C.
 *
 * Use gtk_widget_class_install_style_property() to install style properties for
 * a widget class, gtk_widget_class_find_style_property() or
 * gtk_widget_class_list_style_properties() to get information about existing
 * style properties and gtk_widget_style_get_property(), gtk_widget_style_get() or
 * gtk_widget_style_get_valist() to obtain the value of a style property.
 *
 * <hr>
 *
 * GtkWidget as GtkBuildable
 *
 * The GtkWidget implementation of the GtkBuildable interface supports a
 * custom <accelerator> element, which has attributes named key,
 * modifiers and signal and allows to specify accelerators.
 *
 * $(DDOC_COMMENT example)
 *
 * In addition to accelerators, GtkWidget also support a
 * custom <accessible> element, which supports actions and relations.
 * Properties on the accessible implementation of an object can be set by accessing the
 * internal child "accessible" of a GtkWidget.
 *
 * $(DDOC_COMMENT example)
 *
 * Finally, GtkWidget allows style information such as style classes to
 * be associated with widgets, using the custom <style> element:
 *
 * $(DDOC_COMMENT example)
 */
public class Widget : ObjectG, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkWidget* gtkWidget;
	
	
	public GtkWidget* getWidgetStruct()
	{
		return gtkWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWidget* gtkWidget)
	{
		super(cast(GObject*)gtkWidget);
		this.gtkWidget = gtkWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkWidget = cast(GtkWidget*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkWidget);
	
	public GtkWidgetClass* getWidgetClass()
	{
		return Type.getInstanceClass!(GtkWidgetClass)(this);
	}
	
	/** */
	public int getWidth()
	{
		int width;
		gtk_widget_get_size_request(gtkWidget, &width, null);
		return width;
	}
	
	/** */
	public int getHeight()
	{
		int height;
		gtk_widget_get_size_request(gtkWidget, null, &height);
		return height;
	}
	
	/**
	 * Sets  the cursor.
	 * Params:
	 *  cursor = the new cursor
	 * Bugs: the cursor changes to the parent widget also
	 */
	void setCursor(Cursor cursor)
	{
		getWindow().setCursor(cursor);
	}
	
	/**
	 * Resets the cursor.
	 * don't know if this is implemented by GTK+. Seems that it's not
	 * Bugs: does nothing
	 */
	public void resetCursor()
	{
		getWindow().setCursor(null);
	}
	
	/**
	 * Modifies the font for this widget.
	 * This just calls modifyFont(new PgFontDescription(PgFontDescription.fromString(family ~ " " ~ size)));
	 */
	public void modifyFont(string family, int size)
	{
		if ( size < 0 ) size = -size;	// hack to workaround leds bug - TO BE REMOVED
		
		version(Tango)
		{
			char[10] s;
			modifyFont(
			PgFontDescription.fromString(
			family ~ " " ~ tango.text.convert.Integer.itoa(s,size)
			)
			);
		}
		else version(D_Version2)
		{
			modifyFont(
			PgFontDescription.fromString(
			family ~ " " ~ to!(string)(size)
			)
			);
		}
		else
		{
			modifyFont(
			PgFontDescription.fromString(
			family ~ " " ~ std.string.toString(size)
			)
			);
		}
	}
	
	
	/** */
	public bool onEvent(GdkEvent* event)
	{
		return getWidgetClass().event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onButtonPressEvent(GdkEventButton* event)
	{
		return getWidgetClass().button_press_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onButtonReleaseEvent(GdkEventButton* event)
	{
		return getWidgetClass().button_release_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onScrollEvent(GdkEventScroll* event)
	{
		return getWidgetClass().scroll_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onMotionNotifyEvent(GdkEventMotion* event)
	{
		return getWidgetClass().motion_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onDeleteEvent(GdkEventAny* event)
	{
		return getWidgetClass().delete_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onDestroyEvent(GdkEventAny* event)
	{
		return getWidgetClass().destroy_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onKeyPressEvent(GdkEventKey* event)
	{
		return getWidgetClass().key_press_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onKeyReleaseEvent(GdkEventKey* event)
	{
		return getWidgetClass().key_release_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onEnterNotifyEvent(GdkEventCrossing* event)
	{
		return getWidgetClass().enter_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onLeaveNotifyEvent(GdkEventCrossing* event)
	{
		return getWidgetClass().leave_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onConfigureEvent(GdkEventConfigure* event)
	{
		return getWidgetClass().configure_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onFocusInEvent(GdkEventFocus* event)
	{
		return getWidgetClass().focus_in_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onFocusOutEvent(GdkEventFocus* event)
	{
		return getWidgetClass().focus_out_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onMapEvent(GdkEventAny* event)
	{
		return getWidgetClass().map_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onUnmapEvent(GdkEventAny* event)
	{
		return getWidgetClass().unmap_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onPropertyNotifyEvent(GdkEventProperty* event)
	{
		return getWidgetClass().property_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onSelectionClearEvent(GdkEventSelection* event)
	{
		return getWidgetClass().selection_clear_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onSelectionRequestEvent(GdkEventSelection* event)
	{
		return getWidgetClass().selection_request_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onSelectionNotifyEvent(GdkEventSelection* event)
	{
		return getWidgetClass().selection_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onProximityInEvent(GdkEventProximity* event)
	{
		return getWidgetClass().proximity_in_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onProximityOutEvent(GdkEventProximity* event)
	{
		return getWidgetClass().proximity_out_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onVisibilityNotifyEvent(GdkEventVisibility* event)
	{
		return getWidgetClass().visibility_notify_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onWindowStateEvent(GdkEventWindowState* event)
	{
		return getWidgetClass().window_state_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onDamageEvent(GdkEventExpose* event)
	{
		return getWidgetClass().damage_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	/** */
	public bool onGrabBrokenEvent(GdkEventGrabBroken* event)
	{
		return getWidgetClass().grab_broken_event(getWidgetStruct(), event) == 0 ? false : true;
	}
	
	alias cairo_t CairoContext;
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Widget)[] onAccelClosuresChangedListeners;
	/**
	 */
	void addOnAccelClosuresChanged(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("accel-closures-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-closures-changed",
			cast(GCallback)&callBackAccelClosuresChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["accel-closures-changed"] = 1;
		}
		onAccelClosuresChangedListeners ~= dlg;
	}
	extern(C) static void callBackAccelClosuresChanged(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onAccelClosuresChangedListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onButtonPressListeners;
	/**
	 * The ::button-press-event signal will be emitted when a button
	 * (typically from a mouse) is pressed.
	 * To receive this signal, the GdkWindow associated to the
	 * widget needs to enable the GDK_BUTTON_PRESS_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnButtonPress(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("button-press-event" in connectedSignals) )
		{
			addEvents(EventMask.BUTTON_PRESS_MASK);
			Signals.connectData(
			getStruct(),
			"button-press-event",
			cast(GCallback)&callBackButtonPress,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["button-press-event"] = 1;
		}
		onButtonPressListeners ~= dlg;
	}
	extern(C) static gboolean callBackButtonPress(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onButtonPressListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onButtonReleaseListeners;
	/**
	 * The ::button-release-event signal will be emitted when a button
	 * (typically from a mouse) is released.
	 * To receive this signal, the GdkWindow associated to the
	 * widget needs to enable the GDK_BUTTON_RELEASE_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnButtonRelease(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("button-release-event" in connectedSignals) )
		{
			addEvents(EventMask.BUTTON_RELEASE_MASK);
			Signals.connectData(
			getStruct(),
			"button-release-event",
			cast(GCallback)&callBackButtonRelease,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["button-release-event"] = 1;
		}
		onButtonReleaseListeners ~= dlg;
	}
	extern(C) static gboolean callBackButtonRelease(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onButtonReleaseListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(guint, Widget)[] onCanActivateAccelListeners;
	/**
	 * Determines whether an accelerator that activates the signal
	 * identified by signal_id can currently be activated.
	 * This signal is present to allow applications and derived
	 * widgets to override the default GtkWidget handling
	 * for determining whether an accelerator can be activated.
	 * TRUE if the signal can be activated.
	 */
	void addOnCanActivateAccel(bool delegate(guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("can-activate-accel" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-activate-accel",
			cast(GCallback)&callBackCanActivateAccel,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["can-activate-accel"] = 1;
		}
		onCanActivateAccelListeners ~= dlg;
	}
	extern(C) static gboolean callBackCanActivateAccel(GtkWidget* widgetStruct, guint signalId, Widget _widget)
	{
		foreach ( bool delegate(guint, Widget) dlg ; _widget.onCanActivateAccelListeners )
		{
			if ( dlg(signalId, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(ParamSpec, Widget)[] onChildNotifyListeners;
	/**
	 * The ::child-notify signal is emitted for each
	 * child property that has
	 * changed on an object. The signal's detail holds the property name.
	 */
	void addOnChildNotify(void delegate(ParamSpec, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-notify",
			cast(GCallback)&callBackChildNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["child-notify"] = 1;
		}
		onChildNotifyListeners ~= dlg;
	}
	extern(C) static void callBackChildNotify(GtkWidget* widgetStruct, GParamSpec* childProperty, Widget _widget)
	{
		foreach ( void delegate(ParamSpec, Widget) dlg ; _widget.onChildNotifyListeners )
		{
			dlg(ObjectG.getDObject!(ParamSpec)(childProperty), _widget);
		}
	}
	
	void delegate(Widget)[] onCompositedChangedListeners;
	/**
	 * The ::composited-changed signal is emitted when the composited
	 * status of widgets screen changes.
	 * See gdk_screen_is_composited().
	 */
	void addOnCompositedChanged(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("composited-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"composited-changed",
			cast(GCallback)&callBackCompositedChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["composited-changed"] = 1;
		}
		onCompositedChangedListeners ~= dlg;
	}
	extern(C) static void callBackCompositedChanged(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onCompositedChangedListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onConfigureListeners;
	/**
	 * The ::configure-event signal will be emitted when the size, position or
	 * stacking of the widget's window has changed.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_STRUCTURE_MASK mask. GDK will enable this mask
	 * automatically for all new windows.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnConfigure(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("configure-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"configure-event",
			cast(GCallback)&callBackConfigure,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["configure-event"] = 1;
		}
		onConfigureListeners ~= dlg;
	}
	extern(C) static gboolean callBackConfigure(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onConfigureListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onDamageListeners;
	/**
	 * Emitted when a redirected window belonging to widget gets drawn into.
	 * The region/area members of the event shows what area of the redirected
	 * drawable was drawn into.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 * Since 2.14
	 */
	void addOnDamage(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("damage-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"damage-event",
			cast(GCallback)&callBackDamage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["damage-event"] = 1;
		}
		onDamageListeners ~= dlg;
	}
	extern(C) static gboolean callBackDamage(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onDamageListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onDeleteListeners;
	/**
	 * The ::delete-event signal is emitted if a user requests that
	 * a toplevel window is closed. The default handler for this signal
	 * destroys the window. Connecting gtk_widget_hide_on_delete() to
	 * this signal will cause the window to be hidden instead, so that
	 * it can later be shown again without reconstructing it.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnDelete(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("delete-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-event",
			cast(GCallback)&callBackDelete,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["delete-event"] = 1;
		}
		onDeleteListeners ~= dlg;
	}
	extern(C) static gboolean callBackDelete(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onDeleteListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onDestroyListeners;
	/**
	 * Signals that all holders of a reference to the widget should release
	 * the reference that they hold. May result in finalization of the widget
	 * if all references are released.
	 */
	void addOnDestroy(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("destroy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"destroy",
			cast(GCallback)&callBackDestroy,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["destroy"] = 1;
		}
		onDestroyListeners ~= dlg;
	}
	extern(C) static void callBackDestroy(GtkWidget* objectStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onDestroyListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onDestroyEventListeners;
	/**
	 * The ::destroy-event signal is emitted when a GdkWindow is destroyed.
	 * You rarely get this signal, because most widgets disconnect themselves
	 * from their window before they destroy it, so no widget owns the
	 * window at destroy time.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_STRUCTURE_MASK mask. GDK will enable this mask
	 * automatically for all new windows.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnDestroyEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("destroy-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"destroy-event",
			cast(GCallback)&callBackDestroyEvent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["destroy-event"] = 1;
		}
		onDestroyEventListeners ~= dlg;
	}
	extern(C) static gboolean callBackDestroyEvent(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onDestroyEventListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkTextDirection, Widget)[] onDirectionChangedListeners;
	/**
	 * The ::direction-changed signal is emitted when the text direction
	 * of a widget changes.
	 */
	void addOnDirectionChanged(void delegate(GtkTextDirection, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("direction-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"direction-changed",
			cast(GCallback)&callBackDirectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["direction-changed"] = 1;
		}
		onDirectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackDirectionChanged(GtkWidget* widgetStruct, GtkTextDirection previousDirection, Widget _widget)
	{
		foreach ( void delegate(GtkTextDirection, Widget) dlg ; _widget.onDirectionChangedListeners )
		{
			dlg(previousDirection, _widget);
		}
	}
	
	void delegate(DragContext, Widget)[] onDragBeginListeners;
	/**
	 * The ::drag-begin signal is emitted on the drag source when a drag is
	 * started. A typical reason to connect to this signal is to set up a
	 * custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
	 * Note that some widgets set up a drag icon in the default handler of
	 * this signal, so you may have to use g_signal_connect_after() to
	 * override what the default handler did.
	 */
	void addOnDragBegin(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-begin" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-begin",
			cast(GCallback)&callBackDragBegin,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-begin"] = 1;
		}
		onDragBeginListeners ~= dlg;
	}
	extern(C) static void callBackDragBegin(GtkWidget* widgetStruct, GdkDragContext* context, Widget _widget)
	{
		foreach ( void delegate(DragContext, Widget) dlg ; _widget.onDragBeginListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), _widget);
		}
	}
	
	void delegate(DragContext, Widget)[] onDragDataDeleteListeners;
	/**
	 * The ::drag-data-delete signal is emitted on the drag source when a drag
	 * with the action GDK_ACTION_MOVE is successfully completed. The signal
	 * handler is responsible for deleting the data that has been dropped. What
	 * "delete" means depends on the context of the drag operation.
	 */
	void addOnDragDataDelete(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-data-delete" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-delete",
			cast(GCallback)&callBackDragDataDelete,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-data-delete"] = 1;
		}
		onDragDataDeleteListeners ~= dlg;
	}
	extern(C) static void callBackDragDataDelete(GtkWidget* widgetStruct, GdkDragContext* context, Widget _widget)
	{
		foreach ( void delegate(DragContext, Widget) dlg ; _widget.onDragDataDeleteListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), _widget);
		}
	}
	
	void delegate(DragContext, SelectionData, guint, guint, Widget)[] onDragDataGetListeners;
	/**
	 * The ::drag-data-get signal is emitted on the drag source when the drop
	 * site requests the data which is dragged. It is the responsibility of
	 * the signal handler to fill data with the data in the format which
	 * is indicated by info. See gtk_selection_data_set() and
	 * gtk_selection_data_set_text().
	 */
	void addOnDragDataGet(void delegate(DragContext, SelectionData, guint, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-data-get" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-get",
			cast(GCallback)&callBackDragDataGet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-data-get"] = 1;
		}
		onDragDataGetListeners ~= dlg;
	}
	extern(C) static void callBackDragDataGet(GtkWidget* widgetStruct, GdkDragContext* context, GtkSelectionData* data, guint info, guint time, Widget _widget)
	{
		foreach ( void delegate(DragContext, SelectionData, guint, guint, Widget) dlg ; _widget.onDragDataGetListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), ObjectG.getDObject!(SelectionData)(data), info, time, _widget);
		}
	}
	
	void delegate(DragContext, gint, gint, SelectionData, guint, guint, Widget)[] onDragDataReceivedListeners;
	/**
	 * The ::drag-data-received signal is emitted on the drop site when the
	 * dragged data has been received. If the data was received in order to
	 * determine whether the drop will be accepted, the handler is expected
	 * to call gdk_drag_status() and not finish the drag.
	 * If the data was received in response to a "drag-drop" signal
	 * (and this is the last target to be received), the handler for this
	 * signal is expected to process the received data and then call
	 * gtk_drag_finish(), setting the success parameter depending on
	 * whether the data was processed successfully.
	 * The handler may inspect the selected action with
	 * gdk_drag_context_get_selected_action() before calling
	 * gtk_drag_finish(), e.g. to implement GDK_ACTION_ASK as
	 * $(DDOC_COMMENT example)
	 */
	void addOnDragDataReceived(void delegate(DragContext, gint, gint, SelectionData, guint, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-data-received" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-received",
			cast(GCallback)&callBackDragDataReceived,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-data-received"] = 1;
		}
		onDragDataReceivedListeners ~= dlg;
	}
	extern(C) static void callBackDragDataReceived(GtkWidget* widgetStruct, GdkDragContext* context, gint x, gint y, GtkSelectionData* data, guint info, guint time, Widget _widget)
	{
		foreach ( void delegate(DragContext, gint, gint, SelectionData, guint, guint, Widget) dlg ; _widget.onDragDataReceivedListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), x, y, ObjectG.getDObject!(SelectionData)(data), info, time, _widget);
		}
	}
	
	bool delegate(DragContext, gint, gint, guint, Widget)[] onDragDropListeners;
	/**
	 * The ::drag-drop signal is emitted on the drop site when the user drops
	 * the data onto the widget. The signal handler must determine whether
	 * the cursor position is in a drop zone or not. If it is not in a drop
	 * zone, it returns FALSE and no further processing is necessary.
	 * Otherwise, the handler returns TRUE. In this case, the handler must
	 * ensure that gtk_drag_finish() is called to let the source know that
	 * the drop is done. The call to gtk_drag_finish() can be done either
	 * directly or in a "drag-data-received" handler which gets
	 * triggered by calling gtk_drag_get_data() to receive the data for one
	 * or more of the supported targets.
	 */
	void addOnDragDrop(bool delegate(DragContext, gint, gint, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-drop" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-drop",
			cast(GCallback)&callBackDragDrop,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-drop"] = 1;
		}
		onDragDropListeners ~= dlg;
	}
	extern(C) static gboolean callBackDragDrop(GtkWidget* widgetStruct, GdkDragContext* context, gint x, gint y, guint time, Widget _widget)
	{
		foreach ( bool delegate(DragContext, gint, gint, guint, Widget) dlg ; _widget.onDragDropListeners )
		{
			if ( dlg(ObjectG.getDObject!(DragContext)(context), x, y, time, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(DragContext, Widget)[] onDragEndListeners;
	/**
	 * The ::drag-end signal is emitted on the drag source when a drag is
	 * finished. A typical reason to connect to this signal is to undo
	 * things done in "drag-begin".
	 */
	void addOnDragEnd(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-end",
			cast(GCallback)&callBackDragEnd,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-end"] = 1;
		}
		onDragEndListeners ~= dlg;
	}
	extern(C) static void callBackDragEnd(GtkWidget* widgetStruct, GdkDragContext* context, Widget _widget)
	{
		foreach ( void delegate(DragContext, Widget) dlg ; _widget.onDragEndListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), _widget);
		}
	}
	
	bool delegate(DragContext, GtkDragResult, Widget)[] onDragFailedListeners;
	/**
	 * The ::drag-failed signal is emitted on the drag source when a drag has
	 * failed. The signal handler may hook custom code to handle a failed DND
	 * operation based on the type of error, it returns TRUE is the failure has
	 * been already handled (not showing the default "drag operation failed"
	 * animation), otherwise it returns FALSE.
	 * TRUE if the failed drag operation has been already handled.
	 * Since 2.12
	 */
	void addOnDragFailed(bool delegate(DragContext, GtkDragResult, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-failed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-failed",
			cast(GCallback)&callBackDragFailed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-failed"] = 1;
		}
		onDragFailedListeners ~= dlg;
	}
	extern(C) static gboolean callBackDragFailed(GtkWidget* widgetStruct, GdkDragContext* context, GtkDragResult result, Widget _widget)
	{
		foreach ( bool delegate(DragContext, GtkDragResult, Widget) dlg ; _widget.onDragFailedListeners )
		{
			if ( dlg(ObjectG.getDObject!(DragContext)(context), result, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(DragContext, guint, Widget)[] onDragLeaveListeners;
	/**
	 * The ::drag-leave signal is emitted on the drop site when the cursor
	 * leaves the widget. A typical reason to connect to this signal is to
	 * undo things done in "drag-motion", e.g. undo highlighting
	 * with gtk_drag_unhighlight()
	 */
	void addOnDragLeave(void delegate(DragContext, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-leave" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-leave",
			cast(GCallback)&callBackDragLeave,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-leave"] = 1;
		}
		onDragLeaveListeners ~= dlg;
	}
	extern(C) static void callBackDragLeave(GtkWidget* widgetStruct, GdkDragContext* context, guint time, Widget _widget)
	{
		foreach ( void delegate(DragContext, guint, Widget) dlg ; _widget.onDragLeaveListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), time, _widget);
		}
	}
	
	bool delegate(DragContext, gint, gint, guint, Widget)[] onDragMotionListeners;
	/**
	 * The ::drag-motion signal is emitted on the drop site when the user
	 * moves the cursor over the widget during a drag. The signal handler
	 * must determine whether the cursor position is in a drop zone or not.
	 * If it is not in a drop zone, it returns FALSE and no further processing
	 * is necessary. Otherwise, the handler returns TRUE. In this case, the
	 * handler is responsible for providing the necessary information for
	 * displaying feedback to the user, by calling gdk_drag_status().
	 * If the decision whether the drop will be accepted or rejected can't be
	 * made based solely on the cursor position and the type of the data, the
	 * handler may inspect the dragged data by calling gtk_drag_get_data() and
	 * defer the gdk_drag_status() call to the "drag-data-received"
	 * handler. Note that you cannot not pass GTK_DEST_DEFAULT_DROP,
	 * GTK_DEST_DEFAULT_MOTION or GTK_DEST_DEFAULT_ALL to gtk_drag_dest_set()
	 * when using the drag-motion signal that way.
	 * Also note that there is no drag-enter signal. The drag receiver has to
	 * keep track of whether he has received any drag-motion signals since the
	 * last "drag-leave" and if not, treat the drag-motion signal as
	 * an "enter" signal. Upon an "enter", the handler will typically highlight
	 * the drop site with gtk_drag_highlight().
	 * $(DDOC_COMMENT example)
	 */
	void addOnDragMotion(bool delegate(DragContext, gint, gint, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-motion" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-motion",
			cast(GCallback)&callBackDragMotion,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-motion"] = 1;
		}
		onDragMotionListeners ~= dlg;
	}
	extern(C) static gboolean callBackDragMotion(GtkWidget* widgetStruct, GdkDragContext* context, gint x, gint y, guint time, Widget _widget)
	{
		foreach ( bool delegate(DragContext, gint, gint, guint, Widget) dlg ; _widget.onDragMotionListeners )
		{
			if ( dlg(ObjectG.getDObject!(DragContext)(context), x, y, time, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Context, Widget)[] onDrawListeners;
	/**
	 * This signal is emitted when a widget is supposed to render itself.
	 * The widget's top left corner must be painted at the origin of
	 * the passed in context and be sized to the values returned by
	 * gtk_widget_get_allocated_width() and
	 * gtk_widget_get_allocated_height().
	 * Signal handlers connected to this signal can modify the cairo
	 * context passed as cr in any way they like and don't need to
	 * restore it. The signal emission takes care of calling cairo_save()
	 * before and cairo_restore() after invoking the handler.
	 * The signal handler will get a cr with a clip region already set to the
	 * widget's dirty region, i.e. to the area that needs repainting. Complicated
	 * widgets that want to avoid redrawing themselves completely can get the full
	 * extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
	 * get a finer-grained representation of the dirty region with
	 * cairo_copy_clip_rectangle_list().
	 * TRUE to stop other handlers from being invoked for the event.
	 * % FALSE to propagate the event further.
	 * Since 3.0
	 */
	void addOnDraw(bool delegate(Context, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("draw" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"draw",
			cast(GCallback)&callBackDraw,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["draw"] = 1;
		}
		onDrawListeners ~= dlg;
	}
	extern(C) static gboolean callBackDraw(GtkWidget* widgetStruct, CairoContext* cr, Widget _widget)
	{
		foreach ( bool delegate(Context, Widget) dlg ; _widget.onDrawListeners )
		{
			if ( dlg(ObjectG.getDObject!(Context)(cr), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onEnterNotifyListeners;
	/**
	 * The ::enter-notify-event will be emitted when the pointer enters
	 * the widget's window.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_ENTER_NOTIFY_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnEnterNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("enter-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.ENTER_NOTIFY_MASK);
			Signals.connectData(
			getStruct(),
			"enter-notify-event",
			cast(GCallback)&callBackEnterNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["enter-notify-event"] = 1;
		}
		onEnterNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackEnterNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onEnterNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onListeners;
	/**
	 * The GTK+ main loop will emit three signals for each GDK event delivered
	 * to a widget: one generic ::event signal, another, more specific,
	 * signal that matches the type of event delivered (e.g.
	 * "key-press-event") and finally a generic
	 * "event-after" signal.
	 * TRUE to stop other handlers from being invoked for the event
	 * and to cancel the emission of the second specific ::event signal.
	 * FALSE to propagate the event further and to allow the emission of
	 * the second signal. The ::event-after signal is emitted regardless of
	 * the return value.
	 */
	void addOn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static gboolean callBack(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Event, Widget)[] onEventAfterListeners;
	/**
	 * After the emission of the "event" signal and (optionally)
	 * the second more specific signal, ::event-after will be emitted
	 * regardless of the previous two signals handlers return values.
	 */
	void addOnEventAfter(void delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("event-after" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event-after",
			cast(GCallback)&callBackEventAfter,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["event-after"] = 1;
		}
		onEventAfterListeners ~= dlg;
	}
	extern(C) static void callBackEventAfter(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( void delegate(Event, Widget) dlg ; _widget.onEventAfterListeners )
		{
			dlg(ObjectG.getDObject!(Event)(event), _widget);
		}
	}
	
	bool delegate(GtkDirectionType, Widget)[] onFocusListeners;
	/**
	 * TRUE to stop other handlers from being invoked for the event. FALSE to propagate the event further.
	 */
	void addOnFocus(bool delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus",
			cast(GCallback)&callBackFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus"] = 1;
		}
		onFocusListeners ~= dlg;
	}
	extern(C) static gboolean callBackFocus(GtkWidget* widgetStruct, GtkDirectionType direction, Widget _widget)
	{
		foreach ( bool delegate(GtkDirectionType, Widget) dlg ; _widget.onFocusListeners )
		{
			if ( dlg(direction, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onFocusInListeners;
	/**
	 * The ::focus-in-event signal will be emitted when the keyboard focus
	 * enters the widget's window.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_FOCUS_CHANGE_MASK mask.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnFocusIn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-in-event" in connectedSignals) )
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			Signals.connectData(
			getStruct(),
			"focus-in-event",
			cast(GCallback)&callBackFocusIn,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-in-event"] = 1;
		}
		onFocusInListeners ~= dlg;
	}
	extern(C) static gboolean callBackFocusIn(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onFocusInListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onFocusOutListeners;
	/**
	 * The ::focus-out-event signal will be emitted when the keyboard focus
	 * leaves the widget's window.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_FOCUS_CHANGE_MASK mask.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnFocusOut(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-out-event" in connectedSignals) )
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			Signals.connectData(
			getStruct(),
			"focus-out-event",
			cast(GCallback)&callBackFocusOut,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-out-event"] = 1;
		}
		onFocusOutListeners ~= dlg;
	}
	extern(C) static gboolean callBackFocusOut(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onFocusOutListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onGrabBrokenListeners;
	/**
	 * Emitted when a pointer or keyboard grab on a window belonging
	 * to widget gets broken.
	 * On X11, this happens when the grab window becomes unviewable
	 * (i.e. it or one of its ancestors is unmapped), or if the same
	 * application grabs the pointer or keyboard again.
	 * TRUE to stop other handlers from being invoked for
	 * the event. FALSE to propagate the event further.
	 * Since 2.8
	 */
	void addOnGrabBroken(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("grab-broken-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-broken-event",
			cast(GCallback)&callBackGrabBroken,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["grab-broken-event"] = 1;
		}
		onGrabBrokenListeners ~= dlg;
	}
	extern(C) static gboolean callBackGrabBroken(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onGrabBrokenListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onGrabFocusListeners;
	/**
	 */
	void addOnGrabFocus(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("grab-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-focus",
			cast(GCallback)&callBackGrabFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["grab-focus"] = 1;
		}
		onGrabFocusListeners ~= dlg;
	}
	extern(C) static void callBackGrabFocus(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onGrabFocusListeners )
		{
			dlg(_widget);
		}
	}
	
	void delegate(gboolean, Widget)[] onGrabNotifyListeners;
	/**
	 * The ::grab-notify signal is emitted when a widget becomes
	 * shadowed by a GTK+ grab (not a pointer or keyboard grab) on
	 * another widget, or when it becomes unshadowed due to a grab
	 * being removed.
	 * A widget is shadowed by a gtk_grab_add() when the topmost
	 * grab widget in the grab stack of its window group is not
	 * its ancestor.
	 * FALSE if the widget becomes shadowed, TRUE
	 * if it becomes unshadowed
	 */
	void addOnGrabNotify(void delegate(gboolean, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("grab-notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-notify",
			cast(GCallback)&callBackGrabNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["grab-notify"] = 1;
		}
		onGrabNotifyListeners ~= dlg;
	}
	extern(C) static void callBackGrabNotify(GtkWidget* widgetStruct, gboolean wasGrabbed, Widget _widget)
	{
		foreach ( void delegate(gboolean, Widget) dlg ; _widget.onGrabNotifyListeners )
		{
			dlg(wasGrabbed, _widget);
		}
	}
	
	void delegate(Widget)[] onHideListeners;
	/**
	 */
	void addOnHide(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("hide" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"hide",
			cast(GCallback)&callBackHide,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["hide"] = 1;
		}
		onHideListeners ~= dlg;
	}
	extern(C) static void callBackHide(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onHideListeners )
		{
			dlg(_widget);
		}
	}
	
	void delegate(Widget, Widget)[] onHierarchyChangedListeners;
	/**
	 * The ::hierarchy-changed signal is emitted when the
	 * anchored state of a widget changes. A widget is
	 * anchored when its toplevel
	 * ancestor is a GtkWindow. This signal is emitted when
	 * a widget changes from un-anchored to anchored or vice-versa.
	 */
	void addOnHierarchyChanged(void delegate(Widget, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("hierarchy-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"hierarchy-changed",
			cast(GCallback)&callBackHierarchyChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["hierarchy-changed"] = 1;
		}
		onHierarchyChangedListeners ~= dlg;
	}
	extern(C) static void callBackHierarchyChanged(GtkWidget* widgetStruct, GtkWidget* previousToplevel, Widget _widget)
	{
		foreach ( void delegate(Widget, Widget) dlg ; _widget.onHierarchyChangedListeners )
		{
			dlg(ObjectG.getDObject!(Widget)(previousToplevel), _widget);
		}
	}
	
	bool delegate(Event, Widget)[] onKeyPressListeners;
	/**
	 * The ::key-press-event signal is emitted when a key is pressed. The signal
	 * emission will reoccur at the key-repeat rate when the key is kept pressed.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_KEY_PRESS_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnKeyPress(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("key-press-event" in connectedSignals) )
		{
			addEvents(EventMask.KEY_PRESS_MASK);
			Signals.connectData(
			getStruct(),
			"key-press-event",
			cast(GCallback)&callBackKeyPress,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["key-press-event"] = 1;
		}
		onKeyPressListeners ~= dlg;
	}
	extern(C) static gboolean callBackKeyPress(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onKeyPressListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onKeyReleaseListeners;
	/**
	 * The ::key-release-event signal is emitted when a key is released.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_KEY_RELEASE_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnKeyRelease(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("key-release-event" in connectedSignals) )
		{
			addEvents(EventMask.KEY_RELEASE_MASK);
			Signals.connectData(
			getStruct(),
			"key-release-event",
			cast(GCallback)&callBackKeyRelease,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["key-release-event"] = 1;
		}
		onKeyReleaseListeners ~= dlg;
	}
	extern(C) static gboolean callBackKeyRelease(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onKeyReleaseListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(GtkDirectionType, Widget)[] onKeynavFailedListeners;
	/**
	 * Gets emitted if keyboard navigation fails.
	 * See gtk_widget_keynav_failed() for details.
	 * TRUE if stopping keyboard navigation is fine, FALSE
	 * if the emitting widget should try to handle the keyboard
	 * navigation attempt in its parent container(s).
	 * Since 2.12
	 */
	void addOnKeynavFailed(bool delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("keynav-failed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"keynav-failed",
			cast(GCallback)&callBackKeynavFailed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["keynav-failed"] = 1;
		}
		onKeynavFailedListeners ~= dlg;
	}
	extern(C) static gboolean callBackKeynavFailed(GtkWidget* widgetStruct, GtkDirectionType direction, Widget _widget)
	{
		foreach ( bool delegate(GtkDirectionType, Widget) dlg ; _widget.onKeynavFailedListeners )
		{
			if ( dlg(direction, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onLeaveNotifyListeners;
	/**
	 * The ::leave-notify-event will be emitted when the pointer leaves
	 * the widget's window.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_LEAVE_NOTIFY_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnLeaveNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("leave-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.LEAVE_NOTIFY_MASK);
			Signals.connectData(
			getStruct(),
			"leave-notify-event",
			cast(GCallback)&callBackLeaveNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["leave-notify-event"] = 1;
		}
		onLeaveNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackLeaveNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onLeaveNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onMapListeners;
	/**
	 */
	void addOnMap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("map" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"map",
			cast(GCallback)&callBackMap,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["map"] = 1;
		}
		onMapListeners ~= dlg;
	}
	extern(C) static void callBackMap(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onMapListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onMapEventListeners;
	/**
	 * The ::map-event signal will be emitted when the widget's window is
	 * mapped. A window is mapped when it becomes visible on the screen.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_STRUCTURE_MASK mask. GDK will enable this mask
	 * automatically for all new windows.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnMapEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("map-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"map-event",
			cast(GCallback)&callBackMapEvent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["map-event"] = 1;
		}
		onMapEventListeners ~= dlg;
	}
	extern(C) static gboolean callBackMapEvent(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onMapEventListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gboolean, Widget)[] onMnemonicActivateListeners;
	/**
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnMnemonicActivate(bool delegate(gboolean, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mnemonic-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mnemonic-activate",
			cast(GCallback)&callBackMnemonicActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mnemonic-activate"] = 1;
		}
		onMnemonicActivateListeners ~= dlg;
	}
	extern(C) static gboolean callBackMnemonicActivate(GtkWidget* widgetStruct, gboolean arg1, Widget _widget)
	{
		foreach ( bool delegate(gboolean, Widget) dlg ; _widget.onMnemonicActivateListeners )
		{
			if ( dlg(arg1, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onMotionNotifyListeners;
	/**
	 * The ::motion-notify-event signal is emitted when the pointer moves
	 * over the widget's GdkWindow.
	 * To receive this signal, the GdkWindow associated to the widget
	 * needs to enable the GDK_POINTER_MOTION_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnMotionNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("motion-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.POINTER_MOTION_MASK);
			Signals.connectData(
			getStruct(),
			"motion-notify-event",
			cast(GCallback)&callBackMotionNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["motion-notify-event"] = 1;
		}
		onMotionNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackMotionNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onMotionNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkDirectionType, Widget)[] onMoveFocusListeners;
	/**
	 */
	void addOnMoveFocus(void delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus",
			cast(GCallback)&callBackMoveFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-focus"] = 1;
		}
		onMoveFocusListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocus(GtkWidget* widgetStruct, GtkDirectionType direction, Widget _widget)
	{
		foreach ( void delegate(GtkDirectionType, Widget) dlg ; _widget.onMoveFocusListeners )
		{
			dlg(direction, _widget);
		}
	}
	
	void delegate(Widget, Widget)[] onParentSetListeners;
	/**
	 * The ::parent-set signal is emitted when a new parent
	 * has been set on a widget.
	 */
	void addOnParentSet(void delegate(Widget, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("parent-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"parent-set",
			cast(GCallback)&callBackParentSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["parent-set"] = 1;
		}
		onParentSetListeners ~= dlg;
	}
	extern(C) static void callBackParentSet(GtkWidget* widgetStruct, GtkWidget* oldParent, Widget _widget)
	{
		foreach ( void delegate(Widget, Widget) dlg ; _widget.onParentSetListeners )
		{
			dlg(ObjectG.getDObject!(Widget)(oldParent), _widget);
		}
	}
	
	bool delegate(Widget)[] onPopupMenuListeners;
	/**
	 * This signal gets emitted whenever a widget should pop up a context
	 * menu. This usually happens through the standard key binding mechanism;
	 * by pressing a certain key while a widget is focused, the user can cause
	 * the widget to pop up a menu. For example, the GtkEntry widget creates
	 * a menu with clipboard commands. See the section called “Implement GtkWidget::popup_menu”
	 * for an example of how to use this signal.
	 * TRUE if a menu was activated
	 */
	void addOnPopupMenu(bool delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popup-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup-menu",
			cast(GCallback)&callBackPopupMenu,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popup-menu"] = 1;
		}
		onPopupMenuListeners ~= dlg;
	}
	extern(C) static gboolean callBackPopupMenu(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( bool delegate(Widget) dlg ; _widget.onPopupMenuListeners )
		{
			if ( dlg(_widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onPropertyNotifyListeners;
	/**
	 * The ::property-notify-event signal will be emitted when a property on
	 * the widget's window has been changed or deleted.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_PROPERTY_CHANGE_MASK mask.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnPropertyNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("property-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.PROPERTY_CHANGE_MASK);
			Signals.connectData(
			getStruct(),
			"property-notify-event",
			cast(GCallback)&callBackPropertyNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["property-notify-event"] = 1;
		}
		onPropertyNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackPropertyNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onPropertyNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onProximityInListeners;
	/**
	 * To receive this signal the GdkWindow associated to the widget needs
	 * to enable the GDK_PROXIMITY_IN_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnProximityIn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("proximity-in-event" in connectedSignals) )
		{
			addEvents(EventMask.PROXIMITY_IN_MASK);
			Signals.connectData(
			getStruct(),
			"proximity-in-event",
			cast(GCallback)&callBackProximityIn,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["proximity-in-event"] = 1;
		}
		onProximityInListeners ~= dlg;
	}
	extern(C) static gboolean callBackProximityIn(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onProximityInListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onProximityOutListeners;
	/**
	 * To receive this signal the GdkWindow associated to the widget needs
	 * to enable the GDK_PROXIMITY_OUT_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnProximityOut(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("proximity-out-event" in connectedSignals) )
		{
			addEvents(EventMask.PROXIMITY_OUT_MASK);
			Signals.connectData(
			getStruct(),
			"proximity-out-event",
			cast(GCallback)&callBackProximityOut,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["proximity-out-event"] = 1;
		}
		onProximityOutListeners ~= dlg;
	}
	extern(C) static gboolean callBackProximityOut(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onProximityOutListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gint, gint, gboolean, Tooltip, Widget)[] onQueryTooltipListeners;
	/**
	 * Emitted when "has-tooltip" is TRUE and the "gtk-tooltip-timeout"
	 * has expired with the cursor hovering "above" widget; or emitted when widget got
	 * focus in keyboard mode.
	 * Using the given coordinates, the signal handler should determine
	 * whether a tooltip should be shown for widget. If this is the case
	 * TRUE should be returned, FALSE otherwise. Note that if
	 * keyboard_mode is TRUE, the values of x and y are undefined and
	 * should not be used.
	 * The signal handler is free to manipulate tooltip with the therefore
	 * destined function calls.
	 * TRUE if the tooltip was trigged using the keyboard
	 * TRUE if tooltip should be shown right now, FALSE otherwise.
	 * Since 2.12
	 */
	void addOnQueryTooltip(bool delegate(gint, gint, gboolean, Tooltip, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip",
			cast(GCallback)&callBackQueryTooltip,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip"] = 1;
		}
		onQueryTooltipListeners ~= dlg;
	}
	extern(C) static gboolean callBackQueryTooltip(GtkWidget* widgetStruct, gint x, gint y, gboolean keyboardMode, GtkTooltip* tooltip, Widget _widget)
	{
		foreach ( bool delegate(gint, gint, gboolean, Tooltip, Widget) dlg ; _widget.onQueryTooltipListeners )
		{
			if ( dlg(x, y, keyboardMode, ObjectG.getDObject!(Tooltip)(tooltip), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onRealizeListeners;
	/**
	 */
	void addOnRealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("realize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"realize",
			cast(GCallback)&callBackRealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["realize"] = 1;
		}
		onRealizeListeners ~= dlg;
	}
	extern(C) static void callBackRealize(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onRealizeListeners )
		{
			dlg(_widget);
		}
	}
	
	void delegate(Screen, Widget)[] onScreenChangedListeners;
	/**
	 * The ::screen-changed signal gets emitted when the
	 * screen of a widget has changed.
	 */
	void addOnScreenChanged(void delegate(Screen, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("screen-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"screen-changed",
			cast(GCallback)&callBackScreenChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["screen-changed"] = 1;
		}
		onScreenChangedListeners ~= dlg;
	}
	extern(C) static void callBackScreenChanged(GtkWidget* widgetStruct, GdkScreen* previousScreen, Widget _widget)
	{
		foreach ( void delegate(Screen, Widget) dlg ; _widget.onScreenChangedListeners )
		{
			dlg(ObjectG.getDObject!(Screen)(previousScreen), _widget);
		}
	}
	
	bool delegate(Event, Widget)[] onScrollListeners;
	/**
	 * The ::scroll-event signal is emitted when a button in the 4 to 7
	 * range is pressed. Wheel mice are usually configured to generate
	 * button press events for buttons 4 and 5 when the wheel is turned.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_SCROLL_MASK mask.
	 * This signal will be sent to the grab widget if there is one.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnScroll(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("scroll-event" in connectedSignals) )
		{
			addEvents(EventMask.SCROLL_MASK);
			Signals.connectData(
			getStruct(),
			"scroll-event",
			cast(GCallback)&callBackScroll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["scroll-event"] = 1;
		}
		onScrollListeners ~= dlg;
	}
	extern(C) static gboolean callBackScroll(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onScrollListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onSelectionClearListeners;
	/**
	 * The ::selection-clear-event signal will be emitted when the
	 * the widget's window has lost ownership of a selection.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnSelectionClear(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-clear-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-clear-event",
			cast(GCallback)&callBackSelectionClear,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-clear-event"] = 1;
		}
		onSelectionClearListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectionClear(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onSelectionClearListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(SelectionData, guint, guint, Widget)[] onSelectionGetListeners;
	/**
	 */
	void addOnSelectionGet(void delegate(SelectionData, guint, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-get" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-get",
			cast(GCallback)&callBackSelectionGet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-get"] = 1;
		}
		onSelectionGetListeners ~= dlg;
	}
	extern(C) static void callBackSelectionGet(GtkWidget* widgetStruct, GtkSelectionData* data, guint info, guint time, Widget _widget)
	{
		foreach ( void delegate(SelectionData, guint, guint, Widget) dlg ; _widget.onSelectionGetListeners )
		{
			dlg(ObjectG.getDObject!(SelectionData)(data), info, time, _widget);
		}
	}
	
	bool delegate(Event, Widget)[] onSelectionNotifyListeners;
	/**
	 * TRUE to stop other handlers from being invoked for the event. FALSE to propagate the event further.
	 */
	void addOnSelectionNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-notify-event",
			cast(GCallback)&callBackSelectionNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-notify-event"] = 1;
		}
		onSelectionNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectionNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onSelectionNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(SelectionData, guint, Widget)[] onSelectionReceivedListeners;
	/**
	 */
	void addOnSelectionReceived(void delegate(SelectionData, guint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-received" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-received",
			cast(GCallback)&callBackSelectionReceived,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-received"] = 1;
		}
		onSelectionReceivedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionReceived(GtkWidget* widgetStruct, GtkSelectionData* data, guint time, Widget _widget)
	{
		foreach ( void delegate(SelectionData, guint, Widget) dlg ; _widget.onSelectionReceivedListeners )
		{
			dlg(ObjectG.getDObject!(SelectionData)(data), time, _widget);
		}
	}
	
	bool delegate(Event, Widget)[] onSelectionRequestListeners;
	/**
	 * The ::selection-request-event signal will be emitted when
	 * another client requests ownership of the selection owned by
	 * the widget's window.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnSelectionRequest(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-request-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-request-event",
			cast(GCallback)&callBackSelectionRequest,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-request-event"] = 1;
		}
		onSelectionRequestListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectionRequest(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onSelectionRequestListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onShowListeners;
	/**
	 */
	void addOnShow(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show",
			cast(GCallback)&callBackShow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show"] = 1;
		}
		onShowListeners ~= dlg;
	}
	extern(C) static void callBackShow(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onShowListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(GtkWidgetHelpType, Widget)[] onShowHelpListeners;
	/**
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnShowHelp(bool delegate(GtkWidgetHelpType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-help" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-help",
			cast(GCallback)&callBackShowHelp,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-help"] = 1;
		}
		onShowHelpListeners ~= dlg;
	}
	extern(C) static gboolean callBackShowHelp(GtkWidget* widgetStruct, GtkWidgetHelpType helpType, Widget _widget)
	{
		foreach ( bool delegate(GtkWidgetHelpType, Widget) dlg ; _widget.onShowHelpListeners )
		{
			if ( dlg(helpType, _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GdkRectangle*, Widget)[] onSizeAllocateListeners;
	/**
	 */
	void addOnSizeAllocate(void delegate(GdkRectangle*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("size-allocate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-allocate",
			cast(GCallback)&callBackSizeAllocate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["size-allocate"] = 1;
		}
		onSizeAllocateListeners ~= dlg;
	}
	extern(C) static void callBackSizeAllocate(GtkWidget* widgetStruct, GdkRectangle* allocation, Widget _widget)
	{
		foreach ( void delegate(GdkRectangle*, Widget) dlg ; _widget.onSizeAllocateListeners )
		{
			dlg(allocation, _widget);
		}
	}
	
	void delegate(GtkStateType, Widget)[] onStateChangedListeners;
	/**
	 * Warning
	 * GtkWidget::state-changed is deprecated and should not be used in newly-written code. 3.0. Use "state-flags-changed" instead.
	 * The ::state-changed signal is emitted when the widget state changes.
	 * See gtk_widget_get_state().
	 */
	void addOnStateChanged(void delegate(GtkStateType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("state-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"state-changed",
			cast(GCallback)&callBackStateChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["state-changed"] = 1;
		}
		onStateChangedListeners ~= dlg;
	}
	extern(C) static void callBackStateChanged(GtkWidget* widgetStruct, GtkStateType state, Widget _widget)
	{
		foreach ( void delegate(GtkStateType, Widget) dlg ; _widget.onStateChangedListeners )
		{
			dlg(state, _widget);
		}
	}
	
	void delegate(GtkStateFlags, Widget)[] onStateFlagsChangedListeners;
	/**
	 * The ::state-flags-changed signal is emitted when the widget state
	 * changes, see gtk_widget_get_state_flags().
	 * Since 3.0
	 */
	void addOnStateFlagsChanged(void delegate(GtkStateFlags, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("state-flags-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"state-flags-changed",
			cast(GCallback)&callBackStateFlagsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["state-flags-changed"] = 1;
		}
		onStateFlagsChangedListeners ~= dlg;
	}
	extern(C) static void callBackStateFlagsChanged(GtkWidget* widgetStruct, GtkStateFlags flags, Widget _widget)
	{
		foreach ( void delegate(GtkStateFlags, Widget) dlg ; _widget.onStateFlagsChangedListeners )
		{
			dlg(flags, _widget);
		}
	}
	
	void delegate(Style, Widget)[] onStyleSetListeners;
	/**
	 * Warning
	 * GtkWidget::style-set has been deprecated since version 3.0 and should not be used in newly-written code. Use the "style-updated" signal
	 * The ::style-set signal is emitted when a new style has been set
	 * on a widget. Note that style-modifying functions like
	 * gtk_widget_modify_base() also cause this signal to be emitted.
	 * Note that this signal is emitted for changes to the deprecated
	 * GtkStyle. To track changes to the GtkStyleContext associated
	 * with a widget, use the "style-updated" signal.
	 */
	void addOnStyleSet(void delegate(Style, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("style-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"style-set",
			cast(GCallback)&callBackStyleSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["style-set"] = 1;
		}
		onStyleSetListeners ~= dlg;
	}
	extern(C) static void callBackStyleSet(GtkWidget* widgetStruct, GtkStyle* previousStyle, Widget _widget)
	{
		foreach ( void delegate(Style, Widget) dlg ; _widget.onStyleSetListeners )
		{
			dlg(ObjectG.getDObject!(Style)(previousStyle), _widget);
		}
	}
	
	void delegate(Widget)[] onStyleUpdatedListeners;
	/**
	 * The ::style-updated signal is emitted when the GtkStyleContext
	 * of a widget is changed. Note that style-modifying functions like
	 * gtk_widget_override_color() also cause this signal to be emitted.
	 * Since 3.0
	 */
	void addOnStyleUpdated(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("style-updated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"style-updated",
			cast(GCallback)&callBackStyleUpdated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["style-updated"] = 1;
		}
		onStyleUpdatedListeners ~= dlg;
	}
	extern(C) static void callBackStyleUpdated(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onStyleUpdatedListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onTouchListeners;
	/**
	 */
	void addOnTouch(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("touch-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"touch-event",
			cast(GCallback)&callBackTouch,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["touch-event"] = 1;
		}
		onTouchListeners ~= dlg;
	}
	extern(C) static gboolean callBackTouch(GtkWidget* widgetStruct, GdkEvent* arg1, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onTouchListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(arg1), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onUnmapListeners;
	/**
	 */
	void addOnUnmap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unmap" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unmap",
			cast(GCallback)&callBackUnmap,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unmap"] = 1;
		}
		onUnmapListeners ~= dlg;
	}
	extern(C) static void callBackUnmap(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onUnmapListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onUnmapEventListeners;
	/**
	 * The ::unmap-event signal will be emitted when the widget's window is
	 * unmapped. A window is unmapped when it becomes invisible on the screen.
	 * To receive this signal, the GdkWindow associated to the widget needs
	 * to enable the GDK_STRUCTURE_MASK mask. GDK will enable this mask
	 * automatically for all new windows.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnUnmapEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unmap-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unmap-event",
			cast(GCallback)&callBackUnmapEvent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unmap-event"] = 1;
		}
		onUnmapEventListeners ~= dlg;
	}
	extern(C) static gboolean callBackUnmapEvent(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onUnmapEventListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Widget)[] onUnrealizeListeners;
	/**
	 */
	void addOnUnrealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unrealize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unrealize",
			cast(GCallback)&callBackUnrealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unrealize"] = 1;
		}
		onUnrealizeListeners ~= dlg;
	}
	extern(C) static void callBackUnrealize(GtkWidget* widgetStruct, Widget _widget)
	{
		foreach ( void delegate(Widget) dlg ; _widget.onUnrealizeListeners )
		{
			dlg(_widget);
		}
	}
	
	bool delegate(Event, Widget)[] onVisibilityNotifyListeners;
	/**
	 * The ::visibility-notify-event will be emitted when the widget's window
	 * is obscured or unobscured.
	 * To receive this signal the GdkWindow associated to the widget needs
	 * to enable the GDK_VISIBILITY_NOTIFY_MASK mask.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 */
	void addOnVisibilityNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("visibility-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.VISIBILITY_NOTIFY_MASK);
			Signals.connectData(
			getStruct(),
			"visibility-notify-event",
			cast(GCallback)&callBackVisibilityNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["visibility-notify-event"] = 1;
		}
		onVisibilityNotifyListeners ~= dlg;
	}
	extern(C) static gboolean callBackVisibilityNotify(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onVisibilityNotifyListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Event, Widget)[] onWindowStateListeners;
	/**
	 * The ::window-state-event will be emitted when the state of the
	 * toplevel window associated to the widget changes.
	 * To receive this signal the GdkWindow associated to the widget
	 * needs to enable the GDK_STRUCTURE_MASK mask. GDK will enable
	 * this mask automatically for all new windows.
	 * TRUE to stop other handlers from being invoked for the
	 * event. FALSE to propagate the event further.
	 */
	void addOnWindowState(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("window-state-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"window-state-event",
			cast(GCallback)&callBackWindowState,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["window-state-event"] = 1;
		}
		onWindowStateListeners ~= dlg;
	}
	extern(C) static gboolean callBackWindowState(GtkWidget* widgetStruct, GdkEvent* event, Widget _widget)
	{
		foreach ( bool delegate(Event, Widget) dlg ; _widget.onWindowStateListeners )
		{
			if ( dlg(ObjectG.getDObject!(Event)(event), _widget) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Destroys a widget.
	 * When a widget is
	 * destroyed, it will break any references it holds to other objects.
	 * If the widget is inside a container, the widget will be removed
	 * from the container. If the widget is a toplevel (derived from
	 * GtkWindow), it will be removed from the list of toplevels, and the
	 * reference GTK+ holds to it will be removed. Removing a
	 * widget from its container or the list of toplevels results in the
	 * widget being finalized, unless you've added additional references
	 * to the widget with g_object_ref().
	 * In most cases, only toplevel widgets (windows) require explicit
	 * destruction, because when you destroy a toplevel its children will
	 * be destroyed as well.
	 */
	public void destroy()
	{
		// void gtk_widget_destroy (GtkWidget *widget);
		gtk_widget_destroy(gtkWidget);
	}
	
	/**
	 * Returns whether the widget is currently being destroyed.
	 * This information can sometimes be used to avoid doing
	 * unnecessary work.
	 * Returns: TRUE if widget is being destroyed
	 */
	public int inDestruction()
	{
		// gboolean gtk_widget_in_destruction (GtkWidget *widget);
		return gtk_widget_in_destruction(gtkWidget);
	}
	
	/**
	 * This function sets *widget_pointer to NULL if widget_pointer !=
	 * NULL. It's intended to be used as a callback connected to the
	 * "destroy" signal of a widget. You connect gtk_widget_destroyed()
	 * as a signal handler, and pass the address of your widget variable
	 * as user data. Then when the widget is destroyed, the variable will
	 * be set to NULL. Useful for example to avoid multiple copies
	 * of the same dialog.
	 * Params:
	 * widget = a GtkWidget
	 * widgetPointer = address of a variable that contains widget. [inout][transfer none]
	 */
	public void destroyed(ref Widget widgetPointer)
	{
		// void gtk_widget_destroyed (GtkWidget *widget,  GtkWidget **widget_pointer);
		GtkWidget* outwidgetPointer = (widgetPointer is null) ? null : widgetPointer.getWidgetStruct();
		
		gtk_widget_destroyed(gtkWidget, &outwidgetPointer);
		
		widgetPointer = ObjectG.getDObject!(Widget)(outwidgetPointer);
	}
	
	/**
	 * This function is only for use in widget implementations.
	 * Should be called by implementations of the remove method
	 * on GtkContainer, to dissociate a child from the container.
	 */
	public void unparent()
	{
		// void gtk_widget_unparent (GtkWidget *widget);
		gtk_widget_unparent(gtkWidget);
	}
	
	/**
	 * Flags a widget to be displayed. Any widget that isn't shown will
	 * not appear on the screen. If you want to show all the widgets in a
	 * container, it's easier to call gtk_widget_show_all() on the
	 * container, instead of individually showing the widgets.
	 * Remember that you have to show the containers containing a widget,
	 * in addition to the widget itself, before it will appear onscreen.
	 * When a toplevel container is shown, it is immediately realized and
	 * mapped; other shown widgets are realized and mapped when their
	 * toplevel container is realized and mapped.
	 */
	public void show()
	{
		// void gtk_widget_show (GtkWidget *widget);
		gtk_widget_show(gtkWidget);
	}
	
	/**
	 * Shows a widget. If the widget is an unmapped toplevel widget
	 * (i.e. a GtkWindow that has not yet been shown), enter the main
	 * loop and wait for the window to actually be mapped. Be careful;
	 * because the main loop is running, anything can happen during
	 * this function.
	 */
	public void showNow()
	{
		// void gtk_widget_show_now (GtkWidget *widget);
		gtk_widget_show_now(gtkWidget);
	}
	
	/**
	 * Reverses the effects of gtk_widget_show(), causing the widget to be
	 * hidden (invisible to the user).
	 */
	public void hide()
	{
		// void gtk_widget_hide (GtkWidget *widget);
		gtk_widget_hide(gtkWidget);
	}
	
	/**
	 * Recursively shows a widget, and any child widgets (if the widget is
	 * a container).
	 */
	public void showAll()
	{
		// void gtk_widget_show_all (GtkWidget *widget);
		gtk_widget_show_all(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations. Causes
	 * a widget to be mapped if it isn't already.
	 */
	public void map()
	{
		// void gtk_widget_map (GtkWidget *widget);
		gtk_widget_map(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations. Causes
	 * a widget to be unmapped if it's currently mapped.
	 */
	public void unmap()
	{
		// void gtk_widget_unmap (GtkWidget *widget);
		gtk_widget_unmap(gtkWidget);
	}
	
	/**
	 * Creates the GDK (windowing system) resources associated with a
	 * widget. For example, widget->window will be created when a widget
	 * is realized. Normally realization happens implicitly; if you show
	 * a widget and all its parent containers, then the widget will be
	 * realized and mapped automatically.
	 * Realizing a widget requires all
	 * the widget's parent widgets to be realized; calling
	 * gtk_widget_realize() realizes the widget's parents in addition to
	 * widget itself. If a widget is not yet inside a toplevel window
	 * when you realize it, bad things will happen.
	 * This function is primarily used in widget implementations, and
	 * isn't very useful otherwise. Many times when you think you might
	 * need it, a better approach is to connect to a signal that will be
	 * called after the widget is realized automatically, such as
	 * "draw". Or simply g_signal_connect() to the
	 * "realize" signal.
	 */
	public void realize()
	{
		// void gtk_widget_realize (GtkWidget *widget);
		gtk_widget_realize(gtkWidget);
	}
	
	/**
	 * This function is only useful in widget implementations.
	 * Causes a widget to be unrealized (frees all GDK resources
	 * associated with the widget, such as widget->window).
	 */
	public void unrealize()
	{
		// void gtk_widget_unrealize (GtkWidget *widget);
		gtk_widget_unrealize(gtkWidget);
	}
	
	/**
	 * Draws widget to cr. The top left corner of the widget will be
	 * drawn to the currently set origin point of cr.
	 * You should pass a cairo context as cr argument that is in an
	 * original state. Otherwise the resulting drawing is undefined. For
	 * example changing the operator using cairo_set_operator() or the
	 * line width using cairo_set_line_width() might have unwanted side
	 * effects.
	 * You may however change the context's transform matrix - like with
	 * cairo_scale(), cairo_translate() or cairo_set_matrix() and clip
	 * region with cairo_clip() prior to calling this function. Also, it
	 * is fine to modify the context with cairo_save() and
	 * cairo_push_group() prior to calling this function.
	 * Note
	 * Special purpose widgets may contain special code for
	 * rendering to the screen and might appear differently on screen
	 * and when rendered using gtk_widget_draw().
	 * Params:
	 * cr = a cairo context to draw to
	 * Since 3.0
	 */
	public void draw(Context cr)
	{
		// void gtk_widget_draw (GtkWidget *widget,  cairo_t *cr);
		gtk_widget_draw(gtkWidget, (cr is null) ? null : cr.getContextStruct());
	}
	
	/**
	 * Equivalent to calling gtk_widget_queue_draw_area() for the
	 * entire area of a widget.
	 */
	public void queueDraw()
	{
		// void gtk_widget_queue_draw (GtkWidget *widget);
		gtk_widget_queue_draw(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations.
	 * Flags a widget to have its size renegotiated; should
	 * be called when a widget for some reason has a new size request.
	 * For example, when you change the text in a GtkLabel, GtkLabel
	 * queues a resize to ensure there's enough space for the new text.
	 * Note
	 * You cannot call gtk_widget_queue_resize() on a widget
	 * from inside its implementation of the GtkWidgetClass::size_allocate
	 * virtual method. Calls to gtk_widget_queue_resize() from inside
	 * GtkWidgetClass::size_allocate will be silently ignored.
	 */
	public void queueResize()
	{
		// void gtk_widget_queue_resize (GtkWidget *widget);
		gtk_widget_queue_resize(gtkWidget);
	}
	
	/**
	 * This function works like gtk_widget_queue_resize(),
	 * except that the widget is not invalidated.
	 * Since 2.4
	 */
	public void queueResizeNoRedraw()
	{
		// void gtk_widget_queue_resize_no_redraw (GtkWidget *widget);
		gtk_widget_queue_resize_no_redraw(gtkWidget);
	}
	
	/**
	 * Obtains the frame clock for a widget. The frame clock is a global
	 * "ticker" that can be used to drive animations and repaints. The
	 * most common reason to get the frame clock is to call
	 * gdk_frame_clock_get_frame_time(), in order to get a time to use for
	 * animating. For example you might record the start of the animation
	 * with an initial value from gdk_frame_clock_get_frame_time(), and
	 * then update the animation by calling
	 * gdk_frame_clock_get_frame_time() again during each repaint.
	 * gdk_frame_clock_request_phase() will result in a new frame on the
	 * clock, but won't necessarily repaint any widgets. To repaint a
	 * widget, you have to use gtk_widget_queue_draw() which invalidates
	 * the widget (thus scheduling it to receive a draw on the next
	 * frame). gtk_widget_queue_draw() will also end up requesting a frame
	 * on the appropriate frame clock.
	 * A widget's frame clock will not change while the widget is
	 * mapped. Reparenting a widget (which implies a temporary unmap) can
	 * change the widget's frame clock.
	 * Unrealized widgets do not have a frame clock.
	 * Returns: a GdkFrameClock (or NULL if widget is unrealized). [transfer none] Since 3.0
	 */
	public FrameClock getFrameClock()
	{
		// GdkFrameClock * gtk_widget_get_frame_clock (GtkWidget *widget);
		auto p = gtk_widget_get_frame_clock(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) p);
	}
	
	/**
	 * Queues a animation frame update and adds a callback to be called
	 * before each frame. Until the tick callback is removed, it will be
	 * called frequently (usually at the frame rate of the output device
	 * or as quickly as the application an be repainted, whichever is
	 * slower). For this reason, is most suitable for handling graphics
	 * that change every frame or every few frames. The tick callback does
	 * not automatically imply a relayout or repaint. If you want a
	 * repaint or relayout, and aren't changing widget properties that
	 * would trigger that (for example, changing the text of a GtkLabel),
	 * then you will have to call gtk_widget_queue_resize() or
	 * gtk_widget_queue_draw_area() yourself.
	 * gdk_frame_clock_get_frame_time() should generally be used for timing
	 * continuous animations and
	 * gdk_frame_timings_get_predicted_presentation_time() if you are
	 * trying to display isolated frames at particular times.
	 * This is a more convenient alternative to connecting directly to the
	 * "update" signal of GdkFrameClock, since you don't
	 * have to worry about when a GdkFrameClock is assigned to a widget.
	 * Params:
	 * callback = function to call for updating animations
	 * userData = data to pass to callback
	 * notify = function to call to free user_data when the callback is removed.
	 * Returns: an id for the connection of this callback. Remove the callback by passing it to gtk_widget_remove_tick_callback() Since 3.8
	 */
	public uint addTickCallback(GtkTickCallback callback, void* userData, GDestroyNotify notify)
	{
		// guint gtk_widget_add_tick_callback (GtkWidget *widget,  GtkTickCallback callback,  gpointer user_data,  GDestroyNotify notify);
		return gtk_widget_add_tick_callback(gtkWidget, callback, userData, notify);
	}
	
	/**
	 * Removes a tick callback previously registered with
	 * gtk_widget_add_tick_callback().
	 * Params:
	 * id = an id returned by gtk_widget_add_tick_callback()
	 * Since 3.8
	 */
	public void removeTickCallback(uint id)
	{
		// void gtk_widget_remove_tick_callback (GtkWidget *widget,  guint id);
		gtk_widget_remove_tick_callback(gtkWidget, id);
	}
	
	/**
	 * Warning
	 * gtk_widget_size_request has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_get_preferred_size() instead.
	 * This function is typically used when implementing a GtkContainer
	 * subclass. Obtains the preferred size of a widget. The container
	 * uses this information to arrange its child widgets and decide what
	 * size allocations to give them with gtk_widget_size_allocate().
	 * You can also call this function from an application, with some
	 * caveats. Most notably, getting a size request requires the widget
	 * to be associated with a screen, because font information may be
	 * needed. Multihead-aware applications should keep this in mind.
	 * Also remember that the size request is not necessarily the size
	 * a widget will actually be allocated.
	 * Params:
	 * requisition = a GtkRequisition to be filled in. [out]
	 */
	public void sizeRequest(out GtkRequisition requisition)
	{
		// void gtk_widget_size_request (GtkWidget *widget,  GtkRequisition *requisition);
		gtk_widget_size_request(gtkWidget, &requisition);
	}
	
	/**
	 * Warning
	 * gtk_widget_get_child_requisition has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_get_preferred_size() instead.
	 * This function is only for use in widget implementations. Obtains
	 * widget->requisition, unless someone has forced a particular
	 * geometry on the widget (e.g. with gtk_widget_set_size_request()),
	 * in which case it returns that geometry instead of the widget's
	 * requisition.
	 * This function differs from gtk_widget_size_request() in that
	 * it retrieves the last size request value from widget->requisition,
	 * while gtk_widget_size_request() actually calls the "size_request" method
	 * on widget to compute the size request and fill in widget->requisition,
	 * and only then returns widget->requisition.
	 * Because this function does not call the "size_request" method, it
	 * can only be used when you know that widget->requisition is
	 * up-to-date, that is, gtk_widget_size_request() has been called
	 * since the last time a resize was queued. In general, only container
	 * implementations have this information; applications should use
	 * gtk_widget_size_request().
	 * Params:
	 * requisition = a GtkRequisition to be filled in. [out]
	 */
	public void getChildRequisition(out GtkRequisition requisition)
	{
		// void gtk_widget_get_child_requisition (GtkWidget *widget,  GtkRequisition *requisition);
		gtk_widget_get_child_requisition(gtkWidget, &requisition);
	}
	
	/**
	 * This function is only used by GtkContainer subclasses, to assign a size
	 * and position to their child widgets.
	 * In this function, the allocation may be adjusted. It will be forced
	 * to a 1x1 minimum size, and the adjust_size_allocation virtual
	 * method on the child will be used to adjust the allocation. Standard
	 * adjustments include removing the widget's margins, and applying the
	 * widget's "halign" and "valign" properties.
	 * Params:
	 * allocation = position and size to be allocated to widget
	 */
	public void sizeAllocate(ref GtkAllocation allocation)
	{
		// void gtk_widget_size_allocate (GtkWidget *widget,  GtkAllocation *allocation);
		gtk_widget_size_allocate(gtkWidget, &allocation);
	}
	
	/**
	 * Installs an accelerator for this widget in accel_group that causes
	 * accel_signal to be emitted if the accelerator is activated.
	 * The accel_group needs to be added to the widget's toplevel via
	 * gtk_window_add_accel_group(), and the signal must be of type G_SIGNAL_ACTION.
	 * Accelerators added through this function are not user changeable during
	 * runtime. If you want to support accelerators that can be changed by the
	 * user, use gtk_accel_map_add_entry() and gtk_widget_set_accel_path() or
	 * gtk_menu_item_set_accel_path() instead.
	 * Params:
	 * accelSignal = widget signal to emit on accelerator activation
	 * accelGroup = accel group for this widget, added to its toplevel
	 * accelKey = GDK keyval of the accelerator
	 * accelMods = modifier key combination of the accelerator
	 * accelFlags = flag accelerators, e.g. GTK_ACCEL_VISIBLE
	 */
	public void addAccelerator(string accelSignal, AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags)
	{
		// void gtk_widget_add_accelerator (GtkWidget *widget,  const gchar *accel_signal,  GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods,  GtkAccelFlags accel_flags);
		gtk_widget_add_accelerator(gtkWidget, Str.toStringz(accelSignal), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods, accelFlags);
	}
	
	/**
	 * Removes an accelerator from widget, previously installed with
	 * gtk_widget_add_accelerator().
	 * Params:
	 * accelGroup = accel group for this widget
	 * accelKey = GDK keyval of the accelerator
	 * accelMods = modifier key combination of the accelerator
	 * Returns: whether an accelerator was installed and could be removed
	 */
	public int removeAccelerator(AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods)
	{
		// gboolean gtk_widget_remove_accelerator (GtkWidget *widget,  GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods);
		return gtk_widget_remove_accelerator(gtkWidget, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods);
	}
	
	/**
	 * Given an accelerator group, accel_group, and an accelerator path,
	 * accel_path, sets up an accelerator in accel_group so whenever the
	 * key binding that is defined for accel_path is pressed, widget
	 * will be activated. This removes any accelerators (for any
	 * accelerator group) installed by previous calls to
	 * gtk_widget_set_accel_path(). Associating accelerators with
	 * paths allows them to be modified by the user and the modifications
	 * to be saved for future use. (See gtk_accel_map_save().)
	 * This function is a low level function that would most likely
	 * be used by a menu creation system like GtkUIManager. If you
	 * use GtkUIManager, setting up accelerator paths will be done
	 * automatically.
	 * Even when you you aren't using GtkUIManager, if you only want to
	 * set up accelerators on menu items gtk_menu_item_set_accel_path()
	 * provides a somewhat more convenient interface.
	 * Note that accel_path string will be stored in a GQuark. Therefore, if you
	 * pass a static string, you can save some memory by interning it first with
	 * g_intern_static_string().
	 * Params:
	 * accelPath = path used to look up the accelerator. [allow-none]
	 * accelGroup = a GtkAccelGroup. [allow-none]
	 */
	public void setAccelPath(string accelPath, AccelGroup accelGroup)
	{
		// void gtk_widget_set_accel_path (GtkWidget *widget,  const gchar *accel_path,  GtkAccelGroup *accel_group);
		gtk_widget_set_accel_path(gtkWidget, Str.toStringz(accelPath), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Lists the closures used by widget for accelerator group connections
	 * with gtk_accel_group_connect_by_path() or gtk_accel_group_connect().
	 * The closures can be used to monitor accelerator changes on widget,
	 * by connecting to the GtkAccelGroup::accel-changed signal of the
	 * GtkAccelGroup of a closure which can be found out with
	 * gtk_accel_group_from_accel_closure().
	 * Returns: a newly allocated GList of closures. [transfer container][element-type GClosure]
	 */
	public ListG listAccelClosures()
	{
		// GList * gtk_widget_list_accel_closures (GtkWidget *widget);
		auto p = gtk_widget_list_accel_closures(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Determines whether an accelerator that activates the signal
	 * identified by signal_id can currently be activated.
	 * This is done by emitting the "can-activate-accel"
	 * signal on widget; if the signal isn't overridden by a
	 * handler or in a derived widget, then the default check is
	 * that the widget must be sensitive, and the widget and all
	 * its ancestors mapped.
	 * Since 2.4
	 * Params:
	 * signalId = the ID of a signal installed on widget
	 * Returns: TRUE if the accelerator can be activated.
	 */
	public int canActivateAccel(uint signalId)
	{
		// gboolean gtk_widget_can_activate_accel (GtkWidget *widget,  guint signal_id);
		return gtk_widget_can_activate_accel(gtkWidget, signalId);
	}
	
	/**
	 * Rarely-used function. This function is used to emit
	 * the event signals on a widget (those signals should never
	 * be emitted without using this function to do so).
	 * If you want to synthesize an event though, don't use this function;
	 * instead, use gtk_main_do_event() so the event will behave as if
	 * it were in the event queue. Don't synthesize expose events; instead,
	 * use gdk_window_invalidate_rect() to invalidate a region of the
	 * window.
	 * Params:
	 * event = a GdkEvent
	 * Returns: return from the event signal emission (TRUE if the event was handled)
	 */
	public int event(Event event)
	{
		// gboolean gtk_widget_event (GtkWidget *widget,  GdkEvent *event);
		return gtk_widget_event(gtkWidget, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * For widgets that can be "activated" (buttons, menu items, etc.)
	 * this function activates them. Activation is what happens when you
	 * press Enter on a widget during key navigation. If widget isn't
	 * activatable, the function returns FALSE.
	 * Returns: TRUE if the widget was activatable
	 */
	public int activate()
	{
		// gboolean gtk_widget_activate (GtkWidget *widget);
		return gtk_widget_activate(gtkWidget);
	}
	
	/**
	 * Moves a widget from one GtkContainer to another, handling reference
	 * count issues to avoid destroying the widget.
	 * Params:
	 * newParent = a GtkContainer to move the widget into
	 */
	public void reparent(Widget newParent)
	{
		// void gtk_widget_reparent (GtkWidget *widget,  GtkWidget *new_parent);
		gtk_widget_reparent(gtkWidget, (newParent is null) ? null : newParent.getWidgetStruct());
	}
	
	/**
	 * Computes the intersection of a widget's area and area, storing
	 * the intersection in intersection, and returns TRUE if there was
	 * an intersection. intersection may be NULL if you're only
	 * interested in whether there was an intersection.
	 * Params:
	 * area = a rectangle
	 * intersection = rectangle to store intersection of widget and area
	 * Returns: TRUE if there was an intersection
	 */
	public int intersect(ref Rectangle area, out Rectangle intersection)
	{
		// gboolean gtk_widget_intersect (GtkWidget *widget,  const GdkRectangle *area,  GdkRectangle *intersection);
		return gtk_widget_intersect(gtkWidget, &area, &intersection);
	}
	
	/**
	 * Determines if the widget is the focus widget within its
	 * toplevel. (This does not mean that the HAS_FOCUS flag is
	 * necessarily set; HAS_FOCUS will only be set if the
	 * toplevel widget additionally has the global input focus.)
	 * Returns: TRUE if the widget is the focus widget.
	 */
	public int isFocus()
	{
		// gboolean gtk_widget_is_focus (GtkWidget *widget);
		return gtk_widget_is_focus(gtkWidget);
	}
	
	/**
	 * Causes widget to have the keyboard focus for the GtkWindow it's
	 * inside. widget must be a focusable widget, such as a GtkEntry;
	 * something like GtkFrame won't work.
	 * More precisely, it must have the GTK_CAN_FOCUS flag set. Use
	 * gtk_widget_set_can_focus() to modify that flag.
	 * The widget also needs to be realized and mapped. This is indicated by the
	 * related signals. Grabbing the focus immediately after creating the widget
	 * will likely fail and cause critical warnings.
	 */
	public void grabFocus()
	{
		// void gtk_widget_grab_focus (GtkWidget *widget);
		gtk_widget_grab_focus(gtkWidget);
	}
	
	/**
	 * Causes widget to become the default widget. widget must be able to be
	 * a default widget; typically you would ensure this yourself
	 * by calling gtk_widget_set_can_default() with a TRUE value.
	 * The default widget is activated when
	 * the user presses Enter in a window. Default widgets must be
	 * activatable, that is, gtk_widget_activate() should affect them. Note
	 * that GtkEntry widgets require the "activates-default" property
	 * set to TRUE before they activate the default widget when Enter
	 * is pressed and the GtkEntry is focused.
	 */
	public void grabDefault()
	{
		// void gtk_widget_grab_default (GtkWidget *widget);
		gtk_widget_grab_default(gtkWidget);
	}
	
	/**
	 * Widgets can be named, which allows you to refer to them from a
	 * CSS file. You can apply a style to widgets with a particular name
	 * in the CSS file. See the documentation for the CSS syntax (on the
	 * same page as the docs for GtkStyleContext).
	 * Note that the CSS syntax has certain special characters to delimit
	 * and represent elements in a selector (period, #, >, *...),
	 * so using these will make your widget impossible to match by name.
	 * Any combination of alphanumeric symbols, dashes and underscores will
	 * suffice.
	 * Params:
	 * name = name for the widget
	 */
	public void setName(string name)
	{
		// void gtk_widget_set_name (GtkWidget *widget,  const gchar *name);
		gtk_widget_set_name(gtkWidget, Str.toStringz(name));
	}
	
	/**
	 * Retrieves the name of a widget. See gtk_widget_set_name() for the
	 * significance of widget names.
	 * Returns: name of the widget. This string is owned by GTK+ and should not be modified or freed
	 */
	public string getName()
	{
		// const gchar * gtk_widget_get_name (GtkWidget *widget);
		return Str.toString(gtk_widget_get_name(gtkWidget));
	}
	
	/**
	 * Warning
	 * gtk_widget_set_state is deprecated and should not be used in newly-written code. 3.0. Use gtk_widget_set_state_flags() instead.
	 * This function is for use in widget implementations. Sets the state
	 * of a widget (insensitive, prelighted, etc.) Usually you should set
	 * the state using wrapper functions such as gtk_widget_set_sensitive().
	 * Params:
	 * state = new state for widget
	 */
	public void setState(GtkStateType state)
	{
		// void gtk_widget_set_state (GtkWidget *widget,  GtkStateType state);
		gtk_widget_set_state(gtkWidget, state);
	}
	
	/**
	 * Sets the sensitivity of a widget. A widget is sensitive if the user
	 * can interact with it. Insensitive widgets are "grayed out" and the
	 * user can't interact with them. Insensitive widgets are known as
	 * "inactive", "disabled", or "ghosted" in some other toolkits.
	 * Params:
	 * sensitive = TRUE to make the widget sensitive
	 */
	public void setSensitive(int sensitive)
	{
		// void gtk_widget_set_sensitive (GtkWidget *widget,  gboolean sensitive);
		gtk_widget_set_sensitive(gtkWidget, sensitive);
	}
	
	/**
	 * This function is useful only when implementing subclasses of
	 * GtkContainer.
	 * Sets the container as the parent of widget, and takes care of
	 * some details such as updating the state and style of the child
	 * to reflect its new location. The opposite function is
	 * gtk_widget_unparent().
	 * Params:
	 * parent = parent container
	 */
	public void setParent(Widget parent)
	{
		// void gtk_widget_set_parent (GtkWidget *widget,  GtkWidget *parent);
		gtk_widget_set_parent(gtkWidget, (parent is null) ? null : parent.getWidgetStruct());
	}
	
	/**
	 * Sets a non default parent window for widget.
	 * For GtkWindow classes, setting a parent_window effects whether
	 * the window is a toplevel window or can be embedded into other
	 * widgets.
	 * Note
	 * For GtkWindow classes, this needs to be called before the
	 * window is realized.
	 * Params:
	 * parentWindow = the new parent window.
	 */
	public void setParentWindow(Window parentWindow)
	{
		// void gtk_widget_set_parent_window (GtkWidget *widget,  GdkWindow *parent_window);
		gtk_widget_set_parent_window(gtkWidget, (parentWindow is null) ? null : parentWindow.getWindowStruct());
	}
	
	/**
	 * Gets widget's parent window.
	 * Returns: the parent window of widget. [transfer none]
	 */
	public Window getParentWindow()
	{
		// GdkWindow * gtk_widget_get_parent_window (GtkWidget *widget);
		auto p = gtk_widget_get_parent_window(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Sets the event mask (see GdkEventMask) for a widget. The event
	 * mask determines which events a widget will receive. Keep in mind
	 * that different widgets have different default event masks, and by
	 * changing the event mask you may disrupt a widget's functionality,
	 * so be careful. This function must be called while a widget is
	 * unrealized. Consider gtk_widget_add_events() for widgets that are
	 * already realized, or if you want to preserve the existing event
	 * mask. This function can't be used with GTK_NO_WINDOW widgets;
	 * to get events on those widgets, place them inside a GtkEventBox
	 * and receive events on the event box.
	 * Params:
	 * events = event mask
	 */
	public void setEvents(int events)
	{
		// void gtk_widget_set_events (GtkWidget *widget,  gint events);
		gtk_widget_set_events(gtkWidget, events);
	}
	
	/**
	 * Returns the event mask for the widget (a bitfield containing flags
	 * from the GdkEventMask enumeration). These are the events that the widget
	 * will receive.
	 * Returns: event mask for widget
	 */
	public int getEvents()
	{
		// gint gtk_widget_get_events (GtkWidget *widget);
		return gtk_widget_get_events(gtkWidget);
	}
	
	/**
	 * Adds the events in the bitfield events to the event mask for
	 * widget. See gtk_widget_set_events() for details.
	 * Params:
	 * events = an event mask, see GdkEventMask
	 */
	public void addEvents(int events)
	{
		// void gtk_widget_add_events (GtkWidget *widget,  gint events);
		gtk_widget_add_events(gtkWidget, events);
	}
	
	/**
	 * Sets the device event mask (see GdkEventMask) for a widget. The event
	 * mask determines which events a widget will receive from device. Keep
	 * in mind that different widgets have different default event masks, and by
	 * changing the event mask you may disrupt a widget's functionality,
	 * so be careful. This function must be called while a widget is
	 * unrealized. Consider gtk_widget_add_device_events() for widgets that are
	 * already realized, or if you want to preserve the existing event
	 * mask. This function can't be used with GTK_NO_WINDOW widgets;
	 * to get events on those widgets, place them inside a GtkEventBox
	 * and receive events on the event box.
	 * Params:
	 * device = a GdkDevice
	 * events = event mask
	 * Since 3.0
	 */
	public void setDeviceEvents(Device device, GdkEventMask events)
	{
		// void gtk_widget_set_device_events (GtkWidget *widget,  GdkDevice *device,  GdkEventMask events);
		gtk_widget_set_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct(), events);
	}
	
	/**
	 * Returns the events mask for the widget corresponding to an specific device. These
	 * are the events that the widget will receive when device operates on it.
	 * Params:
	 * device = a GdkDevice
	 * Returns: device event mask for widget Since 3.0
	 */
	public GdkEventMask getDeviceEvents(Device device)
	{
		// GdkEventMask gtk_widget_get_device_events (GtkWidget *widget,  GdkDevice *device);
		return gtk_widget_get_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Adds the device events in the bitfield events to the event mask for
	 * widget. See gtk_widget_set_device_events() for details.
	 * Params:
	 * device = a GdkDevice
	 * events = an event mask, see GdkEventMask
	 * Since 3.0
	 */
	public void addDeviceEvents(Device device, GdkEventMask events)
	{
		// void gtk_widget_add_device_events (GtkWidget *widget,  GdkDevice *device,  GdkEventMask events);
		gtk_widget_add_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct(), events);
	}
	
	/**
	 * Enables or disables a GdkDevice to interact with widget
	 * and all its children.
	 * It does so by descending through the GdkWindow hierarchy
	 * and enabling the same mask that is has for core events
	 * (i.e. the one that gdk_window_get_events() returns).
	 * Params:
	 * device = a GdkDevice
	 * enabled = whether to enable the device
	 * Since 3.0
	 */
	public void setDeviceEnabled(Device device, int enabled)
	{
		// void gtk_widget_set_device_enabled (GtkWidget *widget,  GdkDevice *device,  gboolean enabled);
		gtk_widget_set_device_enabled(gtkWidget, (device is null) ? null : device.getDeviceStruct(), enabled);
	}
	
	/**
	 * Returns whether device can interact with widget and its
	 * children. See gtk_widget_set_device_enabled().
	 * Params:
	 * device = a GdkDevice
	 * Returns: TRUE is device is enabled for widget Since 3.0
	 */
	public int getDeviceEnabled(Device device)
	{
		// gboolean gtk_widget_get_device_enabled (GtkWidget *widget,  GdkDevice *device);
		return gtk_widget_get_device_enabled(gtkWidget, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * This function returns the topmost widget in the container hierarchy
	 * widget is a part of. If widget has no parent widgets, it will be
	 * returned as the topmost widget. No reference will be added to the
	 * returned widget; it should not be unreferenced.
	 * Note the difference in behavior vs. gtk_widget_get_ancestor();
	 * gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)
	 * would return
	 * NULL if widget wasn't inside a toplevel window, and if the
	 * window was inside a GtkWindow-derived widget which was in turn
	 * inside the toplevel GtkWindow. While the second case may
	 * seem unlikely, it actually happens when a GtkPlug is embedded
	 * inside a GtkSocket within the same application.
	 * To reliably find the toplevel GtkWindow, use
	 * gtk_widget_get_toplevel() and check if the TOPLEVEL flags
	 * is set on the result.
	 * $(DDOC_COMMENT example)
	 * Returns: the topmost ancestor of widget, or widget itself if there's no ancestor. [transfer none]
	 */
	public Widget getToplevel()
	{
		// GtkWidget * gtk_widget_get_toplevel (GtkWidget *widget);
		auto p = gtk_widget_get_toplevel(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the first ancestor of widget with type widget_type. For example,
	 * gtk_widget_get_ancestor (widget, GTK_TYPE_BOX) gets
	 * the first GtkBox that's an ancestor of widget. No reference will be
	 * added to the returned widget; it should not be unreferenced. See note
	 * about checking for a toplevel GtkWindow in the docs for
	 * gtk_widget_get_toplevel().
	 * Note that unlike gtk_widget_is_ancestor(), gtk_widget_get_ancestor()
	 * considers widget to be an ancestor of itself.
	 * Params:
	 * widget = a GtkWidget
	 * widgetType = ancestor type
	 * Returns: the ancestor widget, or NULL if not found. [transfer none]
	 */
	public Widget getAncestor(GType widgetType)
	{
		// GtkWidget * gtk_widget_get_ancestor (GtkWidget *widget,  GType widget_type);
		auto p = gtk_widget_get_ancestor(gtkWidget, widgetType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the visual that will be used to render widget.
	 * Returns: the visual for widget. [transfer none]
	 */
	public Visual getVisual()
	{
		// GdkVisual * gtk_widget_get_visual (GtkWidget *widget);
		auto p = gtk_widget_get_visual(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}
	
	/**
	 * Sets the visual that should be used for by widget and its children for
	 * creating GdkWindows. The visual must be on the same GdkScreen as
	 * returned by gtk_widget_get_screen(), so handling the
	 * "screen-changed" signal is necessary.
	 * Setting a new visual will not cause widget to recreate its windows,
	 * so you should call this function before widget is realized.
	 * Params:
	 * visual = visual to be used or NULL to unset a previous one
	 */
	public void setVisual(Visual visual)
	{
		// void gtk_widget_set_visual (GtkWidget *widget,  GdkVisual *visual);
		gtk_widget_set_visual(gtkWidget, (visual is null) ? null : visual.getVisualStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_get_pointer has been deprecated since version 3.4 and should not be used in newly-written code. Use gdk_window_get_device_position() instead.
	 * Obtains the location of the mouse pointer in widget coordinates.
	 * Widget coordinates are a bit odd; for historical reasons, they are
	 * defined as widget->window coordinates for widgets that are not
	 * GTK_NO_WINDOW widgets, and are relative to widget->allocation.x,
	 * widget->allocation.y for widgets that are GTK_NO_WINDOW widgets.
	 * Params:
	 * x = return location for the X coordinate, or NULL. [out][allow-none]
	 * y = return location for the Y coordinate, or NULL. [out][allow-none]
	 */
	public void getPointer(out int x, out int y)
	{
		// void gtk_widget_get_pointer (GtkWidget *widget,  gint *x,  gint *y);
		gtk_widget_get_pointer(gtkWidget, &x, &y);
	}
	
	/**
	 * Determines whether widget is somewhere inside ancestor, possibly with
	 * intermediate containers.
	 * Params:
	 * ancestor = another GtkWidget
	 * Returns: TRUE if ancestor contains widget as a child, grandchild, great grandchild, etc.
	 */
	public int isAncestor(Widget ancestor)
	{
		// gboolean gtk_widget_is_ancestor (GtkWidget *widget,  GtkWidget *ancestor);
		return gtk_widget_is_ancestor(gtkWidget, (ancestor is null) ? null : ancestor.getWidgetStruct());
	}
	
	/**
	 * Translate coordinates relative to src_widget's allocation to coordinates
	 * relative to dest_widget's allocations. In order to perform this
	 * operation, both widgets must be realized, and must share a common
	 * toplevel.
	 * Params:
	 * destWidget = a GtkWidget
	 * srcX = X position relative to src_widget
	 * srcY = Y position relative to src_widget
	 * destX = location to store X position relative to dest_widget. [out]
	 * destY = location to store Y position relative to dest_widget. [out]
	 * Returns: FALSE if either widget was not realized, or there was no common ancestor. In this case, nothing is stored in *dest_x and *dest_y. Otherwise TRUE.
	 */
	public int translateCoordinates(Widget destWidget, int srcX, int srcY, out int destX, out int destY)
	{
		// gboolean gtk_widget_translate_coordinates (GtkWidget *src_widget,  GtkWidget *dest_widget,  gint src_x,  gint src_y,  gint *dest_x,  gint *dest_y);
		return gtk_widget_translate_coordinates(gtkWidget, (destWidget is null) ? null : destWidget.getWidgetStruct(), srcX, srcY, &destX, &destY);
	}
	
	/**
	 * Utility function; intended to be connected to the "delete-event"
	 * signal on a GtkWindow. The function calls gtk_widget_hide() on its
	 * argument, then returns TRUE. If connected to ::delete-event, the
	 * result is that clicking the close button for a window (on the
	 * window frame, top right corner usually) will hide but not destroy
	 * the window. By default, GTK+ destroys windows when ::delete-event
	 * is received.
	 * Returns: TRUE
	 */
	public int hideOnDelete()
	{
		// gboolean gtk_widget_hide_on_delete (GtkWidget *widget);
		return gtk_widget_hide_on_delete(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_set_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Used to set the GtkStyle for a widget (widget->style). Since
	 * GTK 3, this function does nothing, the passed in style is ignored.
	 * Params:
	 * style = a GtkStyle, or NULL to remove the effect
	 * of a previous call to gtk_widget_set_style() and go back to
	 * the default style. [allow-none]
	 */
	public void setStyle(Style style)
	{
		// void gtk_widget_set_style (GtkWidget *widget,  GtkStyle *style);
		gtk_widget_set_style(gtkWidget, (style is null) ? null : style.getStyleStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_ensure_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Ensures that widget has a style (widget->style).
	 * Not a very useful function; most of the time, if you
	 * want the style, the widget is realized, and realized
	 * widgets are guaranteed to have a style already.
	 */
	public void ensureStyle()
	{
		// void gtk_widget_ensure_style (GtkWidget *widget);
		gtk_widget_ensure_style(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_get_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Simply an accessor function that returns widget->style.
	 * Returns: the widget's GtkStyle. [transfer none]
	 */
	public Style getStyle()
	{
		// GtkStyle * gtk_widget_get_style (GtkWidget *widget);
		auto p = gtk_widget_get_style(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_widget_reset_rc_styles has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead, and gtk_widget_reset_style()
	 * Reset the styles of widget and all descendents, so when
	 * they are looked up again, they get the correct values
	 * for the currently loaded RC file settings.
	 * This function is not useful for applications.
	 */
	public void resetRcStyles()
	{
		// void gtk_widget_reset_rc_styles (GtkWidget *widget);
		gtk_widget_reset_rc_styles(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_get_default_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead, and
	 *  gtk_css_provider_get_default() to obtain a GtkStyleProvider
	 *  with the default widget style information.
	 * Returns the default style used by all widgets initially.
	 * Returns: the default style. This GtkStyle object is owned by GTK+ and should not be modified or freed. [transfer none]
	 */
	public static Style getDefaultStyle()
	{
		// GtkStyle * gtk_widget_get_default_style (void);
		auto p = gtk_widget_get_default_style();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}
	
	/**
	 * Sets the reading direction on a particular widget. This direction
	 * controls the primary direction for widgets containing text,
	 * and also the direction in which the children of a container are
	 * packed. The ability to set the direction is present in order
	 * so that correct localization into languages with right-to-left
	 * reading directions can be done. Generally, applications will
	 * let the default reading direction present, except for containers
	 * where the containers are arranged in an order that is explicitely
	 * visual rather than logical (such as buttons for text justification).
	 * If the direction is set to GTK_TEXT_DIR_NONE, then the value
	 * set by gtk_widget_set_default_direction() will be used.
	 * Params:
	 * dir = the new direction
	 */
	public void setDirection(GtkTextDirection dir)
	{
		// void gtk_widget_set_direction (GtkWidget *widget,  GtkTextDirection dir);
		gtk_widget_set_direction(gtkWidget, dir);
	}
	
	/**
	 * Gets the reading direction for a particular widget. See
	 * gtk_widget_set_direction().
	 * Returns: the reading direction for the widget.
	 */
	public GtkTextDirection getDirection()
	{
		// GtkTextDirection gtk_widget_get_direction (GtkWidget *widget);
		return gtk_widget_get_direction(gtkWidget);
	}
	
	/**
	 * Sets the default reading direction for widgets where the
	 * direction has not been explicitly set by gtk_widget_set_direction().
	 * Params:
	 * dir = the new default direction. This cannot be
	 * GTK_TEXT_DIR_NONE.
	 */
	public static void setDefaultDirection(GtkTextDirection dir)
	{
		// void gtk_widget_set_default_direction (GtkTextDirection dir);
		gtk_widget_set_default_direction(dir);
	}
	
	/**
	 * Obtains the current default reading direction. See
	 * gtk_widget_set_default_direction().
	 * Returns: the current default direction.
	 */
	public static GtkTextDirection getDefaultDirection()
	{
		// GtkTextDirection gtk_widget_get_default_direction (void);
		return gtk_widget_get_default_direction();
	}
	
	/**
	 * Sets a shape for this widget's GDK window. This allows for
	 * transparent windows etc., see gdk_window_shape_combine_region()
	 * for more information.
	 * Params:
	 * region = shape to be added, or NULL to remove an existing shape. [allow-none]
	 * Since 3.0
	 */
	public void shapeCombineRegion(Region region)
	{
		// void gtk_widget_shape_combine_region (GtkWidget *widget,  cairo_region_t *region);
		gtk_widget_shape_combine_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
	}
	
	/**
	 * Sets an input shape for this widget's GDK window. This allows for
	 * windows which react to mouse click in a nonrectangular region, see
	 * gdk_window_input_shape_combine_region() for more information.
	 * Params:
	 * region = shape to be added, or NULL to remove an existing shape. [allow-none]
	 * Since 3.0
	 */
	public void inputShapeCombineRegion(Region region)
	{
		// void gtk_widget_input_shape_combine_region  (GtkWidget *widget,  cairo_region_t *region);
		gtk_widget_input_shape_combine_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_path has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_get_path() instead
	 * Obtains the full path to widget. The path is simply the name of a
	 * widget and all its parents in the container hierarchy, separated by
	 * periods. The name of a widget comes from
	 * gtk_widget_get_name(). Paths are used to apply styles to a widget
	 * in gtkrc configuration files. Widget names are the type of the
	 * widget by default (e.g. "GtkButton") or can be set to an
	 * application-specific value with gtk_widget_set_name(). By setting
	 * the name of a widget, you allow users or theme authors to apply
	 * styles to that specific widget in their gtkrc
	 * file. path_reversed_p fills in the path in reverse order,
	 * i.e. starting with widget's name instead of starting with the name
	 * of widget's outermost ancestor.
	 * Params:
	 * pathLength = location to store length of the path,
	 * or NULL. [out][allow-none]
	 * path = location to store allocated path string,
	 * or NULL. [out][allow-none]
	 * pathReversed = location to store allocated reverse
	 * path string, or NULL. [out][allow-none]
	 */
	public void path(out uint pathLength, out string path, out string pathReversed)
	{
		// void gtk_widget_path (GtkWidget *widget,  guint *path_length,  gchar **path,  gchar **path_reversed);
		char* outpath = null;
		char* outpathReversed = null;
		
		gtk_widget_path(gtkWidget, &pathLength, &outpath, &outpathReversed);
		
		path = Str.toString(outpath);
		pathReversed = Str.toString(outpathReversed);
	}
	
	/**
	 * Warning
	 * gtk_widget_class_path has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_get_path() instead
	 * Same as gtk_widget_path(), but always uses the name of a widget's type,
	 * never uses a custom name set with gtk_widget_set_name().
	 * Params:
	 * pathLength = location to store the length of the
	 * class path, or NULL. [out][allow-none]
	 * path = location to store the class path as an
	 * allocated string, or NULL. [out][allow-none]
	 * pathReversed = location to store the reverse
	 * class path as an allocated string, or NULL. [out][allow-none]
	 */
	public void classPath(out uint pathLength, out string path, out string pathReversed)
	{
		// void gtk_widget_class_path (GtkWidget *widget,  guint *path_length,  gchar **path,  gchar **path_reversed);
		char* outpath = null;
		char* outpathReversed = null;
		
		gtk_widget_class_path(gtkWidget, &pathLength, &outpath, &outpathReversed);
		
		path = Str.toString(outpath);
		pathReversed = Str.toString(outpathReversed);
	}
	
	/**
	 * Obtains the composite name of a widget.
	 * Returns: the composite name of widget, or NULL if widget is not a composite child. The string should be freed when it is no longer needed.
	 */
	public string getCompositeName()
	{
		// gchar * gtk_widget_get_composite_name (GtkWidget *widget);
		return Str.toString(gtk_widget_get_composite_name(gtkWidget));
	}
	
	/**
	 * Sets the background color to use for a widget.
	 * All other style values are left untouched.
	 * See gtk_widget_override_color().
	 * Params:
	 * state = the state for which to set the background color
	 * color = the color to assign, or NULL to undo the effect
	 * of previous calls to gtk_widget_override_background_color(). [allow-none]
	 * Since 3.0
	 */
	public void overrideBackgroundColor(GtkStateFlags state, RGBA color)
	{
		// void gtk_widget_override_background_color  (GtkWidget *widget,  GtkStateFlags state,  const GdkRGBA *color);
		gtk_widget_override_background_color(gtkWidget, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Sets the color to use for a widget.
	 * All other style values are left untouched.
	 * Note
	 * This API is mostly meant as a quick way for applications to
	 * change a widget appearance. If you are developing a widgets
	 * library and intend this change to be themeable, it is better
	 * done by setting meaningful CSS classes and regions in your
	 * widget/container implementation through gtk_style_context_add_class()
	 * and gtk_style_context_add_region().
	 * This way, your widget library can install a GtkCssProvider
	 * with the GTK_STYLE_PROVIDER_PRIORITY_FALLBACK priority in order
	 * to provide a default styling for those widgets that need so, and
	 * this theming may fully overridden by the user's theme.
	 * Note
	 * Note that for complex widgets this may bring in undesired
	 * results (such as uniform background color everywhere), in
	 * these cases it is better to fully style such widgets through a
	 * GtkCssProvider with the GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
	 * priority.
	 * Params:
	 * state = the state for which to set the color
	 * color = the color to assign, or NULL to undo the effect
	 * of previous calls to gtk_widget_override_color(). [allow-none]
	 * Since 3.0
	 */
	public void overrideColor(GtkStateFlags state, RGBA color)
	{
		// void gtk_widget_override_color (GtkWidget *widget,  GtkStateFlags state,  const GdkRGBA *color);
		gtk_widget_override_color(gtkWidget, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Sets the font to use for a widget. All other style values are
	 * left untouched. See gtk_widget_override_color().
	 * Params:
	 * fontDesc = the font descriptiong to use, or NULL to undo
	 * the effect of previous calls to gtk_widget_override_font(). [allow-none]
	 * Since 3.0
	 */
	public void overrideFont(PgFontDescription fontDesc)
	{
		// void gtk_widget_override_font (GtkWidget *widget,  const PangoFontDescription *font_desc);
		gtk_widget_override_font(gtkWidget, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Sets a symbolic color for a widget.
	 * All other style values are left untouched.
	 * See gtk_widget_override_color() for overriding the foreground
	 * or background color.
	 * Params:
	 * name = the name of the symbolic color to modify
	 * color = the color to assign (does not need
	 * to be allocated), or NULL to undo the effect of previous
	 * calls to gtk_widget_override_symbolic_color(). [allow-none]
	 * Since 3.0
	 */
	public void overrideSymbolicColor(string name, RGBA color)
	{
		// void gtk_widget_override_symbolic_color (GtkWidget *widget,  const gchar *name,  const GdkRGBA *color);
		gtk_widget_override_symbolic_color(gtkWidget, Str.toStringz(name), (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Sets the cursor color to use in a widget, overriding the
	 * "cursor-color" and "secondary-cursor-color"
	 * style properties. All other style values are left untouched.
	 * See also gtk_widget_modify_style().
	 * Note that the underlying properties have the GdkColor type,
	 * so the alpha value in primary and secondary will be ignored.
	 * Params:
	 * cursor = the color to use for primary cursor (does not need to be
	 * allocated), or NULL to undo the effect of previous calls to
	 * of gtk_widget_override_cursor(). [allow-none]
	 * secondaryCursor = the color to use for secondary cursor (does not
	 * need to be allocated), or NULL to undo the effect of previous
	 * calls to of gtk_widget_override_cursor(). [allow-none]
	 * Since 3.0
	 */
	public void overrideCursor(RGBA cursor, RGBA secondaryCursor)
	{
		// void gtk_widget_override_cursor (GtkWidget *widget,  const GdkRGBA *cursor,  const GdkRGBA *secondary_cursor);
		gtk_widget_override_cursor(gtkWidget, (cursor is null) ? null : cursor.getRGBAStruct(), (secondaryCursor is null) ? null : secondaryCursor.getRGBAStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext with a custom GtkStyleProvider instead
	 * Modifies style values on the widget.
	 * Modifications made using this technique take precedence over
	 * style values set via an RC file, however, they will be overridden
	 * if a style is explicitely set on the widget using gtk_widget_set_style().
	 * The GtkRcStyle structure is designed so each field can either be
	 * set or unset, so it is possible, using this function, to modify some
	 * style values and leave the others unchanged.
	 * Note that modifications made with this function are not cumulative
	 * with previous calls to gtk_widget_modify_style() or with such
	 * functions as gtk_widget_modify_fg(). If you wish to retain
	 * previous values, you must first call gtk_widget_get_modifier_style(),
	 * make your modifications to the returned style, then call
	 * gtk_widget_modify_style() with that style. On the other hand,
	 * if you first call gtk_widget_modify_style(), subsequent calls
	 * to such functions gtk_widget_modify_fg() will have a cumulative
	 * effect with the initial modifications.
	 * Params:
	 * style = the GtkRcStyle holding the style modifications
	 */
	public void modifyStyle(RcStyle style)
	{
		// void gtk_widget_modify_style (GtkWidget *widget,  GtkRcStyle *style);
		gtk_widget_modify_style(gtkWidget, (style is null) ? null : style.getRcStyleStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_get_modifier_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext with a custom GtkStyleProvider instead
	 * Returns the current modifier style for the widget. (As set by
	 * gtk_widget_modify_style().) If no style has previously set, a new
	 * GtkRcStyle will be created with all values unset, and set as the
	 * modifier style for the widget. If you make changes to this rc
	 * style, you must call gtk_widget_modify_style(), passing in the
	 * returned rc style, to make sure that your changes take effect.
	 * Caution: passing the style back to gtk_widget_modify_style() will
	 * normally end up destroying it, because gtk_widget_modify_style() copies
	 * the passed-in style and sets the copy as the new modifier style,
	 * thus dropping any reference to the old modifier style. Add a reference
	 * to the modifier style if you want to keep it alive.
	 * Returns: the modifier style for the widget. This rc style is owned by the widget. If you want to keep a pointer to value this around, you must add a refcount using g_object_ref(). [transfer none]
	 */
	public RcStyle getModifierStyle()
	{
		// GtkRcStyle * gtk_widget_get_modifier_style (GtkWidget *widget);
		auto p = gtk_widget_get_modifier_style(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RcStyle)(cast(GtkRcStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_fg has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_override_color() instead
	 * Sets the foreground color for a widget in a particular state.
	 * All other style values are left untouched.
	 * See also gtk_widget_modify_style().
	 * Params:
	 * state = the state for which to set the foreground color
	 * color = the color to assign (does not need to be allocated),
	 * or NULL to undo the effect of previous calls to
	 * of gtk_widget_modify_fg(). [allow-none]
	 */
	public void modifyFg(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_fg (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_fg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_bg has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_override_background_color() instead
	 * Sets the background color for a widget in a particular state.
	 * All other style values are left untouched.
	 * See also gtk_widget_modify_style().
	 * Note
	 * Note that "no window" widgets (which have the GTK_NO_WINDOW
	 * flag set) draw on their parent container's window and thus may
	 * not draw any background themselves. This is the case for e.g.
	 * GtkLabel.
	 * To modify the background of such widgets, you have to set the
	 * background color on their parent; if you want to set the background
	 * of a rectangular area around a label, try placing the label in
	 * a GtkEventBox widget and setting the background color on that.
	 * Params:
	 * state = the state for which to set the background color
	 * color = the color to assign (does not need
	 * to be allocated), or NULL to undo the effect of previous
	 * calls to of gtk_widget_modify_bg(). [allow-none]
	 */
	public void modifyBg(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_bg (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_bg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_text has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_override_color() instead
	 * Sets the text color for a widget in a particular state.
	 * All other style values are left untouched.
	 * The text color is the foreground color used along with the
	 * base color (see gtk_widget_modify_base()) for widgets such
	 * as GtkEntry and GtkTextView.
	 * See also gtk_widget_modify_style().
	 * Params:
	 * state = the state for which to set the text color
	 * color = the color to assign (does not need to
	 * be allocated), or NULL to undo the effect of previous
	 * calls to of gtk_widget_modify_text(). [allow-none]
	 */
	public void modifyText(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_text (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_text(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_base has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_override_background_color() instead
	 * Sets the base color for a widget in a particular state.
	 * All other style values are left untouched. The base color
	 * is the background color used along with the text color
	 * (see gtk_widget_modify_text()) for widgets such as GtkEntry
	 * and GtkTextView. See also gtk_widget_modify_style().
	 * Note
	 * Note that "no window" widgets (which have the GTK_NO_WINDOW
	 * flag set) draw on their parent container's window and thus may
	 * not draw any background themselves. This is the case for e.g.
	 * GtkLabel.
	 * To modify the background of such widgets, you have to set the
	 * base color on their parent; if you want to set the background
	 * of a rectangular area around a label, try placing the label in
	 * a GtkEventBox widget and setting the base color on that.
	 * Params:
	 * state = the state for which to set the base color
	 * color = the color to assign (does not need to
	 * be allocated), or NULL to undo the effect of previous
	 * calls to of gtk_widget_modify_base(). [allow-none]
	 */
	public void modifyBase(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_base (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_base(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_font has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_override_font() instead
	 * Sets the font to use for a widget.
	 * All other style values are left untouched.
	 * See also gtk_widget_modify_style().
	 * Params:
	 * fontDesc = the font description to use, or NULL
	 * to undo the effect of previous calls to gtk_widget_modify_font(). [allow-none]
	 */
	public void modifyFont(PgFontDescription fontDesc)
	{
		// void gtk_widget_modify_font (GtkWidget *widget,  PangoFontDescription *font_desc);
		gtk_widget_modify_font(gtkWidget, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Warning
	 * gtk_widget_modify_cursor is deprecated and should not be used in newly-written code. 3.0. Use gtk_widget_override_cursor() instead.
	 * Sets the cursor color to use in a widget, overriding the
	 * "cursor-color" and "secondary-cursor-color"
	 * style properties.
	 * All other style values are left untouched.
	 * See also gtk_widget_modify_style().
	 * Since 2.12
	 * Params:
	 * primary = the color to use for primary cursor (does not need to be
	 * allocated), or NULL to undo the effect of previous calls to
	 * of gtk_widget_modify_cursor().
	 * secondary = the color to use for secondary cursor (does not need to be
	 * allocated), or NULL to undo the effect of previous calls to
	 * of gtk_widget_modify_cursor().
	 */
	public void modifyCursor(Color primary, Color secondary)
	{
		// void gtk_widget_modify_cursor (GtkWidget *widget,  const GdkColor *primary,  const GdkColor *secondary);
		gtk_widget_modify_cursor(gtkWidget, (primary is null) ? null : primary.getColorStruct(), (secondary is null) ? null : secondary.getColorStruct());
	}
	
	/**
	 * Creates a new PangoContext with the appropriate font map,
	 * font description, and base direction for drawing text for
	 * this widget. See also gtk_widget_get_pango_context().
	 * Returns: the new PangoContext. [transfer full]
	 */
	public PgContext createPangoContext()
	{
		// PangoContext * gtk_widget_create_pango_context (GtkWidget *widget);
		auto p = gtk_widget_create_pango_context(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
	
	/**
	 * Gets a PangoContext with the appropriate font map, font description,
	 * and base direction for this widget. Unlike the context returned
	 * by gtk_widget_create_pango_context(), this context is owned by
	 * the widget (it can be used until the screen for the widget changes
	 * or the widget is removed from its toplevel), and will be updated to
	 * match any changes to the widget's attributes. This can be tracked
	 * by using the "screen-changed" signal on the widget.
	 * Returns: the PangoContext for the widget. [transfer none]
	 */
	public PgContext getPangoContext()
	{
		// PangoContext * gtk_widget_get_pango_context (GtkWidget *widget);
		auto p = gtk_widget_get_pango_context(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
	
	/**
	 * Creates a new PangoLayout with the appropriate font map,
	 * font description, and base direction for drawing text for
	 * this widget.
	 * If you keep a PangoLayout created in this way around, you need
	 * to re-create it when the widget PangoContext is replaced.
	 * This can be tracked by using the "screen-changed" signal
	 * on the widget.
	 * Params:
	 * text = text to set on the layout (can be NULL)
	 * Returns: the new PangoLayout. [transfer full]
	 */
	public PgLayout createPangoLayout(string text)
	{
		// PangoLayout * gtk_widget_create_pango_layout (GtkWidget *widget,  const gchar *text);
		auto p = gtk_widget_create_pango_layout(gtkWidget, Str.toStringz(text));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Warning
	 * gtk_widget_render_icon has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_render_icon_pixbuf() instead.
	 * A convenience function that uses the theme settings for widget
	 * to look up stock_id and render it to a pixbuf. stock_id should
	 * be a stock icon ID such as GTK_STOCK_OPEN or GTK_STOCK_OK. size
	 * should be a size such as GTK_ICON_SIZE_MENU. detail should be a
	 * string that identifies the widget or code doing the rendering, so
	 * that theme engines can special-case rendering for that widget or
	 * code.
	 * The pixels in the returned GdkPixbuf are shared with the rest of
	 * the application and should not be modified. The pixbuf should be
	 * freed after use with g_object_unref().
	 * Params:
	 * stockId = a stock ID
	 * size = a stock size. A size of (GtkIconSize)-1 means
	 * render at the size of the source and don't scale (if there are
	 * multiple source sizes, GTK+ picks one of the available sizes). [type int]
	 * detail = render detail to pass to theme engine. [allow-none]
	 * Returns: a new pixbuf, or NULL if the stock ID wasn't known. [transfer full]
	 */
	public Pixbuf renderIcon(string stockId, GtkIconSize size, string detail)
	{
		// GdkPixbuf * gtk_widget_render_icon (GtkWidget *widget,  const gchar *stock_id,  GtkIconSize size,  const gchar *detail);
		auto p = gtk_widget_render_icon(gtkWidget, Str.toStringz(stockId), size, Str.toStringz(detail));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * A convenience function that uses the theme engine and style
	 * settings for widget to look up stock_id and render it to
	 * a pixbuf. stock_id should be a stock icon ID such as
	 * GTK_STOCK_OPEN or GTK_STOCK_OK. size should be a size
	 * such as GTK_ICON_SIZE_MENU.
	 * The pixels in the returned GdkPixbuf are shared with the rest of
	 * the application and should not be modified. The pixbuf should be freed
	 * after use with g_object_unref().
	 * Params:
	 * stockId = a stock ID
	 * size = a stock size. A size of (GtkIconSize)-1 means
	 * render at the size of the source and don't scale (if there are
	 * multiple source sizes, GTK+ picks one of the available sizes). [type int]
	 * Returns: a new pixbuf, or NULL if the stock ID wasn't known. [transfer full] Since 3.0
	 */
	public Pixbuf renderIconPixbuf(string stockId, GtkIconSize size)
	{
		// GdkPixbuf * gtk_widget_render_icon_pixbuf (GtkWidget *widget,  const gchar *stock_id,  GtkIconSize size);
		auto p = gtk_widget_render_icon_pixbuf(gtkWidget, Str.toStringz(stockId), size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Cancels the effect of a previous call to gtk_widget_push_composite_child().
	 */
	public static void popCompositeChild()
	{
		// void gtk_widget_pop_composite_child (void);
		gtk_widget_pop_composite_child();
	}
	
	/**
	 * Makes all newly-created widgets as composite children until
	 * the corresponding gtk_widget_pop_composite_child() call.
	 * A composite child is a child that's an implementation detail of the
	 * container it's inside and should not be visible to people using the
	 * container. Composite children aren't treated differently by GTK (but
	 * see gtk_container_foreach() vs. gtk_container_forall()), but e.g. GUI
	 * builders might want to treat them in a different way.
	 */
	public static void pushCompositeChild()
	{
		// void gtk_widget_push_composite_child (void);
		gtk_widget_push_composite_child();
	}
	
	/**
	 * Convenience function that calls gtk_widget_queue_draw_region() on
	 * the region created from the given coordinates.
	 * The region here is specified in widget coordinates.
	 * Widget coordinates are a bit odd; for historical reasons, they are
	 * defined as widget->window coordinates for widgets that are not
	 * GTK_NO_WINDOW widgets, and are relative to widget->allocation.x,
	 * widget->allocation.y for widgets that are GTK_NO_WINDOW widgets.
	 * Params:
	 * x = x coordinate of upper-left corner of rectangle to redraw
	 * y = y coordinate of upper-left corner of rectangle to redraw
	 * width = width of region to draw
	 * height = height of region to draw
	 */
	public void queueDrawArea(int x, int y, int width, int height)
	{
		// void gtk_widget_queue_draw_area (GtkWidget *widget,  gint x,  gint y,  gint width,  gint height);
		gtk_widget_queue_draw_area(gtkWidget, x, y, width, height);
	}
	
	/**
	 * Invalidates the rectangular area of widget defined by region by
	 * calling gdk_window_invalidate_region() on the widget's window and
	 * all its child windows. Once the main loop becomes idle (after the
	 * current batch of events has been processed, roughly), the window
	 * will receive expose events for the union of all regions that have
	 * been invalidated.
	 * Normally you would only use this function in widget
	 * implementations. You might also use it to schedule a redraw of a
	 * GtkDrawingArea or some portion thereof.
	 * Params:
	 * region = region to draw
	 * Since 3.0
	 */
	public void queueDrawRegion(Region region)
	{
		// void gtk_widget_queue_draw_region (GtkWidget *widget,  const cairo_region_t *region);
		gtk_widget_queue_draw_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
	}
	
	/**
	 * Sets whether the application intends to draw on the widget in
	 * an "draw" handler.
	 * This is a hint to the widget and does not affect the behavior of
	 * the GTK+ core; many widgets ignore this flag entirely. For widgets
	 * that do pay attention to the flag, such as GtkEventBox and GtkWindow,
	 * the effect is to suppress default themed drawing of the widget's
	 * background. (Children of the widget will still be drawn.) The application
	 * is then entirely responsible for drawing the widget background.
	 * Note that the background is still drawn when the widget is mapped.
	 * Params:
	 * appPaintable = TRUE if the application will paint on the widget
	 */
	public void setAppPaintable(int appPaintable)
	{
		// void gtk_widget_set_app_paintable (GtkWidget *widget,  gboolean app_paintable);
		gtk_widget_set_app_paintable(gtkWidget, appPaintable);
	}
	
	/**
	 * Widgets are double buffered by default; you can use this function
	 * to turn off the buffering. "Double buffered" simply means that
	 * gdk_window_begin_paint_region() and gdk_window_end_paint() are called
	 * automatically around expose events sent to the
	 * widget. gdk_window_begin_paint_region() diverts all drawing to a widget's
	 * window to an offscreen buffer, and gdk_window_end_paint() draws the
	 * buffer to the screen. The result is that users see the window
	 * update in one smooth step, and don't see individual graphics
	 * primitives being rendered.
	 * In very simple terms, double buffered widgets don't flicker,
	 * so you would only use this function to turn off double buffering
	 * if you had special needs and really knew what you were doing.
	 * Note: if you turn off double-buffering, you have to handle
	 * expose events, since even the clearing to the background color or
	 * pixmap will not happen automatically (as it is done in
	 * gdk_window_begin_paint_region()).
	 * Params:
	 * doubleBuffered = TRUE to double-buffer a widget
	 */
	public void setDoubleBuffered(int doubleBuffered)
	{
		// void gtk_widget_set_double_buffered (GtkWidget *widget,  gboolean double_buffered);
		gtk_widget_set_double_buffered(gtkWidget, doubleBuffered);
	}
	
	/**
	 * Sets whether the entire widget is queued for drawing when its size
	 * allocation changes. By default, this setting is TRUE and
	 * the entire widget is redrawn on every size change. If your widget
	 * leaves the upper left unchanged when made bigger, turning this
	 * setting off will improve performance.
	 * Note that for NO_WINDOW widgets setting this flag to FALSE turns
	 * off all allocation on resizing: the widget will not even redraw if
	 * its position changes; this is to allow containers that don't draw
	 * anything to avoid excess invalidations. If you set this flag on a
	 * NO_WINDOW widget that does draw on widget->window,
	 * you are responsible for invalidating both the old and new allocation
	 * of the widget when the widget is moved and responsible for invalidating
	 * regions newly when the widget increases size.
	 * Params:
	 * redrawOnAllocate = if TRUE, the entire widget will be redrawn
	 * when it is allocated to a new size. Otherwise, only the
	 * new portion of the widget will be redrawn.
	 */
	public void setRedrawOnAllocate(int redrawOnAllocate)
	{
		// void gtk_widget_set_redraw_on_allocate (GtkWidget *widget,  gboolean redraw_on_allocate);
		gtk_widget_set_redraw_on_allocate(gtkWidget, redrawOnAllocate);
	}
	
	/**
	 * Sets a widgets composite name. The widget must be
	 * a composite child of its parent; see gtk_widget_push_composite_child().
	 * Params:
	 * name = the name to set
	 */
	public void setCompositeName(string name)
	{
		// void gtk_widget_set_composite_name (GtkWidget *widget,  const gchar *name);
		gtk_widget_set_composite_name(gtkWidget, Str.toStringz(name));
	}
	
	/**
	 * Emits the "mnemonic-activate" signal.
	 * The default handler for this signal activates the widget if
	 * group_cycling is FALSE, and just grabs the focus if group_cycling
	 * is TRUE.
	 * Params:
	 * groupCycling = TRUE if there are other widgets with the same mnemonic
	 * Returns: TRUE if the signal has been handled
	 */
	public int mnemonicActivate(int groupCycling)
	{
		// gboolean gtk_widget_mnemonic_activate (GtkWidget *widget,  gboolean group_cycling);
		return gtk_widget_mnemonic_activate(gtkWidget, groupCycling);
	}
	
	/**
	 * Installs a style property on a widget class. The parser for the
	 * style property is determined by the value type of pspec.
	 * Params:
	 * klass = a GtkWidgetClass
	 * pspec = the GParamSpec for the property
	 */
	public static void classInstallStyleProperty(GtkWidgetClass* klass, ParamSpec pspec)
	{
		// void gtk_widget_class_install_style_property  (GtkWidgetClass *klass,  GParamSpec *pspec);
		gtk_widget_class_install_style_property(klass, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Installs a style property on a widget class.
	 * Params:
	 * klass = a GtkWidgetClass
	 * pspec = the GParamSpec for the style property
	 * parser = the parser for the style property
	 */
	public static void classInstallStylePropertyParser(GtkWidgetClass* klass, ParamSpec pspec, GtkRcPropertyParser parser)
	{
		// void gtk_widget_class_install_style_property_parser  (GtkWidgetClass *klass,  GParamSpec *pspec,  GtkRcPropertyParser parser);
		gtk_widget_class_install_style_property_parser(klass, (pspec is null) ? null : pspec.getParamSpecStruct(), parser);
	}
	
	/**
	 * Finds a style property of a widget class by name.
	 * Since 2.2
	 * Params:
	 * klass = a GtkWidgetClass
	 * propertyName = the name of the style property to find
	 * Returns: the GParamSpec of the style property or NULL if class has no style property with that name. [transfer none]
	 */
	public static ParamSpec classFindStyleProperty(GtkWidgetClass* klass, string propertyName)
	{
		// GParamSpec * gtk_widget_class_find_style_property  (GtkWidgetClass *klass,  const gchar *property_name);
		auto p = gtk_widget_class_find_style_property(klass, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Returns all style properties of a widget class.
	 * Since 2.2
	 * Params:
	 * klass = a GtkWidgetClass
	 * Returns: a newly allocated array of GParamSpec*. The array must be freed with g_free(). [array length=n_properties][transfer container]
	 */
	public static ParamSpec[] classListStyleProperties(GtkWidgetClass* klass)
	{
		// GParamSpec ** gtk_widget_class_list_style_properties  (GtkWidgetClass *klass,  guint *n_properties);
		uint nProperties;
		auto p = gtk_widget_class_list_style_properties(klass, &nProperties);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Computes the intersection of a widget's area and region, returning
	 * the intersection. The result may be empty, use cairo_region_is_empty() to
	 * check.
	 * Params:
	 * region = a cairo_region_t, in the same coordinate system as
	 * widget->allocation. That is, relative to widget->window
	 * for NO_WINDOW widgets; relative to the parent window
	 * of widget->window for widgets with their own window.
	 * Returns: A newly allocated region holding the intersection of widget and region. The coordinates of the return value are relative to widget->window for NO_WINDOW widgets, and relative to the parent window of widget->window for widgets with their own window.
	 */
	public Region regionIntersect(Region region)
	{
		// cairo_region_t * gtk_widget_region_intersect (GtkWidget *widget,  const cairo_region_t *region);
		auto p = gtk_widget_region_intersect(gtkWidget, (region is null) ? null : region.getRegionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Region)(cast(cairo_region_t*) p);
	}
	
	/**
	 * Very rarely-used function. This function is used to emit
	 * an expose event on a widget. This function is not normally used
	 * directly. The only time it is used is when propagating an expose
	 * event to a child NO_WINDOW widget, and that is normally done
	 * using gtk_container_propagate_draw().
	 * If you want to force an area of a window to be redrawn,
	 * use gdk_window_invalidate_rect() or gdk_window_invalidate_region().
	 * To cause the redraw to be done immediately, follow that call
	 * with a call to gdk_window_process_updates().
	 * Params:
	 * event = a expose GdkEvent
	 * Returns: return from the event signal emission (TRUE if the event was handled)
	 */
	public int sendExpose(Event event)
	{
		// gint gtk_widget_send_expose (GtkWidget *widget,  GdkEvent *event);
		return gtk_widget_send_expose(gtkWidget, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Sends the focus change event to widget
	 * This function is not meant to be used by applications. The only time it
	 * should be used is when it is necessary for a GtkWidget to assign focus
	 * to a widget that is semantically owned by the first widget even though
	 * it's not a direct child - for instance, a search entry in a floating
	 * window similar to the quick search in GtkTreeView.
	 * Since 2.20
	 * Params:
	 * event = a GdkEvent of type GDK_FOCUS_CHANGE
	 * Returns: the return value from the event signal emission: TRUE if the event was handled, and FALSE otherwise
	 */
	public int sendFocusChange(Event event)
	{
		// gboolean gtk_widget_send_focus_change (GtkWidget *widget,  GdkEvent *event);
		return gtk_widget_send_focus_change(gtkWidget, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Gets the value of a style property of widget.
	 * Params:
	 * propertyName = the name of a style property
	 * value = location to return the property value
	 */
	public void styleGetProperty(string propertyName, Value value)
	{
		// void gtk_widget_style_get_property (GtkWidget *widget,  const gchar *property_name,  GValue *value);
		gtk_widget_style_get_property(gtkWidget, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Non-vararg variant of gtk_widget_style_get(). Used primarily by language
	 * bindings.
	 * Params:
	 * firstPropertyName = the name of the first property to get
	 * varArgs = a va_list of pairs of property names and
	 * locations to return the property values, starting with the location
	 * for first_property_name.
	 */
	public void styleGetValist(string firstPropertyName, void* varArgs)
	{
		// void gtk_widget_style_get_valist (GtkWidget *widget,  const gchar *first_property_name,  va_list var_args);
		gtk_widget_style_get_valist(gtkWidget, Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Warning
	 * gtk_widget_style_attach is deprecated and should not be used in newly-written code. 3.0. This step is unnecessary with GtkStyleContext.
	 * This function attaches the widget's GtkStyle to the widget's
	 * GdkWindow. It is a replacement for
	 * widget->style = gtk_style_attach (widget->style, widget->window);
	 * and should only ever be called in a derived widget's "realize"
	 * implementation which does not chain up to its parent class'
	 * "realize" implementation, because one of the parent classes
	 * (finally GtkWidget) would attach the style itself.
	 * Since 2.20
	 */
	public void styleAttach()
	{
		// void gtk_widget_style_attach (GtkWidget *widget);
		gtk_widget_style_attach(gtkWidget);
	}
	
	/**
	 * Sets the type to be used for creating accessibles for widgets of
	 * widget_class. The given type must be a subtype of the type used for
	 * accessibles of the parent class.
	 * This function should only be called from class init functions of widgets.
	 * Params:
	 * widgetClass = class to set the accessible type for
	 * type = The object type that implements the accessible for widget_class
	 * Since 3.2
	 */
	public static void classSetAccessibleType(GtkWidgetClass* widgetClass, GType type)
	{
		// void gtk_widget_class_set_accessible_type  (GtkWidgetClass *widget_class,  GType type);
		gtk_widget_class_set_accessible_type(widgetClass, type);
	}
	
	/**
	 * Sets the default AtkRole to be set on accessibles created for
	 * widgets of widget_class. Accessibles may decide to not honor this
	 * setting if their role reporting is more refined. Calls to
	 * gtk_widget_class_set_accessible_type() will reset this value.
	 * In cases where you want more fine-grained control over the role of
	 * accessibles created for widget_class, you should provide your own
	 * accessible type and use gtk_widget_class_set_accessible_type()
	 * instead.
	 * If role is ATK_ROLE_INVALID, the default role will not be changed
	 * and the accessible's default role will be used instead.
	 * This function should only be called from class init functions of widgets.
	 * Params:
	 * widgetClass = class to set the accessible role for
	 * role = The role to use for accessibles created for widget_class
	 * Since 3.2
	 */
	public static void classSetAccessibleRole(GtkWidgetClass* widgetClass, AtkRole role)
	{
		// void gtk_widget_class_set_accessible_role  (GtkWidgetClass *widget_class,  AtkRole role);
		gtk_widget_class_set_accessible_role(widgetClass, role);
	}
	
	/**
	 * Returns the accessible object that describes the widget to an
	 * assistive technology.
	 * If accessibility support is not available, this AtkObject
	 * instance may be a no-op. Likewise, if no class-specific AtkObject
	 * implementation is available for the widget instance in question,
	 * it will inherit an AtkObject implementation from the first ancestor
	 * class for which such an implementation is defined.
	 * The documentation of the
	 * ATK
	 * library contains more information about accessible objects and their uses.
	 * Returns: the AtkObject associated with widget. [transfer none]
	 */
	public ObjectAtk getAccessible()
	{
		// AtkObject * gtk_widget_get_accessible (GtkWidget *widget);
		auto p = gtk_widget_get_accessible(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * This function is used by custom widget implementations; if you're
	 * writing an app, you'd use gtk_widget_grab_focus() to move the focus
	 * to a particular widget, and gtk_container_set_focus_chain() to
	 * change the focus tab order. So you may want to investigate those
	 * functions instead.
	 * gtk_widget_child_focus() is called by containers as the user moves
	 * around the window using keyboard shortcuts. direction indicates
	 * what kind of motion is taking place (up, down, left, right, tab
	 * forward, tab backward). gtk_widget_child_focus() emits the
	 * "focus" signal; widgets override the default handler
	 * for this signal in order to implement appropriate focus behavior.
	 * The default ::focus handler for a widget should return TRUE if
	 * moving in direction left the focus on a focusable location inside
	 * that widget, and FALSE if moving in direction moved the focus
	 * outside the widget. If returning TRUE, widgets normally
	 * call gtk_widget_grab_focus() to place the focus accordingly;
	 * if returning FALSE, they don't modify the current focus location.
	 * Params:
	 * direction = direction of focus movement
	 * Returns: TRUE if focus ended up inside widget
	 */
	public int childFocus(GtkDirectionType direction)
	{
		// gboolean gtk_widget_child_focus (GtkWidget *widget,  GtkDirectionType direction);
		return gtk_widget_child_focus(gtkWidget, direction);
	}
	
	/**
	 * Emits a "child-notify" signal for the
	 * child property child_property
	 * on widget.
	 * This is the analogue of g_object_notify() for child properties.
	 * Also see gtk_container_child_notify().
	 * Params:
	 * childProperty = the name of a child property installed on the
	 * class of widget's parent
	 */
	public void childNotify(string childProperty)
	{
		// void gtk_widget_child_notify (GtkWidget *widget,  const gchar *child_property);
		gtk_widget_child_notify(gtkWidget, Str.toStringz(childProperty));
	}
	
	/**
	 * Stops emission of "child-notify" signals on widget. The
	 * signals are queued until gtk_widget_thaw_child_notify() is called
	 * on widget.
	 * This is the analogue of g_object_freeze_notify() for child properties.
	 */
	public void freezeChildNotify()
	{
		// void gtk_widget_freeze_child_notify (GtkWidget *widget);
		gtk_widget_freeze_child_notify(gtkWidget);
	}
	
	/**
	 * Gets the value set with gtk_widget_set_child_visible().
	 * If you feel a need to use this function, your code probably
	 * needs reorganization.
	 * This function is only useful for container implementations and
	 * never should be called by an application.
	 * Returns: TRUE if the widget is mapped with the parent.
	 */
	public int getChildVisible()
	{
		// gboolean gtk_widget_get_child_visible (GtkWidget *widget);
		return gtk_widget_get_child_visible(gtkWidget);
	}
	
	/**
	 * Returns the parent container of widget.
	 * Returns: the parent container of widget, or NULL. [transfer none]
	 */
	public Widget getParent()
	{
		// GtkWidget * gtk_widget_get_parent (GtkWidget *widget);
		auto p = gtk_widget_get_parent(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the settings object holding the settings used for this widget.
	 * Note that this function can only be called when the GtkWidget
	 * is attached to a toplevel, since the settings object is specific
	 * to a particular GdkScreen.
	 * Returns: the relevant GtkSettings object. [transfer none]
	 */
	public Settings getSettings()
	{
		// GtkSettings * gtk_widget_get_settings (GtkWidget *widget);
		auto p = gtk_widget_get_settings(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
	}
	
	/**
	 * Returns the clipboard object for the given selection to
	 * be used with widget. widget must have a GdkDisplay
	 * associated with it, so must be attached to a toplevel
	 * window.
	 * Since 2.2
	 * Params:
	 * selection = a GdkAtom which identifies the clipboard
	 * to use. GDK_SELECTION_CLIPBOARD gives the
	 * default clipboard. Another common value
	 * is GDK_SELECTION_PRIMARY, which gives
	 * the primary X selection.
	 * Returns: the appropriate clipboard object. If no clipboard already exists, a new one will be created. Once a clipboard object has been created, it is persistent for all time. [transfer none]
	 */
	public Clipboard getClipboard(GdkAtom selection)
	{
		// GtkClipboard * gtk_widget_get_clipboard (GtkWidget *widget,  GdkAtom selection);
		auto p = gtk_widget_get_clipboard(gtkWidget, selection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Clipboard)(cast(GtkClipboard*) p);
	}
	
	/**
	 * Get the GdkDisplay for the toplevel window associated with
	 * this widget. This function can only be called after the widget
	 * has been added to a widget hierarchy with a GtkWindow at the top.
	 * In general, you should only create display specific
	 * resources when a widget has been realized, and you should
	 * free those resources when the widget is unrealized.
	 * Since 2.2
	 * Returns: the GdkDisplay for the toplevel for this widget. [transfer none]
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gtk_widget_get_display (GtkWidget *widget);
		auto p = gtk_widget_get_display(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Get the root window where this widget is located. This function can
	 * only be called after the widget has been added to a widget
	 * hierarchy with GtkWindow at the top.
	 * The root window is useful for such purposes as creating a popup
	 * GdkWindow associated with the window. In general, you should only
	 * create display specific resources when a widget has been realized,
	 * and you should free those resources when the widget is unrealized.
	 * Since 2.2
	 * Returns: the GdkWindow root window for the toplevel for this widget. [transfer none]
	 */
	public Window getRootWindow()
	{
		// GdkWindow * gtk_widget_get_root_window (GtkWidget *widget);
		auto p = gtk_widget_get_root_window(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Get the GdkScreen from the toplevel window associated with
	 * this widget. This function can only be called after the widget
	 * has been added to a widget hierarchy with a GtkWindow
	 * at the top.
	 * In general, you should only create screen specific
	 * resources when a widget has been realized, and you should
	 * free those resources when the widget is unrealized.
	 * Since 2.2
	 * Returns: the GdkScreen for the toplevel for this widget. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gtk_widget_get_screen (GtkWidget *widget);
		auto p = gtk_widget_get_screen(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * Checks whether there is a GdkScreen is associated with
	 * this widget. All toplevel widgets have an associated
	 * screen, and all widgets added into a hierarchy with a toplevel
	 * window at the top.
	 * Since 2.2
	 * Returns: TRUE if there is a GdkScreen associcated with the widget.
	 */
	public int hasScreen()
	{
		// gboolean gtk_widget_has_screen (GtkWidget *widget);
		return gtk_widget_has_screen(gtkWidget);
	}
	
	/**
	 * Gets the size request that was explicitly set for the widget using
	 * gtk_widget_set_size_request(). A value of -1 stored in width or
	 * height indicates that that dimension has not been set explicitly
	 * and the natural requisition of the widget will be used intead. See
	 * gtk_widget_set_size_request(). To get the size a widget will
	 * actually request, call gtk_widget_get_preferred_size() instead of
	 * this function.
	 * Params:
	 * width = return location for width, or NULL. [out][allow-none]
	 * height = return location for height, or NULL. [out][allow-none]
	 */
	public void getSizeRequest(out int width, out int height)
	{
		// void gtk_widget_get_size_request (GtkWidget *widget,  gint *width,  gint *height);
		gtk_widget_get_size_request(gtkWidget, &width, &height);
	}
	
	/**
	 * Sets whether widget should be mapped along with its when its parent
	 * is mapped and widget has been shown with gtk_widget_show().
	 * The child visibility can be set for widget before it is added to
	 * a container with gtk_widget_set_parent(), to avoid mapping
	 * children unnecessary before immediately unmapping them. However
	 * it will be reset to its default state of TRUE when the widget
	 * is removed from a container.
	 * Note that changing the child visibility of a widget does not
	 * queue a resize on the widget. Most of the time, the size of
	 * a widget is computed from all visible children, whether or
	 * not they are mapped. If this is not the case, the container
	 * can queue a resize itself.
	 * This function is only useful for container implementations and
	 * never should be called by an application.
	 * Params:
	 * isVisible = if TRUE, widget should be mapped along with its parent.
	 */
	public void setChildVisible(int isVisible)
	{
		// void gtk_widget_set_child_visible (GtkWidget *widget,  gboolean is_visible);
		gtk_widget_set_child_visible(gtkWidget, isVisible);
	}
	
	/**
	 * Sets the minimum size of a widget; that is, the widget's size
	 * request will be at least width by height. You can use this
	 * function to force a widget to be larger than it normally would be.
	 * In most cases, gtk_window_set_default_size() is a better choice for
	 * toplevel windows than this function; setting the default size will
	 * still allow users to shrink the window. Setting the size request
	 * will force them to leave the window at least as large as the size
	 * request. When dealing with window sizes,
	 * gtk_window_set_geometry_hints() can be a useful function as well.
	 * Note the inherent danger of setting any fixed size - themes,
	 * translations into other languages, different fonts, and user action
	 * can all change the appropriate size for a given widget. So, it's
	 * basically impossible to hardcode a size that will always be
	 * correct.
	 * The size request of a widget is the smallest size a widget can
	 * accept while still functioning well and drawing itself correctly.
	 * However in some strange cases a widget may be allocated less than
	 * its requested size, and in many cases a widget may be allocated more
	 * space than it requested.
	 * If the size request in a given direction is -1 (unset), then
	 * the "natural" size request of the widget will be used instead.
	 * The size request set here does not include any margin from the
	 * GtkWidget properties margin-left, margin-right, margin-top, and
	 * margin-bottom, but it does include pretty much all other padding
	 * or border properties set by any subclass of GtkWidget.
	 * Params:
	 * width = width widget should request, or -1 to unset
	 * height = height widget should request, or -1 to unset
	 */
	public void setSizeRequest(int width, int height)
	{
		// void gtk_widget_set_size_request (GtkWidget *widget,  gint width,  gint height);
		gtk_widget_set_size_request(gtkWidget, width, height);
	}
	
	/**
	 * Reverts the effect of a previous call to gtk_widget_freeze_child_notify().
	 * This causes all queued "child-notify" signals on widget to be
	 * emitted.
	 */
	public void thawChildNotify()
	{
		// void gtk_widget_thaw_child_notify (GtkWidget *widget);
		gtk_widget_thaw_child_notify(gtkWidget);
	}
	
	/**
	 * Sets the "no-show-all" property, which determines whether
	 * calls to gtk_widget_show_all() will affect this widget.
	 * This is mostly for use in constructing widget hierarchies with externally
	 * controlled visibility, see GtkUIManager.
	 * Since 2.4
	 * Params:
	 * noShowAll = the new value for the "no-show-all" property
	 */
	public void setNoShowAll(int noShowAll)
	{
		// void gtk_widget_set_no_show_all (GtkWidget *widget,  gboolean no_show_all);
		gtk_widget_set_no_show_all(gtkWidget, noShowAll);
	}
	
	/**
	 * Returns the current value of the "no-show-all" property,
	 * which determines whether calls to gtk_widget_show_all()
	 * will affect this widget.
	 * Since 2.4
	 * Returns: the current value of the "no-show-all" property.
	 */
	public int getNoShowAll()
	{
		// gboolean gtk_widget_get_no_show_all (GtkWidget *widget);
		return gtk_widget_get_no_show_all(gtkWidget);
	}
	
	/**
	 * Returns a newly allocated list of the widgets, normally labels, for
	 * which this widget is the target of a mnemonic (see for example,
	 * gtk_label_set_mnemonic_widget()).
	 * The widgets in the list are not individually referenced. If you
	 * want to iterate through the list and perform actions involving
	 * callbacks that might destroy the widgets, you
	 * must call g_list_foreach (result,
	 * (GFunc)g_object_ref, NULL) first, and then unref all the
	 * widgets afterwards.
	 * Since 2.4
	 * Returns: the list of mnemonic labels; free this list with g_list_free() when you are done with it. [element-type GtkWidget][transfer container]
	 */
	public ListG listMnemonicLabels()
	{
		// GList * gtk_widget_list_mnemonic_labels (GtkWidget *widget);
		auto p = gtk_widget_list_mnemonic_labels(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Adds a widget to the list of mnemonic labels for
	 * this widget. (See gtk_widget_list_mnemonic_labels()). Note the
	 * list of mnemonic labels for the widget is cleared when the
	 * widget is destroyed, so the caller must make sure to update
	 * its internal state at this point as well, by using a connection
	 * to the "destroy" signal or a weak notifier.
	 * Since 2.4
	 * Params:
	 * label = a GtkWidget that acts as a mnemonic label for widget
	 */
	public void addMnemonicLabel(Widget label)
	{
		// void gtk_widget_add_mnemonic_label (GtkWidget *widget,  GtkWidget *label);
		gtk_widget_add_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
	}
	
	/**
	 * Removes a widget from the list of mnemonic labels for
	 * this widget. (See gtk_widget_list_mnemonic_labels()). The widget
	 * must have previously been added to the list with
	 * gtk_widget_add_mnemonic_label().
	 * Since 2.4
	 * Params:
	 * label = a GtkWidget that was previously set as a mnemnic label for
	 * widget with gtk_widget_add_mnemonic_label().
	 */
	public void removeMnemonicLabel(Widget label)
	{
		// void gtk_widget_remove_mnemonic_label (GtkWidget *widget,  GtkWidget *label);
		gtk_widget_remove_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
	}
	
	/**
	 * Whether widget can rely on having its alpha channel
	 * drawn correctly. On X11 this function returns whether a
	 * compositing manager is running for widget's screen.
	 * Please note that the semantics of this call will change
	 * in the future if used on a widget that has a composited
	 * window in its hierarchy (as set by gdk_window_set_composited()).
	 * Since 2.10
	 * Returns: TRUE if the widget can rely on its alpha channel being drawn correctly.
	 */
	public int isComposited()
	{
		// gboolean gtk_widget_is_composited (GtkWidget *widget);
		return gtk_widget_is_composited(gtkWidget);
	}
	
	/**
	 * Notifies the user about an input-related error on this widget.
	 * If the "gtk-error-bell" setting is TRUE, it calls
	 * gdk_window_beep(), otherwise it does nothing.
	 * Note that the effect of gdk_window_beep() can be configured in many
	 * ways, depending on the windowing backend and the desktop environment
	 * or window manager that is used.
	 * Since 2.12
	 */
	public void errorBell()
	{
		// void gtk_widget_error_bell (GtkWidget *widget);
		gtk_widget_error_bell(gtkWidget);
	}
	
	/**
	 * This function should be called whenever keyboard navigation within
	 * a single widget hits a boundary. The function emits the
	 * "keynav-failed" signal on the widget and its return
	 * value should be interpreted in a way similar to the return value of
	 * Since 2.12
	 * Params:
	 * direction = direction of focus movement
	 * Returns: TRUE if stopping keyboard navigation is fine, FALSE if the emitting widget should try to handle the keyboard navigation attempt in its parent container(s).
	 */
	public int keynavFailed(GtkDirectionType direction)
	{
		// gboolean gtk_widget_keynav_failed (GtkWidget *widget,  GtkDirectionType direction);
		return gtk_widget_keynav_failed(gtkWidget, direction);
	}
	
	/**
	 * Gets the contents of the tooltip for widget.
	 * Since 2.12
	 * Returns: the tooltip text, or NULL. You should free the returned string with g_free() when done.
	 */
	public string getTooltipMarkup()
	{
		// gchar * gtk_widget_get_tooltip_markup (GtkWidget *widget);
		return Str.toString(gtk_widget_get_tooltip_markup(gtkWidget));
	}
	
	/**
	 * Sets markup as the contents of the tooltip, which is marked up with
	 *  the Pango text markup language.
	 * This function will take care of setting "has-tooltip" to TRUE
	 * and of the default handler for the "query-tooltip" signal.
	 * See also the "tooltip-markup" property and
	 * gtk_tooltip_set_markup().
	 * Since 2.12
	 * Params:
	 * markup = the contents of the tooltip for widget, or NULL. [allow-none]
	 */
	public void setTooltipMarkup(string markup)
	{
		// void gtk_widget_set_tooltip_markup (GtkWidget *widget,  const gchar *markup);
		gtk_widget_set_tooltip_markup(gtkWidget, Str.toStringz(markup));
	}
	
	/**
	 * Gets the contents of the tooltip for widget.
	 * Since 2.12
	 * Returns: the tooltip text, or NULL. You should free the returned string with g_free() when done.
	 */
	public string getTooltipText()
	{
		// gchar * gtk_widget_get_tooltip_text (GtkWidget *widget);
		return Str.toString(gtk_widget_get_tooltip_text(gtkWidget));
	}
	
	/**
	 * Sets text as the contents of the tooltip. This function will take
	 * care of setting "has-tooltip" to TRUE and of the default
	 * handler for the "query-tooltip" signal.
	 * See also the "tooltip-text" property and gtk_tooltip_set_text().
	 * Since 2.12
	 * Params:
	 * text = the contents of the tooltip for widget. [allow-none]
	 */
	public void setTooltipText(string text)
	{
		// void gtk_widget_set_tooltip_text (GtkWidget *widget,  const gchar *text);
		gtk_widget_set_tooltip_text(gtkWidget, Str.toStringz(text));
	}
	
	/**
	 * Returns the GtkWindow of the current tooltip. This can be the
	 * GtkWindow created by default, or the custom tooltip window set
	 * using gtk_widget_set_tooltip_window().
	 * Since 2.12
	 * Returns: The GtkWindow of the current tooltip. [transfer none]
	 */
	public GtkWindow* getTooltipWindow()
	{
		// GtkWindow * gtk_widget_get_tooltip_window (GtkWidget *widget);
		return gtk_widget_get_tooltip_window(gtkWidget);
	}
	
	/**
	 * Replaces the default, usually yellow, window used for displaying
	 * tooltips with custom_window. GTK+ will take care of showing and
	 * hiding custom_window at the right moment, to behave likewise as
	 * the default tooltip window. If custom_window is NULL, the default
	 * tooltip window will be used.
	 * If the custom window should have the default theming it needs to
	 * have the name "gtk-tooltip", see gtk_widget_set_name().
	 * Since 2.12
	 * Params:
	 * customWindow = a GtkWindow, or NULL. [allow-none]
	 */
	public void setTooltipWindow(GtkWindow* customWindow)
	{
		// void gtk_widget_set_tooltip_window (GtkWidget *widget,  GtkWindow *custom_window);
		gtk_widget_set_tooltip_window(gtkWidget, customWindow);
	}
	
	/**
	 * Returns the current value of the has-tooltip property. See
	 * "has-tooltip" for more information.
	 * Since 2.12
	 * Returns: current value of has-tooltip on widget.
	 */
	public int getHasTooltip()
	{
		// gboolean gtk_widget_get_has_tooltip (GtkWidget *widget);
		return gtk_widget_get_has_tooltip(gtkWidget);
	}
	
	/**
	 * Sets the has-tooltip property on widget to has_tooltip. See
	 * "has-tooltip" for more information.
	 * Since 2.12
	 * Params:
	 * hasTooltip = whether or not widget has a tooltip.
	 */
	public void setHasTooltip(int hasTooltip)
	{
		// void gtk_widget_set_has_tooltip (GtkWidget *widget,  gboolean has_tooltip);
		gtk_widget_set_has_tooltip(gtkWidget, hasTooltip);
	}
	
	/**
	 * Triggers a tooltip query on the display where the toplevel of widget
	 * is located. See gtk_tooltip_trigger_tooltip_query() for more
	 * information.
	 * Since 2.12
	 */
	public void triggerTooltipQuery()
	{
		// void gtk_widget_trigger_tooltip_query (GtkWidget *widget);
		gtk_widget_trigger_tooltip_query(gtkWidget);
	}
	
	/**
	 * Returns the widget's window if it is realized, NULL otherwise
	 * Since 2.14
	 * Returns: widget's window. [transfer none]
	 */
	public Window getWindow()
	{
		// GdkWindow * gtk_widget_get_window (GtkWidget *widget);
		auto p = gtk_widget_get_window(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Registers a GdkWindow with the widget and sets it up so that
	 * the widget recieves events for it. Call gtk_widget_unregister_window()
	 * when destroying the window.
	 * Before 3.8 you needed to call gdk_window_set_user_data() directly to set
	 * this up. This is now deprecated and you should use gtk_widget_register_window()
	 * instead. Old code will keep working as is, although some new features like
	 * transparency might not work perfectly.
	 * Params:
	 * window = a GdkWindow
	 * Since 3.8
	 */
	public void registerWindow(Window window)
	{
		// void gtk_widget_register_window (GtkWidget *widget,  GdkWindow *window);
		gtk_widget_register_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Unregisters a GdkWindow from the widget that was previously set up with
	 * gtk_widget_register_window(). You need to call this when the window is
	 * no longer used by the widget, such as when you destroy it.
	 * Params:
	 * window = a GdkWindow
	 * Since 3.8
	 */
	public void unregisterWindow(Window window)
	{
		// void gtk_widget_unregister_window (GtkWidget *widget,  GdkWindow *window);
		gtk_widget_unregister_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * This function is supposed to be called in "draw"
	 * implementations for widgets that support multiple windows.
	 * cr must be untransformed from invoking of the draw function.
	 * This function will return TRUE if the contents of the given
	 * window are supposed to be drawn and FALSE otherwise. Note
	 * that when the drawing was not initiated by the windowing
	 * system this function will return TRUE for all windows, so
	 * you need to draw the bottommost window first. Also, do not
	 * use "else if" statements to check which window should be drawn.
	 * Params:
	 * cr = a cairo context
	 * window = the window to check. window may not be an input-only
	 * window.
	 * Returns: TRUE if window should be drawn Since 3.0
	 */
	public static int cairoShouldDrawWindow(Context cr, Window window)
	{
		// gboolean gtk_cairo_should_draw_window (cairo_t *cr,  GdkWindow *window);
		return gtk_cairo_should_draw_window((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Transforms the given cairo context cr that from widget-relative
	 * coordinates to window-relative coordinates.
	 * If the widget's window is not an ancestor of window, no
	 * modification will be applied.
	 * This is the inverse to the transformation GTK applies when
	 * preparing an expose event to be emitted with the "draw"
	 * signal. It is intended to help porting multiwindow widgets from
	 * GTK+ 2 to the rendering architecture of GTK+ 3.
	 * Params:
	 * cr = the cairo context to transform
	 * widget = the widget the context is currently centered for
	 * window = the window to transform the context to
	 * Since 3.0
	 */
	public static void cairoTransformToWindow(Context cr, Widget widget, Window window)
	{
		// void gtk_cairo_transform_to_window (cairo_t *cr,  GtkWidget *widget,  GdkWindow *window);
		gtk_cairo_transform_to_window((cr is null) ? null : cr.getContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Returns the width that has currently been allocated to widget.
	 * This function is intended to be used when implementing handlers
	 * for the "draw" function.
	 * Returns: the width of the widget
	 */
	public int getAllocatedWidth()
	{
		// int gtk_widget_get_allocated_width (GtkWidget *widget);
		return gtk_widget_get_allocated_width(gtkWidget);
	}
	
	/**
	 * Returns the height that has currently been allocated to widget.
	 * This function is intended to be used when implementing handlers
	 * for the "draw" function.
	 * Returns: the height of the widget
	 */
	public int getAllocatedHeight()
	{
		// int gtk_widget_get_allocated_height (GtkWidget *widget);
		return gtk_widget_get_allocated_height(gtkWidget);
	}
	
	/**
	 * Retrieves the widget's allocation.
	 * Note, when implementing a GtkContainer: a widget's allocation will
	 * be its "adjusted" allocation, that is, the widget's parent
	 * container typically calls gtk_widget_size_allocate() with an
	 * allocation, and that allocation is then adjusted (to handle margin
	 * and alignment for example) before assignment to the widget.
	 * gtk_widget_get_allocation() returns the adjusted allocation that
	 * was actually assigned to the widget. The adjusted allocation is
	 * guaranteed to be completely contained within the
	 * gtk_widget_size_allocate() allocation, however. So a GtkContainer
	 * is guaranteed that its children stay inside the assigned bounds,
	 * but not that they have exactly the bounds the container assigned.
	 * There is no way to get the original allocation assigned by
	 * gtk_widget_size_allocate(), since it isn't stored; if a container
	 * implementation needs that information it will have to track it itself.
	 * Since 2.18
	 * Params:
	 * allocation = a pointer to a GtkAllocation to copy to. [out]
	 */
	public void getAllocation(out GtkAllocation allocation)
	{
		// void gtk_widget_get_allocation (GtkWidget *widget,  GtkAllocation *allocation);
		gtk_widget_get_allocation(gtkWidget, &allocation);
	}
	
	/**
	 * Sets the widget's allocation. This should not be used
	 * directly, but from within a widget's size_allocate method.
	 * The allocation set should be the "adjusted" or actual
	 * allocation. If you're implementing a GtkContainer, you want to use
	 * gtk_widget_size_allocate() instead of gtk_widget_set_allocation().
	 * The GtkWidgetClass::adjust_size_allocation virtual method adjusts the
	 * allocation inside gtk_widget_size_allocate() to create an adjusted
	 * allocation.
	 * Since 2.18
	 * Params:
	 * allocation = a pointer to a GtkAllocation to copy from
	 */
	public void setAllocation(ref GtkAllocation allocation)
	{
		// void gtk_widget_set_allocation (GtkWidget *widget,  const GtkAllocation *allocation);
		gtk_widget_set_allocation(gtkWidget, &allocation);
	}
	
	/**
	 * Determines whether the application intends to draw on the widget in
	 * an "draw" handler.
	 * See gtk_widget_set_app_paintable()
	 * Since 2.18
	 * Returns: TRUE if the widget is app paintable
	 */
	public int getAppPaintable()
	{
		// gboolean gtk_widget_get_app_paintable (GtkWidget *widget);
		return gtk_widget_get_app_paintable(gtkWidget);
	}
	
	/**
	 * Determines whether widget can be a default widget. See
	 * gtk_widget_set_can_default().
	 * Since 2.18
	 * Returns: TRUE if widget can be a default widget, FALSE otherwise
	 */
	public int getCanDefault()
	{
		// gboolean gtk_widget_get_can_default (GtkWidget *widget);
		return gtk_widget_get_can_default(gtkWidget);
	}
	
	/**
	 * Specifies whether widget can be a default widget. See
	 * gtk_widget_grab_default() for details about the meaning of
	 * "default".
	 * Since 2.18
	 * Params:
	 * canDefault = whether or not widget can be a default widget.
	 */
	public void setCanDefault(int canDefault)
	{
		// void gtk_widget_set_can_default (GtkWidget *widget,  gboolean can_default);
		gtk_widget_set_can_default(gtkWidget, canDefault);
	}
	
	/**
	 * Determines whether widget can own the input focus. See
	 * gtk_widget_set_can_focus().
	 * Since 2.18
	 * Returns: TRUE if widget can own the input focus, FALSE otherwise
	 */
	public int getCanFocus()
	{
		// gboolean gtk_widget_get_can_focus (GtkWidget *widget);
		return gtk_widget_get_can_focus(gtkWidget);
	}
	
	/**
	 * Specifies whether widget can own the input focus. See
	 * gtk_widget_grab_focus() for actually setting the input focus on a
	 * widget.
	 * Since 2.18
	 * Params:
	 * canFocus = whether or not widget can own the input focus.
	 */
	public void setCanFocus(int canFocus)
	{
		// void gtk_widget_set_can_focus (GtkWidget *widget,  gboolean can_focus);
		gtk_widget_set_can_focus(gtkWidget, canFocus);
	}
	
	/**
	 * Determines whether the widget is double buffered.
	 * See gtk_widget_set_double_buffered()
	 * Since 2.18
	 * Returns: TRUE if the widget is double buffered
	 */
	public int getDoubleBuffered()
	{
		// gboolean gtk_widget_get_double_buffered (GtkWidget *widget);
		return gtk_widget_get_double_buffered(gtkWidget);
	}
	
	/**
	 * Determines whether widget has a GdkWindow of its own. See
	 * gtk_widget_set_has_window().
	 * Since 2.18
	 * Returns: TRUE if widget has a window, FALSE otherwise
	 */
	public int getHasWindow()
	{
		// gboolean gtk_widget_get_has_window (GtkWidget *widget);
		return gtk_widget_get_has_window(gtkWidget);
	}
	
	/**
	 * Specifies whether widget has a GdkWindow of its own. Note that
	 * all realized widgets have a non-NULL "window" pointer
	 * (gtk_widget_get_window() never returns a NULL window when a widget
	 * is realized), but for many of them it's actually the GdkWindow of
	 * one of its parent widgets. Widgets that do not create a window for
	 * themselves in "realize" must announce this by
	 * calling this function with has_window = FALSE.
	 * This function should only be called by widget implementations,
	 * and they should call it in their init() function.
	 * Since 2.18
	 * Params:
	 * hasWindow = whether or not widget has a window.
	 */
	public void setHasWindow(int hasWindow)
	{
		// void gtk_widget_set_has_window (GtkWidget *widget,  gboolean has_window);
		gtk_widget_set_has_window(gtkWidget, hasWindow);
	}
	
	/**
	 * Returns the widget's sensitivity (in the sense of returning
	 * the value that has been set using gtk_widget_set_sensitive()).
	 * The effective sensitivity of a widget is however determined by both its
	 * own and its parent widget's sensitivity. See gtk_widget_is_sensitive().
	 * Since 2.18
	 * Returns: TRUE if the widget is sensitive
	 */
	public int getSensitive()
	{
		// gboolean gtk_widget_get_sensitive (GtkWidget *widget);
		return gtk_widget_get_sensitive(gtkWidget);
	}
	
	/**
	 * Returns the widget's effective sensitivity, which means
	 * it is sensitive itself and also its parent widget is sensitive
	 * Since 2.18
	 * Returns: TRUE if the widget is effectively sensitive
	 */
	public int isSensitive()
	{
		// gboolean gtk_widget_is_sensitive (GtkWidget *widget);
		return gtk_widget_is_sensitive(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_get_state is deprecated and should not be used in newly-written code. 3.0. Use gtk_widget_get_state_flags() instead.
	 * Returns the widget's state. See gtk_widget_set_state().
	 * Since 2.18
	 * Returns: the state of widget.
	 */
	public GtkStateType getState()
	{
		// GtkStateType gtk_widget_get_state (GtkWidget *widget);
		return gtk_widget_get_state(gtkWidget);
	}
	
	/**
	 * Determines whether the widget is visible. If you want to
	 * take into account whether the widget's parent is also marked as
	 * visible, use gtk_widget_is_visible() instead.
	 * This function does not check if the widget is obscured in any way.
	 * See gtk_widget_set_visible().
	 * Since 2.18
	 * Returns: TRUE if the widget is visible
	 */
	public int getVisible()
	{
		// gboolean gtk_widget_get_visible (GtkWidget *widget);
		return gtk_widget_get_visible(gtkWidget);
	}
	
	/**
	 * Determines whether the widget and all its parents are marked as
	 * visible.
	 * This function does not check if the widget is obscured in any way.
	 * See also gtk_widget_get_visible() and gtk_widget_set_visible()
	 * Returns: TRUE if the widget and all its parents are visible Since 3.8
	 */
	public int isVisible()
	{
		// gboolean gtk_widget_is_visible (GtkWidget *widget);
		return gtk_widget_is_visible(gtkWidget);
	}
	
	/**
	 * Sets the visibility state of widget. Note that setting this to
	 * TRUE doesn't mean the widget is actually viewable, see
	 * gtk_widget_get_visible().
	 * This function simply calls gtk_widget_show() or gtk_widget_hide()
	 * but is nicer to use when the visibility of the widget depends on
	 * some condition.
	 * Since 2.18
	 * Params:
	 * visible = whether the widget should be shown or not
	 */
	public void setVisible(int visible)
	{
		// void gtk_widget_set_visible (GtkWidget *widget,  gboolean visible);
		gtk_widget_set_visible(gtkWidget, visible);
	}
	
	/**
	 * This function is for use in widget implementations. Turns on flag
	 * values in the current widget state (insensitive, prelighted, etc.).
	 * It is worth mentioning that any other state than GTK_STATE_FLAG_INSENSITIVE,
	 * will be propagated down to all non-internal children if widget is a
	 * GtkContainer, while GTK_STATE_FLAG_INSENSITIVE itself will be propagated
	 * down to all GtkContainer children by different means than turning on the
	 * state flag down the hierarchy, both gtk_widget_get_state_flags() and
	 * gtk_widget_is_sensitive() will make use of these.
	 * Params:
	 * flags = State flags to turn on
	 * clear = Whether to clear state before turning on flags
	 * Since 3.0
	 */
	public void setStateFlags(GtkStateFlags flags, int clear)
	{
		// void gtk_widget_set_state_flags (GtkWidget *widget,  GtkStateFlags flags,  gboolean clear);
		gtk_widget_set_state_flags(gtkWidget, flags, clear);
	}
	
	/**
	 * This function is for use in widget implementations. Turns off flag
	 * values for the current widget state (insensitive, prelighted, etc.).
	 * See gtk_widget_set_state_flags().
	 * Params:
	 * flags = State flags to turn off
	 * Since 3.0
	 */
	public void unsetStateFlags(GtkStateFlags flags)
	{
		// void gtk_widget_unset_state_flags (GtkWidget *widget,  GtkStateFlags flags);
		gtk_widget_unset_state_flags(gtkWidget, flags);
	}
	
	/**
	 * Returns the widget state as a flag set. It is worth mentioning
	 * that the effective GTK_STATE_FLAG_INSENSITIVE state will be
	 * returned, that is, also based on parent insensitivity, even if
	 * widget itself is sensitive.
	 * Returns: The state flags for widget Since 3.0
	 */
	public GtkStateFlags getStateFlags()
	{
		// GtkStateFlags gtk_widget_get_state_flags (GtkWidget *widget);
		return gtk_widget_get_state_flags(gtkWidget);
	}
	
	/**
	 * Determines whether widget is the current default widget within its
	 * toplevel. See gtk_widget_set_can_default().
	 * Since 2.18
	 * Returns: TRUE if widget is the current default widget within its toplevel, FALSE otherwise
	 */
	public int hasDefault()
	{
		// gboolean gtk_widget_has_default (GtkWidget *widget);
		return gtk_widget_has_default(gtkWidget);
	}
	
	/**
	 * Determines if the widget has the global input focus. See
	 * gtk_widget_is_focus() for the difference between having the global
	 * input focus, and only having the focus within a toplevel.
	 * Since 2.18
	 * Returns: TRUE if the widget has the global input focus.
	 */
	public int hasFocus()
	{
		// gboolean gtk_widget_has_focus (GtkWidget *widget);
		return gtk_widget_has_focus(gtkWidget);
	}
	
	/**
	 * Determines if the widget should show a visible indication that
	 * it has the global input focus. This is a convenience function for
	 * use in ::draw handlers that takes into account whether focus
	 * indication should currently be shown in the toplevel window of
	 * widget. See gtk_window_get_focus_visible() for more information
	 * about focus indication.
	 * To find out if the widget has the global input focus, use
	 * gtk_widget_has_focus().
	 * Returns: TRUE if the widget should display a 'focus rectangle' Since 3.2
	 */
	public int hasVisibleFocus()
	{
		// gboolean gtk_widget_has_visible_focus (GtkWidget *widget);
		return gtk_widget_has_visible_focus(gtkWidget);
	}
	
	/**
	 * Determines whether the widget is currently grabbing events, so it
	 * is the only widget receiving input events (keyboard and mouse).
	 * See also gtk_grab_add().
	 * Since 2.18
	 * Returns: TRUE if the widget is in the grab_widgets stack
	 */
	public int hasGrab()
	{
		// gboolean gtk_widget_has_grab (GtkWidget *widget);
		return gtk_widget_has_grab(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_has_rc_style has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Determines if the widget style has been looked up through the rc mechanism.
	 * Since 2.20
	 * Returns: TRUE if the widget has been looked up through the rc mechanism, FALSE otherwise.
	 */
	public int hasRcStyle()
	{
		// gboolean gtk_widget_has_rc_style (GtkWidget *widget);
		return gtk_widget_has_rc_style(gtkWidget);
	}
	
	/**
	 * Determines whether widget can be drawn to. A widget can be drawn
	 * to if it is mapped and visible.
	 * Since 2.18
	 * Returns: TRUE if widget is drawable, FALSE otherwise
	 */
	public int isDrawable()
	{
		// gboolean gtk_widget_is_drawable (GtkWidget *widget);
		return gtk_widget_is_drawable(gtkWidget);
	}
	
	/**
	 * Determines whether widget is a toplevel widget.
	 * Currently only GtkWindow and GtkInvisible (and out-of-process
	 * GtkPlugs) are toplevel widgets. Toplevel widgets have no parent
	 * widget.
	 * Since 2.18
	 * Returns: TRUE if widget is a toplevel, FALSE otherwise
	 */
	public int isToplevel()
	{
		// gboolean gtk_widget_is_toplevel (GtkWidget *widget);
		return gtk_widget_is_toplevel(gtkWidget);
	}
	
	/**
	 * Sets a widget's window. This function should only be used in a
	 * widget's "realize" implementation. The window passed is
	 * usually either new window created with gdk_window_new(), or the
	 * window of its parent widget as returned by
	 * gtk_widget_get_parent_window().
	 * Widgets must indicate whether they will create their own GdkWindow
	 * by calling gtk_widget_set_has_window(). This is usually done in the
	 * widget's init() function.
	 * Note
	 * This function does not add any reference to window.
	 * Since 2.18
	 * Params:
	 * window = a GdkWindow. [transfer full]
	 */
	public void setWindow(Window window)
	{
		// void gtk_widget_set_window (GtkWidget *widget,  GdkWindow *window);
		gtk_widget_set_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Specifies whether widget will be treated as the default widget
	 * within its toplevel when it has the focus, even if another widget
	 * is the default.
	 * See gtk_widget_grab_default() for details about the meaning of
	 * "default".
	 * Since 2.18
	 * Params:
	 * receivesDefault = whether or not widget can be a default widget.
	 */
	public void setReceivesDefault(int receivesDefault)
	{
		// void gtk_widget_set_receives_default (GtkWidget *widget,  gboolean receives_default);
		gtk_widget_set_receives_default(gtkWidget, receivesDefault);
	}
	
	/**
	 * Determines whether widget is always treated as the default widget
	 * within its toplevel when it has the focus, even if another widget
	 * is the default.
	 * See gtk_widget_set_receives_default().
	 * Since 2.18
	 * Returns: TRUE if widget acts as the default widget when focussed, FALSE otherwise
	 */
	public int getReceivesDefault()
	{
		// gboolean gtk_widget_get_receives_default (GtkWidget *widget);
		return gtk_widget_get_receives_default(gtkWidget);
	}
	
	/**
	 * Enables or disables multiple pointer awareness. If this setting is TRUE,
	 * widget will start receiving multiple, per device enter/leave events. Note
	 * that if custom GdkWindows are created in "realize",
	 * gdk_window_set_support_multidevice() will have to be called manually on them.
	 * Params:
	 * supportMultidevice = TRUE to support input from multiple devices.
	 * Since 3.0
	 */
	public void setSupportMultidevice(int supportMultidevice)
	{
		// void gtk_widget_set_support_multidevice (GtkWidget *widget,  gboolean support_multidevice);
		gtk_widget_set_support_multidevice(gtkWidget, supportMultidevice);
	}
	
	/**
	 * Returns TRUE if widget is multiple pointer aware. See
	 * gtk_widget_set_support_multidevice() for more information.
	 * Returns: TRUE if widget is multidevice aware.
	 */
	public int getSupportMultidevice()
	{
		// gboolean gtk_widget_get_support_multidevice (GtkWidget *widget);
		return gtk_widget_get_support_multidevice(gtkWidget);
	}
	
	/**
	 * Marks the widget as being realized.
	 * This function should only ever be called in a derived widget's
	 * "realize" or "unrealize" implementation.
	 * Since 2.20
	 * Params:
	 * realized = TRUE to mark the widget as realized
	 */
	public void setRealized(int realized)
	{
		// void gtk_widget_set_realized (GtkWidget *widget,  gboolean realized);
		gtk_widget_set_realized(gtkWidget, realized);
	}
	
	/**
	 * Determines whether widget is realized.
	 * Since 2.20
	 * Returns: TRUE if widget is realized, FALSE otherwise
	 */
	public int getRealized()
	{
		// gboolean gtk_widget_get_realized (GtkWidget *widget);
		return gtk_widget_get_realized(gtkWidget);
	}
	
	/**
	 * Marks the widget as being realized.
	 * This function should only ever be called in a derived widget's
	 * "map" or "unmap" implementation.
	 * Since 2.20
	 * Params:
	 * mapped = TRUE to mark the widget as mapped
	 */
	public void setMapped(int mapped)
	{
		// void gtk_widget_set_mapped (GtkWidget *widget,  gboolean mapped);
		gtk_widget_set_mapped(gtkWidget, mapped);
	}
	
	/**
	 * Whether the widget is mapped.
	 * Since 2.20
	 * Returns: TRUE if the widget is mapped, FALSE otherwise.
	 */
	public int getMapped()
	{
		// gboolean gtk_widget_get_mapped (GtkWidget *widget);
		return gtk_widget_get_mapped(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_get_requisition has been deprecated since version 3.0 and should not be used in newly-written code. The GtkRequisition cache on the widget was
	 * removed, If you need to cache sizes across requests and allocations,
	 * add an explicit cache to the widget in question instead.
	 * Retrieves the widget's requisition.
	 * This function should only be used by widget implementations in
	 * order to figure whether the widget's requisition has actually
	 * changed after some internal state change (so that they can call
	 * gtk_widget_queue_resize() instead of gtk_widget_queue_draw()).
	 * Normally, gtk_widget_size_request() should be used.
	 * Since 2.20
	 * Params:
	 * requisition = a pointer to a GtkRequisition to copy to. [out]
	 */
	public void getRequisition(out GtkRequisition requisition)
	{
		// void gtk_widget_get_requisition (GtkWidget *widget,  GtkRequisition *requisition);
		gtk_widget_get_requisition(gtkWidget, &requisition);
	}
	
	/**
	 * Returns TRUE if device has been shadowed by a GTK+
	 * device grab on another widget, so it would stop sending
	 * events to widget. This may be used in the
	 * "grab-notify" signal to check for specific
	 * devices. See gtk_device_grab_add().
	 * Params:
	 * device = a GdkDevice
	 * Returns: TRUE if there is an ongoing grab on device by another GtkWidget than widget. Since 3.0
	 */
	public int deviceIsShadowed(Device device)
	{
		// gboolean gtk_widget_device_is_shadowed (GtkWidget *widget,  GdkDevice *device);
		return gtk_widget_device_is_shadowed(gtkWidget, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Returns the modifier mask the widget's windowing system backend
	 * uses for a particular purpose.
	 * See gdk_keymap_get_modifier_mask().
	 * Params:
	 * intent = the use case for the modifier mask
	 * Returns: the modifier mask used for intent. Since 3.4
	 */
	public GdkModifierType getModifierMask(GdkModifierIntent intent)
	{
		// GdkModifierType gtk_widget_get_modifier_mask (GtkWidget *widget,  GdkModifierIntent intent);
		return gtk_widget_get_modifier_mask(gtkWidget, intent);
	}
	
	/**
	 * Inserts group into widget. Children of widget that implement
	 * GtkActionable can then be associated with actions in group by
	 * setting their 'action-name' to
	 * prefix.action-name.
	 * Params:
	 * name = the prefix for actions in group
	 * group = a GActionGroup
	 * Since 3.6
	 */
	public void insertActionGroup(string name, ActionGroupIF group)
	{
		// void gtk_widget_insert_action_group (GtkWidget *widget,  const gchar *name,  GActionGroup *group);
		gtk_widget_insert_action_group(gtkWidget, Str.toStringz(name), (group is null) ? null : group.getActionGroupTStruct());
	}
	
	/**
	 * Fetches the requested opacity for this widget. See
	 * gtk_widget_set_opacity().
	 * Returns: the requested opacity for this widget. Since 3.8
	 */
	public double getOpacity()
	{
		// double gtk_widget_get_opacity (GtkWidget *widget);
		return gtk_widget_get_opacity(gtkWidget);
	}
	
	/**
	 * Request the widget to be rendered partially transparent,
	 * with opacity 0 being fully transparent and 1 fully opaque. (Opacity values
	 * are clamped to the [0,1] range.).
	 * This works on both toplevel widget, and child widgets, although there
	 * Params:
	 * opacity = desired opacity, between 0 and 1
	 * Since 3.8
	 */
	public void setOpacity(double opacity)
	{
		// void gtk_widget_set_opacity (GtkWidget *widget,  double opacity);
		gtk_widget_set_opacity(gtkWidget, opacity);
	}
	
	/**
	 * Returns the GtkWidgetPath representing widget, if the widget
	 * is not connected to a toplevel widget, a partial path will be
	 * created.
	 * Returns: The GtkWidgetPath representing widget. [transfer none]
	 */
	public WidgetPath getPath()
	{
		// GtkWidgetPath * gtk_widget_get_path (GtkWidget *widget);
		auto p = gtk_widget_get_path(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Returns the style context associated to widget.
	 * Returns: a GtkStyleContext. This memory is owned by widget and must not be freed. [transfer none]
	 */
	public StyleContext getStyleContext()
	{
		// GtkStyleContext * gtk_widget_get_style_context (GtkWidget *widget);
		auto p = gtk_widget_get_style_context(gtkWidget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
	}
	
	/**
	 * Updates the style context of widget and all descendents
	 * by updating its widget path. GtkContainers may want
	 * to use this on a child when reordering it in a way that a different
	 * style might apply to it. See also gtk_container_get_path_for_child().
	 */
	public void resetStyle()
	{
		// void gtk_widget_reset_style (GtkWidget *widget);
		gtk_widget_reset_style(gtkWidget);
	}
	
	/**
	 * Retrieves a widget's initial minimum and natural height.
	 * Note
	 * This call is specific to width-for-height requests.
	 * The returned request will be modified by the
	 * GtkWidgetClass::adjust_size_request virtual method and by any
	 * GtkSizeGroups that have been applied. That is, the returned request
	 * is the one that should be used for layout, not necessarily the one
	 * returned by the widget itself.
	 * Params:
	 * minimumHeight = location to store the minimum height, or NULL. [out][allow-none]
	 * naturalHeight = location to store the natural height, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredHeight(out int minimumHeight, out int naturalHeight)
	{
		// void gtk_widget_get_preferred_height (GtkWidget *widget,  gint *minimum_height,  gint *natural_height);
		gtk_widget_get_preferred_height(gtkWidget, &minimumHeight, &naturalHeight);
	}
	
	/**
	 * Retrieves a widget's initial minimum and natural width.
	 * Note
	 * This call is specific to height-for-width
	 * requests.
	 * The returned request will be modified by the
	 * GtkWidgetClass::adjust_size_request virtual method and by any
	 * GtkSizeGroups that have been applied. That is, the returned request
	 * is the one that should be used for layout, not necessarily the one
	 * returned by the widget itself.
	 * Params:
	 * minimumWidth = location to store the minimum width, or NULL. [out][allow-none]
	 * naturalWidth = location to store the natural width, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredWidth(out int minimumWidth, out int naturalWidth)
	{
		// void gtk_widget_get_preferred_width (GtkWidget *widget,  gint *minimum_width,  gint *natural_width);
		gtk_widget_get_preferred_width(gtkWidget, &minimumWidth, &naturalWidth);
	}
	
	/**
	 * Retrieves a widget's minimum and natural height if it would be given
	 * the specified width.
	 * The returned request will be modified by the
	 * GtkWidgetClass::adjust_size_request virtual method and by any
	 * GtkSizeGroups that have been applied. That is, the returned request
	 * is the one that should be used for layout, not necessarily the one
	 * returned by the widget itself.
	 * Params:
	 * width = the width which is available for allocation
	 * minimumHeight = location for storing the minimum height, or NULL. [out][allow-none]
	 * naturalHeight = location for storing the natural height, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredHeightForWidth(int width, out int minimumHeight, out int naturalHeight)
	{
		// void gtk_widget_get_preferred_height_for_width  (GtkWidget *widget,  gint width,  gint *minimum_height,  gint *natural_height);
		gtk_widget_get_preferred_height_for_width(gtkWidget, width, &minimumHeight, &naturalHeight);
	}
	
	/**
	 * Retrieves a widget's minimum and natural width if it would be given
	 * the specified height.
	 * The returned request will be modified by the
	 * GtkWidgetClass::adjust_size_request virtual method and by any
	 * GtkSizeGroups that have been applied. That is, the returned request
	 * is the one that should be used for layout, not necessarily the one
	 * returned by the widget itself.
	 * Params:
	 * height = the height which is available for allocation
	 * minimumWidth = location for storing the minimum width, or NULL. [out][allow-none]
	 * naturalWidth = location for storing the natural width, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredWidthForHeight(int height, out int minimumWidth, out int naturalWidth)
	{
		// void gtk_widget_get_preferred_width_for_height  (GtkWidget *widget,  gint height,  gint *minimum_width,  gint *natural_width);
		gtk_widget_get_preferred_width_for_height(gtkWidget, height, &minimumWidth, &naturalWidth);
	}
	
	/**
	 * Gets whether the widget prefers a height-for-width layout
	 * or a width-for-height layout.
	 * Note
	 * GtkBin widgets generally propagate the preference of
	 * their child, container widgets need to request something either in
	 * context of their children or in context of their allocation
	 * capabilities.
	 * Returns: The GtkSizeRequestMode preferred by widget. Since 3.0
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		// GtkSizeRequestMode gtk_widget_get_request_mode (GtkWidget *widget);
		return gtk_widget_get_request_mode(gtkWidget);
	}
	
	/**
	 * Retrieves the minimum and natural size of a widget, taking
	 * into account the widget's preference for height-for-width management.
	 * This is used to retrieve a suitable size by container widgets which do
	 * not impose any restrictions on the child placement. It can be used
	 * to deduce toplevel window and menu sizes as well as child widgets in
	 * free-form containers such as GtkLayout.
	 * Note
	 * Handle with care. Note that the natural height of a height-for-width
	 * widget will generally be a smaller size than the minimum height, since the required
	 * height for the natural width is generally smaller than the required height for
	 * the minimum width.
	 * Params:
	 * minimumSize = location for storing the minimum size, or NULL. [out][allow-none]
	 * naturalSize = location for storing the natural size, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredSize(out GtkRequisition minimumSize, out GtkRequisition naturalSize)
	{
		// void gtk_widget_get_preferred_size (GtkWidget *widget,  GtkRequisition *minimum_size,  GtkRequisition *natural_size);
		gtk_widget_get_preferred_size(gtkWidget, &minimumSize, &naturalSize);
	}
	
	/**
	 * Distributes extra_space to child sizes by bringing smaller
	 * children up to natural size first.
	 * The remaining space will be added to the minimum_size member of the
	 * GtkRequestedSize struct. If all sizes reach their natural size then
	 * the remaining space is returned.
	 * Params:
	 * extraSpace = Extra space to redistribute among children after subtracting
	 * minimum sizes and any child padding from the overall allocation
	 * sizes = An array of structs with a client pointer and a minimum/natural size
	 * in the orientation of the allocation.
	 * Returns: The remainder of extra_space after redistributing space to sizes.
	 */
	public static int distributeNaturalAllocation(int extraSpace, GtkRequestedSize[] sizes)
	{
		// gint gtk_distribute_natural_allocation (gint extra_space,  guint n_requested_sizes,  GtkRequestedSize *sizes);
		return gtk_distribute_natural_allocation(extraSpace, cast(int) sizes.length, sizes.ptr);
	}
	
	/**
	 * Gets the value of the "halign" property.
	 * Returns: the horizontal alignment of widget
	 */
	public GtkAlign getHalign()
	{
		// GtkAlign gtk_widget_get_halign (GtkWidget *widget);
		return gtk_widget_get_halign(gtkWidget);
	}
	
	/**
	 * Sets the horizontal alignment of widget.
	 * See the "halign" property.
	 * Params:
	 * align = the horizontal alignment
	 */
	public void setHalign(GtkAlign alig)
	{
		// void gtk_widget_set_halign (GtkWidget *widget,  GtkAlign align);
		gtk_widget_set_halign(gtkWidget, alig);
	}
	
	/**
	 * Gets the value of the "valign" property.
	 * Returns: the vertical alignment of widget
	 */
	public GtkAlign getValign()
	{
		// GtkAlign gtk_widget_get_valign (GtkWidget *widget);
		return gtk_widget_get_valign(gtkWidget);
	}
	
	/**
	 * Sets the vertical alignment of widget.
	 * See the "valign" property.
	 * Params:
	 * align = the vertical alignment
	 */
	public void setValign(GtkAlign alig)
	{
		// void gtk_widget_set_valign (GtkWidget *widget,  GtkAlign align);
		gtk_widget_set_valign(gtkWidget, alig);
	}
	
	/**
	 * Gets the value of the "margin-left" property.
	 * Returns: The left margin of widget Since 3.0
	 */
	public int getMarginLeft()
	{
		// gint gtk_widget_get_margin_left (GtkWidget *widget);
		return gtk_widget_get_margin_left(gtkWidget);
	}
	
	/**
	 * Sets the left margin of widget.
	 * See the "margin-left" property.
	 * Params:
	 * margin = the left margin
	 * Since 3.0
	 */
	public void setMarginLeft(int margin)
	{
		// void gtk_widget_set_margin_left (GtkWidget *widget,  gint margin);
		gtk_widget_set_margin_left(gtkWidget, margin);
	}
	
	/**
	 * Gets the value of the "margin-right" property.
	 * Returns: The right margin of widget Since 3.0
	 */
	public int getMarginRight()
	{
		// gint gtk_widget_get_margin_right (GtkWidget *widget);
		return gtk_widget_get_margin_right(gtkWidget);
	}
	
	/**
	 * Sets the right margin of widget.
	 * See the "margin-right" property.
	 * Params:
	 * margin = the right margin
	 * Since 3.0
	 */
	public void setMarginRight(int margin)
	{
		// void gtk_widget_set_margin_right (GtkWidget *widget,  gint margin);
		gtk_widget_set_margin_right(gtkWidget, margin);
	}
	
	/**
	 * Gets the value of the "margin-top" property.
	 * Returns: The top margin of widget Since 3.0
	 */
	public int getMarginTop()
	{
		// gint gtk_widget_get_margin_top (GtkWidget *widget);
		return gtk_widget_get_margin_top(gtkWidget);
	}
	
	/**
	 * Sets the top margin of widget.
	 * See the "margin-top" property.
	 * Params:
	 * margin = the top margin
	 * Since 3.0
	 */
	public void setMarginTop(int margin)
	{
		// void gtk_widget_set_margin_top (GtkWidget *widget,  gint margin);
		gtk_widget_set_margin_top(gtkWidget, margin);
	}
	
	/**
	 * Gets the value of the "margin-bottom" property.
	 * Returns: The bottom margin of widget Since 3.0
	 */
	public int getMarginBottom()
	{
		// gint gtk_widget_get_margin_bottom (GtkWidget *widget);
		return gtk_widget_get_margin_bottom(gtkWidget);
	}
	
	/**
	 * Sets the bottom margin of widget.
	 * See the "margin-bottom" property.
	 * Params:
	 * margin = the bottom margin
	 * Since 3.0
	 */
	public void setMarginBottom(int margin)
	{
		// void gtk_widget_set_margin_bottom (GtkWidget *widget,  gint margin);
		gtk_widget_set_margin_bottom(gtkWidget, margin);
	}
	
	/**
	 * Gets whether the widget would like any available extra horizontal
	 * space. When a user resizes a GtkWindow, widgets with expand=TRUE
	 * generally receive the extra space. For example, a list or
	 * scrollable area or document in your window would often be set to
	 * expand.
	 * Containers should use gtk_widget_compute_expand() rather than
	 * this function, to see whether a widget, or any of its children,
	 * has the expand flag set. If any child of a widget wants to
	 * expand, the parent may ask to expand also.
	 * This function only looks at the widget's own hexpand flag, rather
	 * than computing whether the entire widget tree rooted at this widget
	 * wants to expand.
	 * Returns: whether hexpand flag is set
	 */
	public int getHexpand()
	{
		// gboolean gtk_widget_get_hexpand (GtkWidget *widget);
		return gtk_widget_get_hexpand(gtkWidget);
	}
	
	/**
	 * Sets whether the widget would like any available extra horizontal
	 * space. When a user resizes a GtkWindow, widgets with expand=TRUE
	 * generally receive the extra space. For example, a list or
	 * scrollable area or document in your window would often be set to
	 * expand.
	 * Call this function to set the expand flag if you would like your
	 * widget to become larger horizontally when the window has extra
	 * room.
	 * By default, widgets automatically expand if any of their children
	 * want to expand. (To see if a widget will automatically expand given
	 * its current children and state, call gtk_widget_compute_expand(). A
	 * container can decide how the expandability of children affects the
	 * expansion of the container by overriding the compute_expand virtual
	 * method on GtkWidget.).
	 * Setting hexpand explicitly with this function will override the
	 * automatic expand behavior.
	 * This function forces the widget to expand or not to expand,
	 * regardless of children. The override occurs because
	 * gtk_widget_set_hexpand() sets the hexpand-set property (see
	 * gtk_widget_set_hexpand_set()) which causes the widget's hexpand
	 * value to be used, rather than looking at children and widget state.
	 * Params:
	 * expand = whether to expand
	 */
	public void setHexpand(int expand)
	{
		// void gtk_widget_set_hexpand (GtkWidget *widget,  gboolean expand);
		gtk_widget_set_hexpand(gtkWidget, expand);
	}
	
	/**
	 * Gets whether gtk_widget_set_hexpand() has been used to
	 * explicitly set the expand flag on this widget.
	 * If hexpand is set, then it overrides any computed
	 * expand value based on child widgets. If hexpand is not
	 * set, then the expand value depends on whether any
	 * children of the widget would like to expand.
	 * There are few reasons to use this function, but it's here
	 * for completeness and consistency.
	 * Returns: whether hexpand has been explicitly set
	 */
	public int getHexpandSet()
	{
		// gboolean gtk_widget_get_hexpand_set (GtkWidget *widget);
		return gtk_widget_get_hexpand_set(gtkWidget);
	}
	
	/**
	 * Sets whether the hexpand flag (see gtk_widget_get_hexpand()) will
	 * be used.
	 * The hexpand-set property will be set automatically when you call
	 * gtk_widget_set_hexpand() to set hexpand, so the most likely
	 * reason to use this function would be to unset an explicit expand
	 * flag.
	 * If hexpand is set, then it overrides any computed
	 * expand value based on child widgets. If hexpand is not
	 * set, then the expand value depends on whether any
	 * children of the widget would like to expand.
	 * There are few reasons to use this function, but it's here
	 * for completeness and consistency.
	 * Params:
	 * set = value for hexpand-set property
	 */
	public void setHexpandSet(int set)
	{
		// void gtk_widget_set_hexpand_set (GtkWidget *widget,  gboolean set);
		gtk_widget_set_hexpand_set(gtkWidget, set);
	}
	
	/**
	 * Gets whether the widget would like any available extra vertical
	 * space.
	 * See gtk_widget_get_hexpand() for more detail.
	 * Returns: whether vexpand flag is set
	 */
	public int getVexpand()
	{
		// gboolean gtk_widget_get_vexpand (GtkWidget *widget);
		return gtk_widget_get_vexpand(gtkWidget);
	}
	
	/**
	 * Sets whether the widget would like any available extra vertical
	 * space.
	 * See gtk_widget_set_hexpand() for more detail.
	 * Params:
	 * expand = whether to expand
	 */
	public void setVexpand(int expand)
	{
		// void gtk_widget_set_vexpand (GtkWidget *widget,  gboolean expand);
		gtk_widget_set_vexpand(gtkWidget, expand);
	}
	
	/**
	 * Gets whether gtk_widget_set_vexpand() has been used to
	 * explicitly set the expand flag on this widget.
	 * See gtk_widget_get_hexpand_set() for more detail.
	 * Returns: whether vexpand has been explicitly set
	 */
	public int getVexpandSet()
	{
		// gboolean gtk_widget_get_vexpand_set (GtkWidget *widget);
		return gtk_widget_get_vexpand_set(gtkWidget);
	}
	
	/**
	 * Sets whether the vexpand flag (see gtk_widget_get_vexpand()) will
	 * be used.
	 * See gtk_widget_set_hexpand_set() for more detail.
	 * Params:
	 * set = value for vexpand-set property
	 */
	public void setVexpandSet(int set)
	{
		// void gtk_widget_set_vexpand_set (GtkWidget *widget,  gboolean set);
		gtk_widget_set_vexpand_set(gtkWidget, set);
	}
	
	/**
	 * Mark widget as needing to recompute its expand flags. Call
	 * this function when setting legacy expand child properties
	 * on the child of a container.
	 * See gtk_widget_compute_expand().
	 */
	public void queueComputeExpand()
	{
		// void gtk_widget_queue_compute_expand (GtkWidget *widget);
		gtk_widget_queue_compute_expand(gtkWidget);
	}
	
	/**
	 * Computes whether a container should give this widget extra space
	 * when possible. Containers should check this, rather than
	 * looking at gtk_widget_get_hexpand() or gtk_widget_get_vexpand().
	 * This function already checks whether the widget is visible, so
	 * visibility does not need to be checked separately. Non-visible
	 * widgets are not expanded.
	 * The computed expand value uses either the expand setting explicitly
	 * set on the widget itself, or, if none has been explicitly set,
	 * the widget may expand if some of its children do.
	 * Params:
	 * orientation = expand direction
	 * Returns: whether widget tree rooted here should be expanded
	 */
	public int computeExpand(GtkOrientation orientation)
	{
		// gboolean gtk_widget_compute_expand (GtkWidget *widget,  GtkOrientation orientation);
		return gtk_widget_compute_expand(gtkWidget, orientation);
	}
}
