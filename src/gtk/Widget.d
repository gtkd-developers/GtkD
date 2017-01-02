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


module gtk.Widget;

private import atk.ImplementorIF;
private import atk.ImplementorT;
private import atk.ObjectAtk;
private import cairo.Context;
private import cairo.FontOption;
private import cairo.Region;
private import gdk.Color;
private import gdk.Cursor;
private import gdk.Device;
private import gdk.Display;
private import gdk.DragContext;
private import gdk.Event;
private import gdk.FrameClock;
private import gdk.RGBA;
private import gdk.Screen;
private import gdk.Visual;
private import gdk.Window : GdkWin = Window;
private import gdkpixbuf.Pixbuf;
private import gio.ActionGroup;
private import gio.ActionGroupIF;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.Type;
private import gobject.Value;
private import gtk.AccelGroup;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Clipboard;
private import gtk.RcStyle;
private import gtk.Requisition;
private import gtk.SelectionData;
private import gtk.Settings;
private import gtk.Style;
private import gtk.StyleContext;
private import gtk.TargetEntry;
private import gtk.TargetList;
private import gtk.Tooltip;
private import gtk.WidgetPath;
private import gtk.Window;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import pango.PgContext;
private import pango.PgFontDescription;
private import pango.PgFontMap;
private import pango.PgLayout;
private import std.algorithm;
private import std.conv;


/**
 * GtkWidget is the base class all widgets in GTK+ derive from. It manages the
 * widget lifecycle, states and style.
 * 
 * # Height-for-width Geometry Management # {#geometry-management}
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
 * - #GtkWidgetClass.get_request_mode()
 * - #GtkWidgetClass.get_preferred_width()
 * - #GtkWidgetClass.get_preferred_height()
 * - #GtkWidgetClass.get_preferred_height_for_width()
 * - #GtkWidgetClass.get_preferred_width_for_height()
 * - #GtkWidgetClass.get_preferred_height_and_baseline_for_width()
 * 
 * There are some important things to keep in mind when implementing
 * height-for-width and when using it in container implementations.
 * 
 * The geometry management system will query a widget hierarchy in
 * only one orientation at a time. When widgets are initially queried
 * for their minimum sizes it is generally done in two initial passes
 * in the #GtkSizeRequestMode chosen by the toplevel.
 * 
 * For example, when queried in the normal
 * %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH mode:
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
 * recursive allocation process it’s important to note that request cycles
 * will be recursively executed while container widgets allocate their children.
 * Each container widget, once allocated a size, will go on to first share the
 * space in one orientation among its children and then request each child's
 * height for its target allocated width or its width for allocated height,
 * depending. In this way a #GtkWidget will typically be requested its size
 * a number of times before actually being allocated a size. The size a
 * widget is finally allocated can of course differ from the size it has
 * requested. For this reason, #GtkWidget caches a  small number of results
 * to avoid re-querying for the same sizes in one allocation cycle.
 * 
 * See
 * [GtkContainer’s geometry management section][container-geometry-management]
 * to learn more about how height-for-width allocations are performed
 * by container widgets.
 * 
 * If a widget does move content around to intelligently use up the
 * allocated size then it must support the request in both
 * #GtkSizeRequestModes even if the widget in question only
 * trades sizes in a single orientation.
 * 
 * For instance, a #GtkLabel that does height-for-width word wrapping
 * will not expect to have #GtkWidgetClass.get_preferred_height() called
 * because that call is specific to a width-for-height request. In this
 * case the label must return the height required for its own minimum
 * possible width. By following this rule any widget that handles
 * height-for-width or width-for-height requests will always be allocated
 * at least enough space to fit its own content.
 * 
 * Here are some examples of how a %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH widget
 * generally deals with width-for-height requests, for #GtkWidgetClass.get_preferred_height()
 * it will do:
 * 
 * |[<!-- language="C" -->
 * static void
 * foo_widget_get_preferred_height (GtkWidget *widget,
 * gint *min_height,
 * gint *nat_height)
 * {
 * if (i_am_in_height_for_width_mode)
 * {
 * gint min_width, nat_width;
 * 
 * GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
 * &min_width,
 * &nat_width);
 * GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width
 * (widget,
 * min_width,
 * min_height,
 * nat_height);
 * }
 * else
 * {
 * ... some widgets do both. For instance, if a GtkLabel is
 * rotated to 90 degrees it will return the minimum and
 * natural height for the rotated label here.
 * }
 * }
 * ]|
 * 
 * And in #GtkWidgetClass.get_preferred_width_for_height() it will simply return
 * the minimum and natural width:
 * |[<!-- language="C" -->
 * static void
 * foo_widget_get_preferred_width_for_height (GtkWidget *widget,
 * gint for_height,
 * gint *min_width,
 * gint *nat_width)
 * {
 * if (i_am_in_height_for_width_mode)
 * {
 * GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
 * min_width,
 * nat_width);
 * }
 * else
 * {
 * ... again if a widget is sometimes operating in
 * width-for-height mode (like a rotated GtkLabel) it can go
 * ahead and do its real width for height calculation here.
 * }
 * }
 * ]|
 * 
 * Often a widget needs to get its own request during size request or
 * allocation. For example, when computing height it may need to also
 * compute width. Or when deciding how to use an allocation, the widget
 * may need to know its natural size. In these cases, the widget should
 * be careful to call its virtual methods directly, like this:
 * 
 * |[<!-- language="C" -->
 * GTK_WIDGET_GET_CLASS(widget)->get_preferred_width (widget,
 * &min,
 * &natural);
 * ]|
 * 
 * It will not work to use the wrapper functions, such as
 * gtk_widget_get_preferred_width() inside your own size request
 * implementation. These return a request adjusted by #GtkSizeGroup
 * and by the #GtkWidgetClass.adjust_size_request() virtual method. If a
 * widget used the wrappers inside its virtual method implementations,
 * then the adjustments (such as widget margins) would be applied
 * twice. GTK+ therefore does not allow this and will warn if you try
 * to do it.
 * 
 * Of course if you are getting the size request for
 * another widget, such as a child of a
 * container, you must use the wrapper APIs.
 * Otherwise, you would not properly consider widget margins,
 * #GtkSizeGroup, and so forth.
 * 
 * Since 3.10 GTK+ also supports baseline vertical alignment of widgets. This
 * means that widgets are positioned such that the typographical baseline of
 * widgets in the same row are aligned. This happens if a widget supports baselines,
 * has a vertical alignment of %GTK_ALIGN_BASELINE, and is inside a container
 * that supports baselines and has a natural “row” that it aligns to the baseline,
 * or a baseline assigned to it by the grandparent.
 * 
 * Baseline alignment support for a widget is done by the #GtkWidgetClass.get_preferred_height_and_baseline_for_width()
 * virtual function. It allows you to report a baseline in combination with the
 * minimum and natural height. If there is no baseline you can return -1 to indicate
 * this. The default implementation of this virtual function calls into the
 * #GtkWidgetClass.get_preferred_height() and #GtkWidgetClass.get_preferred_height_for_width(),
 * so if baselines are not supported it doesn’t need to be implemented.
 * 
 * If a widget ends up baseline aligned it will be allocated all the space in the parent
 * as if it was %GTK_ALIGN_FILL, but the selected baseline can be found via gtk_widget_get_allocated_baseline().
 * If this has a value other than -1 you need to align the widget such that the baseline
 * appears at the position.
 * 
 * # Style Properties
 * 
 * #GtkWidget introduces “style
 * properties” - these are basically object properties that are stored
 * not on the object, but in the style object associated to the widget. Style
 * properties are set in [resource files][gtk3-Resource-Files].
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
 * # GtkWidget as GtkBuildable
 * 
 * The GtkWidget implementation of the GtkBuildable interface supports a
 * custom <accelerator> element, which has attributes named ”key”, ”modifiers”
 * and ”signal” and allows to specify accelerators.
 * 
 * An example of a UI definition fragment specifying an accelerator:
 * |[
 * <object class="GtkButton">
 * <accelerator key="q" modifiers="GDK_CONTROL_MASK" signal="clicked"/>
 * </object>
 * ]|
 * 
 * In addition to accelerators, GtkWidget also support a custom <accessible>
 * element, which supports actions and relations. Properties on the accessible
 * implementation of an object can be set by accessing the internal child
 * “accessible” of a #GtkWidget.
 * 
 * An example of a UI definition fragment specifying an accessible:
 * |[
 * <object class="GtkButton" id="label1"/>
 * <property name="label">I am a Label for a Button</property>
 * </object>
 * <object class="GtkButton" id="button1">
 * <accessibility>
 * <action action_name="click" translatable="yes">Click the button.</action>
 * <relation target="label1" type="labelled-by"/>
 * </accessibility>
 * <child internal-child="accessible">
 * <object class="AtkObject" id="a11y-button1">
 * <property name="accessible-name">Clickable Button</property>
 * </object>
 * </child>
 * </object>
 * ]|
 * 
 * Finally, GtkWidget allows style information such as style classes to
 * be associated with widgets, using the custom <style> element:
 * |[
 * <object class="GtkButton" id="button1">
 * <style>
 * <class name="my-special-button-class"/>
 * <class name="dark-button"/>
 * </style>
 * </object>
 * ]|
 * 
 * # Building composite widgets from template XML ## {#composite-templates}
 * 
 * GtkWidget exposes some facilities to automate the procedure
 * of creating composite widgets using #GtkBuilder interface description
 * language.
 * 
 * To create composite widgets with #GtkBuilder XML, one must associate
 * the interface description with the widget class at class initialization
 * time using gtk_widget_class_set_template().
 * 
 * The interface description semantics expected in composite template descriptions
 * is slightly different from regular #GtkBuilder XML.
 * 
 * Unlike regular interface descriptions, gtk_widget_class_set_template() will
 * expect a <template> tag as a direct child of the toplevel <interface>
 * tag. The <template> tag must specify the “class” attribute which must be
 * the type name of the widget. Optionally, the “parent” attribute may be
 * specified to specify the direct parent type of the widget type, this is
 * ignored by the GtkBuilder but required for Glade to introspect what kind
 * of properties and internal children exist for a given type when the actual
 * type does not exist.
 * 
 * The XML which is contained inside the <template> tag behaves as if it were
 * added to the <object> tag defining @widget itself. You may set properties
 * on @widget by inserting <property> tags into the <template> tag, and also
 * add <child> tags to add children and extend @widget in the normal way you
 * would with <object> tags.
 * 
 * Additionally, <object> tags can also be added before and after the initial
 * <template> tag in the normal way, allowing one to define auxiliary objects
 * which might be referenced by other widgets declared as children of the
 * <template> tag.
 * 
 * An example of a GtkBuilder Template Definition:
 * |[
 * <interface>
 * <template class="FooWidget" parent="GtkBox">
 * <property name="orientation">GTK_ORIENTATION_HORIZONTAL</property>
 * <property name="spacing">4</property>
 * <child>
 * <object class="GtkButton" id="hello_button">
 * <property name="label">Hello World</property>
 * <signal name="clicked" handler="hello_button_clicked" object="FooWidget" swapped="yes"/>
 * </object>
 * </child>
 * <child>
 * <object class="GtkButton" id="goodbye_button">
 * <property name="label">Goodbye World</property>
 * </object>
 * </child>
 * </template>
 * </interface>
 * ]|
 * 
 * Typically, you'll place the template fragment into a file that is
 * bundled with your project, using #GResource. In order to load the
 * template, you need to call gtk_widget_class_set_template_from_resource()
 * from the class initialization of your #GtkWidget type:
 * 
 * |[<!-- language="C" -->
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * 
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * }
 * ]|
 * 
 * You will also need to call gtk_widget_init_template() from the instance
 * initialization function:
 * 
 * |[<!-- language="C" -->
 * static void
 * foo_widget_init (FooWidget *self)
 * {
 * // ...
 * gtk_widget_init_template (GTK_WIDGET (self));
 * }
 * ]|
 * 
 * You can access widgets defined in the template using the
 * gtk_widget_get_template_child() function, but you will typically declare
 * a pointer in the instance private data structure of your type using the same
 * name as the widget in the template definition, and call
 * gtk_widget_class_bind_template_child_private() with that name, e.g.
 * 
 * |[<!-- language="C" -->
 * typedef struct {
 * GtkWidget *hello_button;
 * GtkWidget *goodbye_button;
 * } FooWidgetPrivate;
 * 
 * G_DEFINE_TYPE_WITH_PRIVATE (FooWidget, foo_widget, GTK_TYPE_BOX)
 * 
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
 * FooWidget, hello_button);
 * gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
 * FooWidget, goodbye_button);
 * }
 * ]|
 * 
 * You can also use gtk_widget_class_bind_template_callback() to connect a signal
 * callback defined in the template with a function visible in the scope of the
 * class, e.g.
 * 
 * |[<!-- language="C" -->
 * // the signal handler has the instance and user data swapped
 * // because of the swapped="yes" attribute in the template XML
 * static void
 * hello_button_clicked (FooWidget *self,
 * GtkButton *button)
 * {
 * g_print ("Hello, world!\n");
 * }
 * 
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * gtk_widget_class_bind_template_callback (GTK_WIDGET_CLASS (klass), hello_button_clicked);
 * }
 * ]|
 */
public class Widget : ObjectG, ImplementorIF, BuildableIF
{
	/** the main Gtk struct */
	protected GtkWidget* gtkWidget;

	/** Get the main Gtk struct */
	public GtkWidget* getWidgetStruct()
	{
		return gtkWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWidget;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkWidget = cast(GtkWidget*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWidget* gtkWidget, bool ownedRef = false)
	{
		this.gtkWidget = gtkWidget;
		super(cast(GObject*)gtkWidget, ownedRef);
	}

	// add the Implementor capabilities
	mixin ImplementorT!(GtkWidget);

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
			
		modifyFont(
			PgFontDescription.fromString(
			family ~ " " ~ to!(string)(size)
			)
			);
		}
		
		/** */
		public bool onEvent(GdkEvent* event)
		{
			return getWidgetClass().event(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onButtonPressEvent(GdkEventButton* event)
		{
			return getWidgetClass().buttonPressEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onButtonReleaseEvent(GdkEventButton* event)
		{
			return getWidgetClass().buttonReleaseEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onScrollEvent(GdkEventScroll* event)
		{
			return getWidgetClass().scrollEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onMotionNotifyEvent(GdkEventMotion* event)
		{
			return getWidgetClass().motionNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onDeleteEvent(GdkEventAny* event)
		{
			return getWidgetClass().deleteEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onDestroyEvent(GdkEventAny* event)
		{
			return getWidgetClass().destroyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onKeyPressEvent(GdkEventKey* event)
		{
			return getWidgetClass().keyPressEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onKeyReleaseEvent(GdkEventKey* event)
		{
			return getWidgetClass().keyReleaseEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onEnterNotifyEvent(GdkEventCrossing* event)
		{
			return getWidgetClass().enterNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onLeaveNotifyEvent(GdkEventCrossing* event)
		{
			return getWidgetClass().leaveNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onConfigureEvent(GdkEventConfigure* event)
		{
			return getWidgetClass().configureEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onFocusInEvent(GdkEventFocus* event)
		{
			return getWidgetClass().focusInEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onFocusOutEvent(GdkEventFocus* event)
		{
			return getWidgetClass().focusOutEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onMapEvent(GdkEventAny* event)
		{
			return getWidgetClass().mapEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onUnmapEvent(GdkEventAny* event)
		{
			return getWidgetClass().unmapEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onPropertyNotifyEvent(GdkEventProperty* event)
		{
			return getWidgetClass().propertyNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onSelectionClearEvent(GdkEventSelection* event)
		{
			return getWidgetClass().selectionClearEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onSelectionRequestEvent(GdkEventSelection* event)
		{
			return getWidgetClass().selectionRequestEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onSelectionNotifyEvent(GdkEventSelection* event)
		{
			return getWidgetClass().selectionNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onProximityInEvent(GdkEventProximity* event)
		{
			return getWidgetClass().proximityInEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onProximityOutEvent(GdkEventProximity* event)
		{
			return getWidgetClass().proximityOutEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onVisibilityNotifyEvent(GdkEventVisibility* event)
		{
			return getWidgetClass().visibilityNotifyEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onWindowStateEvent(GdkEventWindowState* event)
		{
			return getWidgetClass().windowStateEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onDamageEvent(GdkEventExpose* event)
		{
			return getWidgetClass().damageEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/** */
		public bool onGrabBrokenEvent(GdkEventGrabBroken* event)
		{
			return getWidgetClass().grabBrokenEvent(getWidgetStruct(), event) == 0 ? false : true;
		}
		
		/**
		 * Queues an animation frame update and adds a callback to be called
		 * before each frame. Until the tick callback is removed, it will be
		 * called frequently (usually at the frame rate of the output device
		 * or as quickly as the application can be repainted, whichever is
		 * slower). For this reason, is most suitable for handling graphics
		 * that change every frame or every few frames. The tick callback does
		 * not automatically imply a relayout or repaint. If you want a
		 * repaint or relayout, and aren't changing widget properties that
		 * would trigger that (for example, changing the text of a gtk.Label),
		 * then you will have to call queueResize() or queuDrawArea() yourself.
		 *
		 * gdk.FrameClock.FrameClock.getFrameTime() should generally be used for timing
		 * continuous animations and gdk.FrameTimings.FrameTimings.getPredictedPresentationPime()
		 * if you are trying to display isolated frames at particular times.
		 *
		 * This is a more convenient alternative to connecting directly to the
		 * "update" signal of GdkFrameClock, since you don't
		 * have to worry about when a GdkFrameClock is assigned to a widget.
		 *
		 * Params:
		 *     callback = function to call for updating animations
		 */
		public void addTickCallback(bool delegate(Widget, FrameClock) callback)
		{
			tickCallbackListeners ~= callback;
			static bool connected;
			
			if ( connected )
			{
				return;
			}
			
			addTickCallback(cast(GtkTickCallback)&gtkTickCallback, cast(void*)this, null);
			connected = true;
		}
		bool delegate(Widget, FrameClock)[] tickCallbackListeners;
		extern(C) static int gtkTickCallback(GtkWidget* widgetStruct, GdkFrameClock* frameClock, Widget _widget)
		{
			foreach ( dlg ; _widget.tickCallbackListeners )
			{
				if(dlg(_widget, new FrameClock(frameClock)))
					return 1;
			}
			return 0;
		}
		
		protected class ScopedOnDrawDelegateWrapper
		{
			bool delegate(Scoped!Context, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Scoped!Context, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected ScopedOnDrawDelegateWrapper[] scopedOnDrawListeners;
		
		/**
		 * This signal is emitted when a widget is supposed to render itself.
		 * The @widget's top left corner must be painted at the origin of
		 * the passed in context and be sized to the values returned by
		 * gtk_widget_get_allocated_width() and
		 * gtk_widget_get_allocated_height().
		 *
		 * Signal handlers connected to this signal can modify the cairo
		 * context passed as @cr in any way they like and don't need to
		 * restore it. The signal emission takes care of calling cairo_save()
		 * before and cairo_restore() after invoking the handler.
		 *
		 * The signal handler will get a @cr with a clip region already set to the
		 * widget's dirty region, i.e. to the area that needs repainting.  Complicated
		 * widgets that want to avoid redrawing themselves completely can get the full
		 * extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
		 * get a finer-grained representation of the dirty region with
		 * cairo_copy_clip_rectangle_list().
		 *
		 * Params:
		 *     cr = the cairo context to draw to
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 *
		 * Since: 3.0
		 */
		gulong addOnDraw(bool delegate(Scoped!Context, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			scopedOnDrawListeners ~= new ScopedOnDrawDelegateWrapper(dlg, 0, connectFlags);
			scopedOnDrawListeners[scopedOnDrawListeners.length - 1].handlerId = Signals.connectData(
				this,
				"draw",
				cast(GCallback)&callBackScopedDraw,
				cast(void*)scopedOnDrawListeners[scopedOnDrawListeners.length - 1],
				cast(GClosureNotify)&callBackDrawScopedDestroy,
				connectFlags);
			return scopedOnDrawListeners[scopedOnDrawListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackScopedDraw(GtkWidget* widgetStruct, cairo_t* cr, ScopedOnDrawDelegateWrapper wrapper)
		{
			return wrapper.dlg(scoped!Context(cr), wrapper.outer);
		}
		
		extern(C) static void callBackDrawScopedDestroy(ScopedOnDrawDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDraw(wrapper);
		}
		
		protected void internalRemoveOnDraw(ScopedOnDrawDelegateWrapper source)
		{
			foreach(index, wrapper; scopedOnDrawListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					scopedOnDrawListeners[index] = null;
					scopedOnDrawListeners = std.algorithm.remove(scopedOnDrawListeners, index);
					break;
				}
			}
		}
		
		protected class OnDrawDelegateWrapper
		{
			bool delegate(Context, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Context, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDrawDelegateWrapper[] onDrawListeners;
		
		/**
		 * This signal is emitted when a widget is supposed to render itself.
		 * The @widget's top left corner must be painted at the origin of
		 * the passed in context and be sized to the values returned by
		 * gtk_widget_get_allocated_width() and
		 * gtk_widget_get_allocated_height().
		 *
		 * Signal handlers connected to this signal can modify the cairo
		 * context passed as @cr in any way they like and don't need to
		 * restore it. The signal emission takes care of calling cairo_save()
		 * before and cairo_restore() after invoking the handler.
		 *
		 * The signal handler will get a @cr with a clip region already set to the
		 * widget's dirty region, i.e. to the area that needs repainting.  Complicated
		 * widgets that want to avoid redrawing themselves completely can get the full
		 * extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
		 * get a finer-grained representation of the dirty region with
		 * cairo_copy_clip_rectangle_list().
		 *
		 * Params:
		 *     cr = the cairo context to draw to
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 *
		 * Since: 3.0
		 */
		deprecated gulong addOnDraw(bool delegate(Context, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDrawListeners ~= new OnDrawDelegateWrapper(dlg, 0, connectFlags);
			onDrawListeners[onDrawListeners.length - 1].handlerId = Signals.connectData(
				this,
				"draw",
				cast(GCallback)&callBackDraw,
				cast(void*)onDrawListeners[onDrawListeners.length - 1],
				cast(GClosureNotify)&callBackDrawDestroy,
				connectFlags);
			return onDrawListeners[onDrawListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDraw(GtkWidget* widgetStruct, cairo_t* cr,OnDrawDelegateWrapper wrapper)
		{
			return wrapper.dlg(new Context(cr), wrapper.outer);
		}
		
		extern(C) static void callBackDrawDestroy(OnDrawDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDraw(wrapper);
		}
		
		protected void internalRemoveOnDraw(OnDrawDelegateWrapper source)
		{
			foreach(index, wrapper; onDrawListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDrawListeners[index] = null;
					onDrawListeners = std.algorithm.remove(onDrawListeners, index);
					break;
				}
			}
		}
		

		/**
		 */

		/** */
		public static GType getType()
		{
			return gtk_widget_get_type();
		}

		/**
		 * Obtains the current default reading direction. See
		 * gtk_widget_set_default_direction().
		 *
		 * Return: the current default direction.
		 */
		public static GtkTextDirection getDefaultDirection()
		{
			return gtk_widget_get_default_direction();
		}

		/**
		 * Returns the default style used by all widgets initially.
		 *
		 * Deprecated: Use #GtkStyleContext instead, and
		 * gtk_css_provider_get_default() to obtain a #GtkStyleProvider
		 * with the default widget style information.
		 *
		 * Return: the default style. This #GtkStyle
		 *     object is owned by GTK+ and should not be modified or freed.
		 */
		public static Style getDefaultStyle()
		{
			auto p = gtk_widget_get_default_style();
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
		}

		/**
		 * Cancels the effect of a previous call to gtk_widget_push_composite_child().
		 *
		 * Deprecated: Use gtk_widget_class_set_template(), or don’t use this API at all.
		 */
		public static void popCompositeChild()
		{
			gtk_widget_pop_composite_child();
		}

		/**
		 * Makes all newly-created widgets as composite children until
		 * the corresponding gtk_widget_pop_composite_child() call.
		 *
		 * A composite child is a child that’s an implementation detail of the
		 * container it’s inside and should not be visible to people using the
		 * container. Composite children aren’t treated differently by GTK+ (but
		 * see gtk_container_foreach() vs. gtk_container_forall()), but e.g. GUI
		 * builders might want to treat them in a different way.
		 *
		 * Deprecated: This API never really worked well and was mostly unused, now
		 * we have a more complete mechanism for composite children, see gtk_widget_class_set_template().
		 */
		public static void pushCompositeChild()
		{
			gtk_widget_push_composite_child();
		}

		/**
		 * Sets the default reading direction for widgets where the
		 * direction has not been explicitly set by gtk_widget_set_direction().
		 *
		 * Params:
		 *     dir = the new default direction. This cannot be
		 *         %GTK_TEXT_DIR_NONE.
		 */
		public static void setDefaultDirection(GtkTextDirection dir)
		{
			gtk_widget_set_default_direction(dir);
		}

		/**
		 * For widgets that can be “activated” (buttons, menu items, etc.)
		 * this function activates them. Activation is what happens when you
		 * press Enter on a widget during key navigation. If @widget isn't
		 * activatable, the function returns %FALSE.
		 *
		 * Return: %TRUE if the widget was activatable
		 */
		public bool activate()
		{
			return gtk_widget_activate(gtkWidget) != 0;
		}

		/**
		 * Installs an accelerator for this @widget in @accel_group that causes
		 * @accel_signal to be emitted if the accelerator is activated.
		 * The @accel_group needs to be added to the widget’s toplevel via
		 * gtk_window_add_accel_group(), and the signal must be of type %G_SIGNAL_ACTION.
		 * Accelerators added through this function are not user changeable during
		 * runtime. If you want to support accelerators that can be changed by the
		 * user, use gtk_accel_map_add_entry() and gtk_widget_set_accel_path() or
		 * gtk_menu_item_set_accel_path() instead.
		 *
		 * Params:
		 *     accelSignal = widget signal to emit on accelerator activation
		 *     accelGroup = accel group for this widget, added to its toplevel
		 *     accelKey = GDK keyval of the accelerator
		 *     accelMods = modifier key combination of the accelerator
		 *     accelFlags = flag accelerators, e.g. %GTK_ACCEL_VISIBLE
		 */
		public void addAccelerator(string accelSignal, AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags)
		{
			gtk_widget_add_accelerator(gtkWidget, Str.toStringz(accelSignal), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods, accelFlags);
		}

		/**
		 * Adds the device events in the bitfield @events to the event mask for
		 * @widget. See gtk_widget_set_device_events() for details.
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *     events = an event mask, see #GdkEventMask
		 *
		 * Since: 3.0
		 */
		public void addDeviceEvents(Device device, GdkEventMask events)
		{
			gtk_widget_add_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct(), events);
		}

		/**
		 * Adds the events in the bitfield @events to the event mask for
		 * @widget. See gtk_widget_set_events() and the
		 * [input handling overview][event-masks] for details.
		 *
		 * Params:
		 *     events = an event mask, see #GdkEventMask
		 */
		public void addEvents(int events)
		{
			gtk_widget_add_events(gtkWidget, events);
		}

		/**
		 * Adds a widget to the list of mnemonic labels for
		 * this widget. (See gtk_widget_list_mnemonic_labels()). Note the
		 * list of mnemonic labels for the widget is cleared when the
		 * widget is destroyed, so the caller must make sure to update
		 * its internal state at this point as well, by using a connection
		 * to the #GtkWidget::destroy signal or a weak notifier.
		 *
		 * Params:
		 *     label = a #GtkWidget that acts as a mnemonic label for @widget
		 *
		 * Since: 2.4
		 */
		public void addMnemonicLabel(Widget label)
		{
			gtk_widget_add_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
		}

		/**
		 * Queues an animation frame update and adds a callback to be called
		 * before each frame. Until the tick callback is removed, it will be
		 * called frequently (usually at the frame rate of the output device
		 * or as quickly as the application can be repainted, whichever is
		 * slower). For this reason, is most suitable for handling graphics
		 * that change every frame or every few frames. The tick callback does
		 * not automatically imply a relayout or repaint. If you want a
		 * repaint or relayout, and aren’t changing widget properties that
		 * would trigger that (for example, changing the text of a #GtkLabel),
		 * then you will have to call gtk_widget_queue_resize() or
		 * gtk_widget_queue_draw_area() yourself.
		 *
		 * gdk_frame_clock_get_frame_time() should generally be used for timing
		 * continuous animations and
		 * gdk_frame_timings_get_predicted_presentation_time() if you are
		 * trying to display isolated frames at particular times.
		 *
		 * This is a more convenient alternative to connecting directly to the
		 * #GdkFrameClock::update signal of #GdkFrameClock, since you don't
		 * have to worry about when a #GdkFrameClock is assigned to a widget.
		 *
		 * Params:
		 *     callback = function to call for updating animations
		 *     userData = data to pass to @callback
		 *     notify = function to call to free @user_data when the callback is removed.
		 *
		 * Return: an id for the connection of this callback. Remove the callback
		 *     by passing it to gtk_widget_remove_tick_callback()
		 *
		 * Since: 3.8
		 */
		public uint addTickCallback(GtkTickCallback callback, void* userData, GDestroyNotify notify)
		{
			return gtk_widget_add_tick_callback(gtkWidget, callback, userData, notify);
		}

		/**
		 * Determines whether an accelerator that activates the signal
		 * identified by @signal_id can currently be activated.
		 * This is done by emitting the #GtkWidget::can-activate-accel
		 * signal on @widget; if the signal isn’t overridden by a
		 * handler or in a derived widget, then the default check is
		 * that the widget must be sensitive, and the widget and all
		 * its ancestors mapped.
		 *
		 * Params:
		 *     signalId = the ID of a signal installed on @widget
		 *
		 * Return: %TRUE if the accelerator can be activated.
		 *
		 * Since: 2.4
		 */
		public bool canActivateAccel(uint signalId)
		{
			return gtk_widget_can_activate_accel(gtkWidget, signalId) != 0;
		}

		/**
		 * This function is used by custom widget implementations; if you're
		 * writing an app, you’d use gtk_widget_grab_focus() to move the focus
		 * to a particular widget, and gtk_container_set_focus_chain() to
		 * change the focus tab order. So you may want to investigate those
		 * functions instead.
		 *
		 * gtk_widget_child_focus() is called by containers as the user moves
		 * around the window using keyboard shortcuts. @direction indicates
		 * what kind of motion is taking place (up, down, left, right, tab
		 * forward, tab backward). gtk_widget_child_focus() emits the
		 * #GtkWidget::focus signal; widgets override the default handler
		 * for this signal in order to implement appropriate focus behavior.
		 *
		 * The default ::focus handler for a widget should return %TRUE if
		 * moving in @direction left the focus on a focusable location inside
		 * that widget, and %FALSE if moving in @direction moved the focus
		 * outside the widget. If returning %TRUE, widgets normally
		 * call gtk_widget_grab_focus() to place the focus accordingly;
		 * if returning %FALSE, they don’t modify the current focus location.
		 *
		 * Params:
		 *     direction = direction of focus movement
		 *
		 * Return: %TRUE if focus ended up inside @widget
		 */
		public bool childFocus(GtkDirectionType direction)
		{
			return gtk_widget_child_focus(gtkWidget, direction) != 0;
		}

		/**
		 * Emits a #GtkWidget::child-notify signal for the
		 * [child property][child-properties] @child_property
		 * on @widget.
		 *
		 * This is the analogue of g_object_notify() for child properties.
		 *
		 * Also see gtk_container_child_notify().
		 *
		 * Params:
		 *     childProperty = the name of a child property installed on the
		 *         class of @widget’s parent
		 */
		public void childNotify(string childProperty)
		{
			gtk_widget_child_notify(gtkWidget, Str.toStringz(childProperty));
		}

		/**
		 * Same as gtk_widget_path(), but always uses the name of a widget’s type,
		 * never uses a custom name set with gtk_widget_set_name().
		 *
		 * Deprecated: Use gtk_widget_get_path() instead
		 *
		 * Params:
		 *     pathLength = location to store the length of the
		 *         class path, or %NULL
		 *     path = location to store the class path as an
		 *         allocated string, or %NULL
		 *     pathReversed = location to store the reverse
		 *         class path as an allocated string, or %NULL
		 */
		public void classPath(out uint pathLength, out string path, out string pathReversed)
		{
			char* outpath = null;
			char* outpathReversed = null;
			
			gtk_widget_class_path(gtkWidget, &pathLength, &outpath, &outpathReversed);
			
			path = Str.toString(outpath);
			pathReversed = Str.toString(outpathReversed);
		}

		/**
		 * Computes whether a container should give this widget extra space
		 * when possible. Containers should check this, rather than
		 * looking at gtk_widget_get_hexpand() or gtk_widget_get_vexpand().
		 *
		 * This function already checks whether the widget is visible, so
		 * visibility does not need to be checked separately. Non-visible
		 * widgets are not expanded.
		 *
		 * The computed expand value uses either the expand setting explicitly
		 * set on the widget itself, or, if none has been explicitly set,
		 * the widget may expand if some of its children do.
		 *
		 * Params:
		 *     orientation = expand direction
		 *
		 * Return: whether widget tree rooted here should be expanded
		 */
		public bool computeExpand(GtkOrientation orientation)
		{
			return gtk_widget_compute_expand(gtkWidget, orientation) != 0;
		}

		/**
		 * Creates a new #PangoContext with the appropriate font map,
		 * font options, font description, and base direction for drawing
		 * text for this widget. See also gtk_widget_get_pango_context().
		 *
		 * Return: the new #PangoContext
		 */
		public PgContext createPangoContext()
		{
			auto p = gtk_widget_create_pango_context(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p, true);
		}

		/**
		 * Creates a new #PangoLayout with the appropriate font map,
		 * font description, and base direction for drawing text for
		 * this widget.
		 *
		 * If you keep a #PangoLayout created in this way around, you need
		 * to re-create it when the widget #PangoContext is replaced.
		 * This can be tracked by using the #GtkWidget::screen-changed signal
		 * on the widget.
		 *
		 * Params:
		 *     text = text to set on the layout (can be %NULL)
		 *
		 * Return: the new #PangoLayout
		 */
		public PgLayout createPangoLayout(string text)
		{
			auto p = gtk_widget_create_pango_layout(gtkWidget, Str.toStringz(text));
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p, true);
		}

		/**
		 * Destroys a widget.
		 *
		 * When a widget is destroyed all references it holds on other objects
		 * will be released:
		 *
		 * - if the widget is inside a container, it will be removed from its
		 * parent
		 * - if the widget is a container, all its children will be destroyed,
		 * recursively
		 * - if the widget is a top level, it will be removed from the list
		 * of top level widgets that GTK+ maintains internally
		 *
		 * It's expected that all references held on the widget will also
		 * be released; you should connect to the #GtkWidget::destroy signal
		 * if you hold a reference to @widget and you wish to remove it when
		 * this function is called. It is not necessary to do so if you are
		 * implementing a #GtkContainer, as you'll be able to use the
		 * #GtkContainerClass.remove() virtual function for that.
		 *
		 * It's important to notice that gtk_widget_destroy() will only cause
		 * the @widget to be finalized if no additional references, acquired
		 * using g_object_ref(), are held on it. In case additional references
		 * are in place, the @widget will be in an "inert" state after calling
		 * this function; @widget will still point to valid memory, allowing you
		 * to release the references you hold, but you may not query the widget's
		 * own state.
		 *
		 * You should typically call this function on top level widgets, and
		 * rarely on child widgets.
		 *
		 * See also: gtk_container_remove()
		 */
		public void destroy()
		{
			gtk_widget_destroy(gtkWidget);
		}

		/**
		 * This function sets *@widget_pointer to %NULL if @widget_pointer !=
		 * %NULL.  It’s intended to be used as a callback connected to the
		 * “destroy” signal of a widget. You connect gtk_widget_destroyed()
		 * as a signal handler, and pass the address of your widget variable
		 * as user data. Then when the widget is destroyed, the variable will
		 * be set to %NULL. Useful for example to avoid multiple copies
		 * of the same dialog.
		 *
		 * Params:
		 *     widgetPointer = address of a variable that contains @widget
		 */
		public void destroyed(ref Widget widgetPointer)
		{
			GtkWidget* outwidgetPointer = widgetPointer.getWidgetStruct();
			
			gtk_widget_destroyed(gtkWidget, &outwidgetPointer);
			
			widgetPointer = ObjectG.getDObject!(Widget)(outwidgetPointer);
		}

		/**
		 * Returns %TRUE if @device has been shadowed by a GTK+
		 * device grab on another widget, so it would stop sending
		 * events to @widget. This may be used in the
		 * #GtkWidget::grab-notify signal to check for specific
		 * devices. See gtk_device_grab_add().
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *
		 * Return: %TRUE if there is an ongoing grab on @device
		 *     by another #GtkWidget than @widget.
		 *
		 * Since: 3.0
		 */
		public bool deviceIsShadowed(Device device)
		{
			return gtk_widget_device_is_shadowed(gtkWidget, (device is null) ? null : device.getDeviceStruct()) != 0;
		}

		/**
		 * This function is equivalent to gtk_drag_begin_with_coordinates(),
		 * passing -1, -1 as coordinates.
		 *
		 * Deprecated: Use gtk_drag_begin_with_coordinates() instead
		 *
		 * Params:
		 *     targets = The targets (data formats) in which the
		 *         source can provide the data
		 *     actions = A bitmask of the allowed drag actions for this drag
		 *     button = The button the user clicked to start the drag
		 *     event = The event that triggered the start of the drag,
		 *         or %NULL if none can be obtained.
		 *
		 * Return: the context for this drag
		 */
		public DragContext dragBegin(TargetList targets, GdkDragAction actions, int button, Event event)
		{
			auto p = gtk_drag_begin(gtkWidget, (targets is null) ? null : targets.getTargetListStruct(), actions, button, (event is null) ? null : event.getEventStruct());
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p);
		}

		/**
		 * Initiates a drag on the source side. The function only needs to be used
		 * when the application is starting drags itself, and is not needed when
		 * gtk_drag_source_set() is used.
		 *
		 * The @event is used to retrieve the timestamp that will be used internally to
		 * grab the pointer.  If @event is %NULL, then %GDK_CURRENT_TIME will be used.
		 * However, you should try to pass a real event in all cases, since that can be
		 * used to get information about the drag.
		 *
		 * Generally there are three cases when you want to start a drag by hand by
		 * calling this function:
		 *
		 * 1. During a #GtkWidget::button-press-event handler, if you want to start a drag
		 * immediately when the user presses the mouse button.  Pass the @event
		 * that you have in your #GtkWidget::button-press-event handler.
		 *
		 * 2. During a #GtkWidget::motion-notify-event handler, if you want to start a drag
		 * when the mouse moves past a certain threshold distance after a button-press.
		 * Pass the @event that you have in your #GtkWidget::motion-notify-event handler.
		 *
		 * 3. During a timeout handler, if you want to start a drag after the mouse
		 * button is held down for some time.  Try to save the last event that you got
		 * from the mouse, using gdk_event_copy(), and pass it to this function
		 * (remember to free the event with gdk_event_free() when you are done).
		 * If you can really not pass a real event, pass #NULL instead.
		 *
		 * Params:
		 *     targets = The targets (data formats) in which the
		 *         source can provide the data
		 *     actions = A bitmask of the allowed drag actions for this drag
		 *     button = The button the user clicked to start the drag
		 *     event = The event that triggered the start of the drag,
		 *         or %NULL if none can be obtained.
		 *     x = The initial x coordinate to start dragging from, in the coordinate space
		 *         of @widget. If -1 is passed, the coordinates are retrieved from @event or
		 *         the current pointer position
		 *     y = The initial y coordinate to start dragging from, in the coordinate space
		 *         of @widget. If -1 is passed, the coordinates are retrieved from @event or
		 *         the current pointer position
		 *
		 * Return: the context for this drag
		 *
		 * Since: 3.10
		 */
		public DragContext dragBeginWithCoordinates(TargetList targets, GdkDragAction actions, int button, Event event, int x, int y)
		{
			auto p = gtk_drag_begin_with_coordinates(gtkWidget, (targets is null) ? null : targets.getTargetListStruct(), actions, button, (event is null) ? null : event.getEventStruct(), x, y);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p);
		}

		/**
		 * Checks to see if a mouse drag starting at (@start_x, @start_y) and ending
		 * at (@current_x, @current_y) has passed the GTK+ drag threshold, and thus
		 * should trigger the beginning of a drag-and-drop operation.
		 *
		 * Params:
		 *     startX = X coordinate of start of drag
		 *     startY = Y coordinate of start of drag
		 *     currentX = current X coordinate
		 *     currentY = current Y coordinate
		 *
		 * Return: %TRUE if the drag threshold has been passed.
		 */
		public bool dragCheckThreshold(int startX, int startY, int currentX, int currentY)
		{
			return gtk_drag_check_threshold(gtkWidget, startX, startY, currentX, currentY) != 0;
		}

		/**
		 * Add the image targets supported by #GtkSelectionData to
		 * the target list of the drag destination. The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_image_targets() and
		 * gtk_drag_dest_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragDestAddImageTargets()
		{
			gtk_drag_dest_add_image_targets(gtkWidget);
		}

		/**
		 * Add the text targets supported by #GtkSelectionData to
		 * the target list of the drag destination. The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_text_targets() and
		 * gtk_drag_dest_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragDestAddTextTargets()
		{
			gtk_drag_dest_add_text_targets(gtkWidget);
		}

		/**
		 * Add the URI targets supported by #GtkSelectionData to
		 * the target list of the drag destination. The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_uri_targets() and
		 * gtk_drag_dest_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragDestAddUriTargets()
		{
			gtk_drag_dest_add_uri_targets(gtkWidget);
		}

		/**
		 * Looks for a match between the supported targets of @context and the
		 * @dest_target_list, returning the first matching target, otherwise
		 * returning %GDK_NONE. @dest_target_list should usually be the return
		 * value from gtk_drag_dest_get_target_list(), but some widgets may
		 * have different valid targets for different parts of the widget; in
		 * that case, they will have to implement a drag_motion handler that
		 * passes the correct target list to this function.
		 *
		 * Params:
		 *     context = drag context
		 *     targetList = list of droppable targets, or %NULL to use
		 *         gtk_drag_dest_get_target_list (@widget).
		 *
		 * Return: first target that the source offers
		 *     and the dest can accept, or %GDK_NONE
		 */
		public GdkAtom dragDestFindTarget(DragContext context, TargetList targetList)
		{
			return gtk_drag_dest_find_target(gtkWidget, (context is null) ? null : context.getDragContextStruct(), (targetList is null) ? null : targetList.getTargetListStruct());
		}

		/**
		 * Returns the list of targets this widget can accept from
		 * drag-and-drop.
		 *
		 * Return: the #GtkTargetList, or %NULL if none
		 */
		public TargetList dragDestGetTargetList()
		{
			auto p = gtk_drag_dest_get_target_list(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
		}

		/**
		 * Returns whether the widget has been configured to always
		 * emit #GtkWidget::drag-motion signals.
		 *
		 * Return: %TRUE if the widget always emits
		 *     #GtkWidget::drag-motion events
		 *
		 * Since: 2.10
		 */
		public bool dragDestGetTrackMotion()
		{
			return gtk_drag_dest_get_track_motion(gtkWidget) != 0;
		}

		/**
		 * Sets a widget as a potential drop destination, and adds default behaviors.
		 *
		 * The default behaviors listed in @flags have an effect similar
		 * to installing default handlers for the widget’s drag-and-drop signals
		 * (#GtkWidget::drag-motion, #GtkWidget::drag-drop, ...). They all exist
		 * for convenience. When passing #GTK_DEST_DEFAULT_ALL for instance it is
		 * sufficient to connect to the widget’s #GtkWidget::drag-data-received
		 * signal to get primitive, but consistent drag-and-drop support.
		 *
		 * Things become more complicated when you try to preview the dragged data,
		 * as described in the documentation for #GtkWidget::drag-motion. The default
		 * behaviors described by @flags make some assumptions, that can conflict
		 * with your own signal handlers. For instance #GTK_DEST_DEFAULT_DROP causes
		 * invokations of gdk_drag_status() in the context of #GtkWidget::drag-motion,
		 * and invokations of gtk_drag_finish() in #GtkWidget::drag-data-received.
		 * Especially the later is dramatic, when your own #GtkWidget::drag-motion
		 * handler calls gtk_drag_get_data() to inspect the dragged data.
		 *
		 * There’s no way to set a default action here, you can use the
		 * #GtkWidget::drag-motion callback for that. Here’s an example which selects
		 * the action to use depending on whether the control key is pressed or not:
		 * |[<!-- language="C" -->
		 * static void
		 * drag_motion (GtkWidget *widget,
		 * GdkDragContext *context,
		 * gint x,
		 * gint y,
		 * guint time)
		 * {
		 * GdkModifierType mask;
		 *
		 * gdk_window_get_pointer (gtk_widget_get_window (widget),
		 * NULL, NULL, &mask);
		 * if (mask & GDK_CONTROL_MASK)
		 * gdk_drag_status (context, GDK_ACTION_COPY, time);
		 * else
		 * gdk_drag_status (context, GDK_ACTION_MOVE, time);
		 * }
		 * ]|
		 *
		 * Params:
		 *     flags = which types of default drag behavior to use
		 *     targets = a pointer to an array of
		 *         #GtkTargetEntrys indicating the drop types that this @widget will
		 *         accept, or %NULL. Later you can access the list with
		 *         gtk_drag_dest_get_target_list() and gtk_drag_dest_find_target().
		 *     nTargets = the number of entries in @targets
		 *     actions = a bitmask of possible actions for a drop onto this @widget.
		 */
		public void dragDestSet(GtkDestDefaults flags, TargetEntry[] targets, GdkDragAction actions)
		{
			GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
			for ( int i = 0; i < targets.length; i++ )
			{
				targetsArray[i] = *(targets[i].getTargetEntryStruct());
			}
			
			gtk_drag_dest_set(gtkWidget, flags, targetsArray.ptr, cast(int)targets.length, actions);
		}

		/**
		 * Sets this widget as a proxy for drops to another window.
		 *
		 * Params:
		 *     proxyWindow = the window to which to forward drag events
		 *     protocol = the drag protocol which the @proxy_window accepts
		 *         (You can use gdk_drag_get_protocol() to determine this)
		 *     useCoordinates = If %TRUE, send the same coordinates to the
		 *         destination, because it is an embedded
		 *         subwindow.
		 */
		public void dragDestSetProxy(GdkWin proxyWindow, GdkDragProtocol protocol, bool useCoordinates)
		{
			gtk_drag_dest_set_proxy(gtkWidget, (proxyWindow is null) ? null : proxyWindow.getWindowStruct(), protocol, useCoordinates);
		}

		/**
		 * Sets the target types that this widget can accept from drag-and-drop.
		 * The widget must first be made into a drag destination with
		 * gtk_drag_dest_set().
		 *
		 * Params:
		 *     targetList = list of droppable targets, or %NULL for none
		 */
		public void dragDestSetTargetList(TargetList targetList)
		{
			gtk_drag_dest_set_target_list(gtkWidget, (targetList is null) ? null : targetList.getTargetListStruct());
		}

		/**
		 * Tells the widget to emit #GtkWidget::drag-motion and
		 * #GtkWidget::drag-leave events regardless of the targets and the
		 * %GTK_DEST_DEFAULT_MOTION flag.
		 *
		 * This may be used when a widget wants to do generic
		 * actions regardless of the targets that the source offers.
		 *
		 * Params:
		 *     trackMotion = whether to accept all targets
		 *
		 * Since: 2.10
		 */
		public void dragDestSetTrackMotion(bool trackMotion)
		{
			gtk_drag_dest_set_track_motion(gtkWidget, trackMotion);
		}

		/**
		 * Clears information about a drop destination set with
		 * gtk_drag_dest_set(). The widget will no longer receive
		 * notification of drags.
		 */
		public void dragDestUnset()
		{
			gtk_drag_dest_unset(gtkWidget);
		}

		/**
		 * Gets the data associated with a drag. When the data
		 * is received or the retrieval fails, GTK+ will emit a
		 * #GtkWidget::drag-data-received signal. Failure of the retrieval
		 * is indicated by the length field of the @selection_data
		 * signal parameter being negative. However, when gtk_drag_get_data()
		 * is called implicitely because the %GTK_DEST_DEFAULT_DROP was set,
		 * then the widget will not receive notification of failed
		 * drops.
		 *
		 * Params:
		 *     context = the drag context
		 *     target = the target (form of the data) to retrieve
		 *     time = a timestamp for retrieving the data. This will
		 *         generally be the time received in a #GtkWidget::drag-motion
		 *         or #GtkWidget::drag-drop signal
		 */
		public void dragGetData(DragContext context, GdkAtom target, uint time)
		{
			gtk_drag_get_data(gtkWidget, (context is null) ? null : context.getDragContextStruct(), target, time);
		}

		/**
		 * Highlights a widget as a currently hovered drop target.
		 * To end the highlight, call gtk_drag_unhighlight().
		 * GTK+ calls this automatically if %GTK_DEST_DEFAULT_HIGHLIGHT is set.
		 */
		public void dragHighlight()
		{
			gtk_drag_highlight(gtkWidget);
		}

		/**
		 * Add the writable image targets supported by #GtkSelectionData to
		 * the target list of the drag source. The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_image_targets() and
		 * gtk_drag_source_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragSourceAddImageTargets()
		{
			gtk_drag_source_add_image_targets(gtkWidget);
		}

		/**
		 * Add the text targets supported by #GtkSelectionData to
		 * the target list of the drag source.  The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_text_targets() and
		 * gtk_drag_source_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragSourceAddTextTargets()
		{
			gtk_drag_source_add_text_targets(gtkWidget);
		}

		/**
		 * Add the URI targets supported by #GtkSelectionData to
		 * the target list of the drag source.  The targets
		 * are added with @info = 0. If you need another value,
		 * use gtk_target_list_add_uri_targets() and
		 * gtk_drag_source_set_target_list().
		 *
		 * Since: 2.6
		 */
		public void dragSourceAddUriTargets()
		{
			gtk_drag_source_add_uri_targets(gtkWidget);
		}

		/**
		 * Gets the list of targets this widget can provide for
		 * drag-and-drop.
		 *
		 * Return: the #GtkTargetList, or %NULL if none
		 *
		 * Since: 2.4
		 */
		public TargetList dragSourceGetTargetList()
		{
			auto p = gtk_drag_source_get_target_list(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
		}

		/**
		 * Sets up a widget so that GTK+ will start a drag operation when the user
		 * clicks and drags on the widget. The widget must have a window.
		 *
		 * Params:
		 *     startButtonMask = the bitmask of buttons that can start the drag
		 *     targets = the table of targets
		 *         that the drag will support, may be %NULL
		 *     nTargets = the number of items in @targets
		 *     actions = the bitmask of possible actions for a drag from this widget
		 */
		public void dragSourceSet(GdkModifierType startButtonMask, TargetEntry[] targets, GdkDragAction actions)
		{
			GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
			for ( int i = 0; i < targets.length; i++ )
			{
				targetsArray[i] = *(targets[i].getTargetEntryStruct());
			}
			
			gtk_drag_source_set(gtkWidget, startButtonMask, targetsArray.ptr, cast(int)targets.length, actions);
		}

		/**
		 * Sets the icon that will be used for drags from a particular source
		 * to @icon. See the docs for #GtkIconTheme for more details.
		 *
		 * Params:
		 *     icon = A #GIcon
		 *
		 * Since: 3.2
		 */
		public void dragSourceSetIconGicon(IconIF icon)
		{
			gtk_drag_source_set_icon_gicon(gtkWidget, (icon is null) ? null : icon.getIconStruct());
		}

		/**
		 * Sets the icon that will be used for drags from a particular source
		 * to a themed icon. See the docs for #GtkIconTheme for more details.
		 *
		 * Params:
		 *     iconName = name of icon to use
		 *
		 * Since: 2.8
		 */
		public void dragSourceSetIconName(string iconName)
		{
			gtk_drag_source_set_icon_name(gtkWidget, Str.toStringz(iconName));
		}

		/**
		 * Sets the icon that will be used for drags from a particular widget
		 * from a #GdkPixbuf. GTK+ retains a reference for @pixbuf and will
		 * release it when it is no longer needed.
		 *
		 * Params:
		 *     pixbuf = the #GdkPixbuf for the drag icon
		 */
		public void dragSourceSetIconPixbuf(Pixbuf pixbuf)
		{
			gtk_drag_source_set_icon_pixbuf(gtkWidget, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
		}

		/**
		 * Sets the icon that will be used for drags from a particular source
		 * to a stock icon.
		 *
		 * Deprecated: Use gtk_drag_source_set_icon_name() instead.
		 *
		 * Params:
		 *     stockId = the ID of the stock icon to use
		 */
		public void dragSourceSetIconStock(string stockId)
		{
			gtk_drag_source_set_icon_stock(gtkWidget, Str.toStringz(stockId));
		}

		/**
		 * Changes the target types that this widget offers for drag-and-drop.
		 * The widget must first be made into a drag source with
		 * gtk_drag_source_set().
		 *
		 * Params:
		 *     targetList = list of draggable targets, or %NULL for none
		 *
		 * Since: 2.4
		 */
		public void dragSourceSetTargetList(TargetList targetList)
		{
			gtk_drag_source_set_target_list(gtkWidget, (targetList is null) ? null : targetList.getTargetListStruct());
		}

		/**
		 * Undoes the effects of gtk_drag_source_set().
		 */
		public void dragSourceUnset()
		{
			gtk_drag_source_unset(gtkWidget);
		}

		/**
		 * Removes a highlight set by gtk_drag_highlight() from
		 * a widget.
		 */
		public void dragUnhighlight()
		{
			gtk_drag_unhighlight(gtkWidget);
		}

		/**
		 * Draws @widget to @cr. The top left corner of the widget will be
		 * drawn to the currently set origin point of @cr.
		 *
		 * You should pass a cairo context as @cr argument that is in an
		 * original state. Otherwise the resulting drawing is undefined. For
		 * example changing the operator using cairo_set_operator() or the
		 * line width using cairo_set_line_width() might have unwanted side
		 * effects.
		 * You may however change the context’s transform matrix - like with
		 * cairo_scale(), cairo_translate() or cairo_set_matrix() and clip
		 * region with cairo_clip() prior to calling this function. Also, it
		 * is fine to modify the context with cairo_save() and
		 * cairo_push_group() prior to calling this function.
		 *
		 * Note that special-purpose widgets may contain special code for
		 * rendering to the screen and might appear differently on screen
		 * and when rendered using gtk_widget_draw().
		 *
		 * Params:
		 *     cr = a cairo context to draw to
		 *
		 * Since: 3.0
		 */
		public void draw(Context cr)
		{
			gtk_widget_draw(gtkWidget, (cr is null) ? null : cr.getContextStruct());
		}

		/**
		 * Ensures that @widget has a style (@widget->style).
		 *
		 * Not a very useful function; most of the time, if you
		 * want the style, the widget is realized, and realized
		 * widgets are guaranteed to have a style already.
		 *
		 * Deprecated: Use #GtkStyleContext instead
		 */
		public void ensureStyle()
		{
			gtk_widget_ensure_style(gtkWidget);
		}

		/**
		 * Notifies the user about an input-related error on this widget.
		 * If the #GtkSettings:gtk-error-bell setting is %TRUE, it calls
		 * gdk_window_beep(), otherwise it does nothing.
		 *
		 * Note that the effect of gdk_window_beep() can be configured in many
		 * ways, depending on the windowing backend and the desktop environment
		 * or window manager that is used.
		 *
		 * Since: 2.12
		 */
		public void errorBell()
		{
			gtk_widget_error_bell(gtkWidget);
		}

		/**
		 * Rarely-used function. This function is used to emit
		 * the event signals on a widget (those signals should never
		 * be emitted without using this function to do so).
		 * If you want to synthesize an event though, don’t use this function;
		 * instead, use gtk_main_do_event() so the event will behave as if
		 * it were in the event queue. Don’t synthesize expose events; instead,
		 * use gdk_window_invalidate_rect() to invalidate a region of the
		 * window.
		 *
		 * Params:
		 *     event = a #GdkEvent
		 *
		 * Return: return from the event signal emission (%TRUE if
		 *     the event was handled)
		 */
		public bool event(Event event)
		{
			return gtk_widget_event(gtkWidget, (event is null) ? null : event.getEventStruct()) != 0;
		}

		/**
		 * Stops emission of #GtkWidget::child-notify signals on @widget. The
		 * signals are queued until gtk_widget_thaw_child_notify() is called
		 * on @widget.
		 *
		 * This is the analogue of g_object_freeze_notify() for child properties.
		 */
		public void freezeChildNotify()
		{
			gtk_widget_freeze_child_notify(gtkWidget);
		}

		/**
		 * Returns the accessible object that describes the widget to an
		 * assistive technology.
		 *
		 * If accessibility support is not available, this #AtkObject
		 * instance may be a no-op. Likewise, if no class-specific #AtkObject
		 * implementation is available for the widget instance in question,
		 * it will inherit an #AtkObject implementation from the first ancestor
		 * class for which such an implementation is defined.
		 *
		 * The documentation of the
		 * [ATK](http://developer.gnome.org/atk/stable/)
		 * library contains more information about accessible objects and their uses.
		 *
		 * Return: the #AtkObject associated with @widget
		 */
		public ObjectAtk getAccessible()
		{
			auto p = gtk_widget_get_accessible(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
		}

		/**
		 * Retrieves the #GActionGroup that was registered using @prefix. The resulting
		 * #GActionGroup may have been registered to @widget or any #GtkWidget in its
		 * ancestry.
		 *
		 * If no action group was found matching @prefix, then %NULL is returned.
		 *
		 * Params:
		 *     prefix = The “prefix” of the action group.
		 *
		 * Return: A #GActionGroup or %NULL.
		 *
		 * Since: 3.16
		 */
		public ActionGroupIF getActionGroup(string prefix)
		{
			auto p = gtk_widget_get_action_group(gtkWidget, Str.toStringz(prefix));
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(ActionGroup, ActionGroupIF)(cast(GActionGroup*) p);
		}

		/**
		 * Returns the baseline that has currently been allocated to @widget.
		 * This function is intended to be used when implementing handlers
		 * for the #GtkWidget::draw function, and when allocating child
		 * widgets in #GtkWidget::size_allocate.
		 *
		 * Return: the baseline of the @widget, or -1 if none
		 *
		 * Since: 3.10
		 */
		public int getAllocatedBaseline()
		{
			return gtk_widget_get_allocated_baseline(gtkWidget);
		}

		/**
		 * Returns the height that has currently been allocated to @widget.
		 * This function is intended to be used when implementing handlers
		 * for the #GtkWidget::draw function.
		 *
		 * Return: the height of the @widget
		 */
		public int getAllocatedHeight()
		{
			return gtk_widget_get_allocated_height(gtkWidget);
		}

		/**
		 * Retrieves the widget’s allocated size.
		 *
		 * This function returns the last values passed to
		 * gtk_widget_size_allocate_with_baseline(). The value differs from
		 * the size returned in gtk_widget_get_allocation() in that functions
		 * like gtk_widget_set_halign() can adjust the allocation, but not
		 * the value returned by this function.
		 *
		 * If a widget is not visible, its allocated size is 0.
		 *
		 * Params:
		 *     allocation = a pointer to a #GtkAllocation to copy to
		 *     baseline = a pointer to an integer to copy to
		 *
		 * Since: 3.20
		 */
		public void getAllocatedSize(out GtkAllocation allocation, out int baseline)
		{
			gtk_widget_get_allocated_size(gtkWidget, &allocation, &baseline);
		}

		/**
		 * Returns the width that has currently been allocated to @widget.
		 * This function is intended to be used when implementing handlers
		 * for the #GtkWidget::draw function.
		 *
		 * Return: the width of the @widget
		 */
		public int getAllocatedWidth()
		{
			return gtk_widget_get_allocated_width(gtkWidget);
		}

		/**
		 * Retrieves the widget’s allocation.
		 *
		 * Note, when implementing a #GtkContainer: a widget’s allocation will
		 * be its “adjusted” allocation, that is, the widget’s parent
		 * container typically calls gtk_widget_size_allocate() with an
		 * allocation, and that allocation is then adjusted (to handle margin
		 * and alignment for example) before assignment to the widget.
		 * gtk_widget_get_allocation() returns the adjusted allocation that
		 * was actually assigned to the widget. The adjusted allocation is
		 * guaranteed to be completely contained within the
		 * gtk_widget_size_allocate() allocation, however. So a #GtkContainer
		 * is guaranteed that its children stay inside the assigned bounds,
		 * but not that they have exactly the bounds the container assigned.
		 * There is no way to get the original allocation assigned by
		 * gtk_widget_size_allocate(), since it isn’t stored; if a container
		 * implementation needs that information it will have to track it itself.
		 *
		 * Params:
		 *     allocation = a pointer to a #GtkAllocation to copy to
		 *
		 * Since: 2.18
		 */
		public void getAllocation(out GtkAllocation allocation)
		{
			gtk_widget_get_allocation(gtkWidget, &allocation);
		}

		/**
		 * Gets the first ancestor of @widget with type @widget_type. For example,
		 * `gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)` gets
		 * the first #GtkBox that’s an ancestor of @widget. No reference will be
		 * added to the returned widget; it should not be unreferenced. See note
		 * about checking for a toplevel #GtkWindow in the docs for
		 * gtk_widget_get_toplevel().
		 *
		 * Note that unlike gtk_widget_is_ancestor(), gtk_widget_get_ancestor()
		 * considers @widget to be an ancestor of itself.
		 *
		 * Params:
		 *     widgetType = ancestor type
		 *
		 * Return: the ancestor widget, or %NULL if not found
		 */
		public Widget getAncestor(GType widgetType)
		{
			auto p = gtk_widget_get_ancestor(gtkWidget, widgetType);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
		}

		/**
		 * Determines whether the application intends to draw on the widget in
		 * an #GtkWidget::draw handler.
		 *
		 * See gtk_widget_set_app_paintable()
		 *
		 * Return: %TRUE if the widget is app paintable
		 *
		 * Since: 2.18
		 */
		public bool getAppPaintable()
		{
			return gtk_widget_get_app_paintable(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget can be a default widget. See
		 * gtk_widget_set_can_default().
		 *
		 * Return: %TRUE if @widget can be a default widget, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool getCanDefault()
		{
			return gtk_widget_get_can_default(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget can own the input focus. See
		 * gtk_widget_set_can_focus().
		 *
		 * Return: %TRUE if @widget can own the input focus, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool getCanFocus()
		{
			return gtk_widget_get_can_focus(gtkWidget) != 0;
		}

		/**
		 * This function is only for use in widget implementations. Obtains
		 * @widget->requisition, unless someone has forced a particular
		 * geometry on the widget (e.g. with gtk_widget_set_size_request()),
		 * in which case it returns that geometry instead of the widget's
		 * requisition.
		 *
		 * This function differs from gtk_widget_size_request() in that
		 * it retrieves the last size request value from @widget->requisition,
		 * while gtk_widget_size_request() actually calls the "size_request" method
		 * on @widget to compute the size request and fill in @widget->requisition,
		 * and only then returns @widget->requisition.
		 *
		 * Because this function does not call the “size_request” method, it
		 * can only be used when you know that @widget->requisition is
		 * up-to-date, that is, gtk_widget_size_request() has been called
		 * since the last time a resize was queued. In general, only container
		 * implementations have this information; applications should use
		 * gtk_widget_size_request().
		 *
		 * Deprecated: Use gtk_widget_get_preferred_size() instead.
		 *
		 * Params:
		 *     requisition = a #GtkRequisition to be filled in
		 */
		public void getChildRequisition(out Requisition requisition)
		{
			GtkRequisition* outrequisition = gMalloc!GtkRequisition();
			
			gtk_widget_get_child_requisition(gtkWidget, outrequisition);
			
			requisition = ObjectG.getDObject!(Requisition)(outrequisition, true);
		}

		/**
		 * Gets the value set with gtk_widget_set_child_visible().
		 * If you feel a need to use this function, your code probably
		 * needs reorganization.
		 *
		 * This function is only useful for container implementations and
		 * never should be called by an application.
		 *
		 * Return: %TRUE if the widget is mapped with the parent.
		 */
		public bool getChildVisible()
		{
			return gtk_widget_get_child_visible(gtkWidget) != 0;
		}

		/**
		 * Retrieves the widget’s clip area.
		 *
		 * The clip area is the area in which all of @widget's drawing will
		 * happen. Other toolkits call it the bounding box.
		 *
		 * Historically, in GTK+ the clip area has been equal to the allocation
		 * retrieved via gtk_widget_get_allocation().
		 *
		 * Params:
		 *     clip = a pointer to a #GtkAllocation to copy to
		 *
		 * Since: 3.14
		 */
		public void getClip(out GtkAllocation clip)
		{
			gtk_widget_get_clip(gtkWidget, &clip);
		}

		/**
		 * Returns the clipboard object for the given selection to
		 * be used with @widget. @widget must have a #GdkDisplay
		 * associated with it, so must be attached to a toplevel
		 * window.
		 *
		 * Params:
		 *     selection = a #GdkAtom which identifies the clipboard
		 *         to use. %GDK_SELECTION_CLIPBOARD gives the
		 *         default clipboard. Another common value
		 *         is %GDK_SELECTION_PRIMARY, which gives
		 *         the primary X selection.
		 *
		 * Return: the appropriate clipboard object. If no
		 *     clipboard already exists, a new one will
		 *     be created. Once a clipboard object has
		 *     been created, it is persistent for all time.
		 *
		 * Since: 2.2
		 */
		public Clipboard getClipboard(GdkAtom selection)
		{
			auto p = gtk_widget_get_clipboard(gtkWidget, selection);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Clipboard)(cast(GtkClipboard*) p);
		}

		/**
		 * Obtains the composite name of a widget.
		 *
		 * Deprecated: Use gtk_widget_class_set_template(), or don’t use this API at all.
		 *
		 * Return: the composite name of @widget, or %NULL if @widget is not
		 *     a composite child. The string should be freed when it is no
		 *     longer needed.
		 */
		public string getCompositeName()
		{
			auto retStr = gtk_widget_get_composite_name(gtkWidget);
			
			scope(exit) Str.freeString(retStr);
			return Str.toString(retStr);
		}

		/**
		 * Returns whether @device can interact with @widget and its
		 * children. See gtk_widget_set_device_enabled().
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *
		 * Return: %TRUE is @device is enabled for @widget
		 *
		 * Since: 3.0
		 */
		public bool getDeviceEnabled(Device device)
		{
			return gtk_widget_get_device_enabled(gtkWidget, (device is null) ? null : device.getDeviceStruct()) != 0;
		}

		/**
		 * Returns the events mask for the widget corresponding to an specific device. These
		 * are the events that the widget will receive when @device operates on it.
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *
		 * Return: device event mask for @widget
		 *
		 * Since: 3.0
		 */
		public GdkEventMask getDeviceEvents(Device device)
		{
			return gtk_widget_get_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct());
		}

		/**
		 * Gets the reading direction for a particular widget. See
		 * gtk_widget_set_direction().
		 *
		 * Return: the reading direction for the widget.
		 */
		public GtkTextDirection getDirection()
		{
			return gtk_widget_get_direction(gtkWidget);
		}

		/**
		 * Get the #GdkDisplay for the toplevel window associated with
		 * this widget. This function can only be called after the widget
		 * has been added to a widget hierarchy with a #GtkWindow at the top.
		 *
		 * In general, you should only create display specific
		 * resources when a widget has been realized, and you should
		 * free those resources when the widget is unrealized.
		 *
		 * Return: the #GdkDisplay for the toplevel for this widget.
		 *
		 * Since: 2.2
		 */
		public Display getDisplay()
		{
			auto p = gtk_widget_get_display(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
		}

		/**
		 * Determines whether the widget is double buffered.
		 *
		 * See gtk_widget_set_double_buffered()
		 *
		 * Return: %TRUE if the widget is double buffered
		 *
		 * Since: 2.18
		 */
		public bool getDoubleBuffered()
		{
			return gtk_widget_get_double_buffered(gtkWidget) != 0;
		}

		/**
		 * Returns the event mask (see #GdkEventMask) for the widget. These are the
		 * events that the widget will receive.
		 *
		 * Note: Internally, the widget event mask will be the logical OR of the event
		 * mask set through gtk_widget_set_events() or gtk_widget_add_events(), and the
		 * event mask necessary to cater for every #GtkEventController created for the
		 * widget.
		 *
		 * Return: event mask for @widget
		 */
		public int getEvents()
		{
			return gtk_widget_get_events(gtkWidget);
		}

		/**
		 * Returns whether the widget should grab focus when it is clicked with the mouse.
		 * See gtk_widget_set_focus_on_click().
		 *
		 * Return: %TRUE if the widget should grab focus when it is clicked with
		 *     the mouse.
		 *
		 * Since: 3.20
		 */
		public bool getFocusOnClick()
		{
			return gtk_widget_get_focus_on_click(gtkWidget) != 0;
		}

		/**
		 * Gets the font map that has been set with gtk_widget_set_font_map().
		 *
		 * Return: A #PangoFontMap, or %NULL
		 *
		 * Since: 3.18
		 */
		public PgFontMap getFontMap()
		{
			auto p = gtk_widget_get_font_map(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) p);
		}

		/**
		 * Returns the #cairo_font_options_t used for Pango rendering. When not set,
		 * the defaults font options for the #GdkScreen will be used.
		 *
		 * Return: the #cairo_font_options_t or %NULL if not set
		 *
		 * Since: 3.18
		 */
		public FontOption getFontOptions()
		{
			auto p = gtk_widget_get_font_options(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return new FontOption(cast(cairo_font_options_t*) p);
		}

		/**
		 * Obtains the frame clock for a widget. The frame clock is a global
		 * “ticker” that can be used to drive animations and repaints.  The
		 * most common reason to get the frame clock is to call
		 * gdk_frame_clock_get_frame_time(), in order to get a time to use for
		 * animating. For example you might record the start of the animation
		 * with an initial value from gdk_frame_clock_get_frame_time(), and
		 * then update the animation by calling
		 * gdk_frame_clock_get_frame_time() again during each repaint.
		 *
		 * gdk_frame_clock_request_phase() will result in a new frame on the
		 * clock, but won’t necessarily repaint any widgets. To repaint a
		 * widget, you have to use gtk_widget_queue_draw() which invalidates
		 * the widget (thus scheduling it to receive a draw on the next
		 * frame). gtk_widget_queue_draw() will also end up requesting a frame
		 * on the appropriate frame clock.
		 *
		 * A widget’s frame clock will not change while the widget is
		 * mapped. Reparenting a widget (which implies a temporary unmap) can
		 * change the widget’s frame clock.
		 *
		 * Unrealized widgets do not have a frame clock.
		 *
		 * Return: a #GdkFrameClock,
		 *     or #NULL if widget is unrealized
		 *
		 * Since: 3.8
		 */
		public FrameClock getFrameClock()
		{
			auto p = gtk_widget_get_frame_clock(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) p);
		}

		/**
		 * Gets the value of the #GtkWidget:halign property.
		 *
		 * For backwards compatibility reasons this method will never return
		 * %GTK_ALIGN_BASELINE, but instead it will convert it to
		 * %GTK_ALIGN_FILL. Baselines are not supported for horizontal
		 * alignment.
		 *
		 * Return: the horizontal alignment of @widget
		 */
		public GtkAlign getHalign()
		{
			return gtk_widget_get_halign(gtkWidget);
		}

		/**
		 * Returns the current value of the has-tooltip property.  See
		 * #GtkWidget:has-tooltip for more information.
		 *
		 * Return: current value of has-tooltip on @widget.
		 *
		 * Since: 2.12
		 */
		public bool getHasTooltip()
		{
			return gtk_widget_get_has_tooltip(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget has a #GdkWindow of its own. See
		 * gtk_widget_set_has_window().
		 *
		 * Return: %TRUE if @widget has a window, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool getHasWindow()
		{
			return gtk_widget_get_has_window(gtkWidget) != 0;
		}

		/**
		 * Gets whether the widget would like any available extra horizontal
		 * space. When a user resizes a #GtkWindow, widgets with expand=TRUE
		 * generally receive the extra space. For example, a list or
		 * scrollable area or document in your window would often be set to
		 * expand.
		 *
		 * Containers should use gtk_widget_compute_expand() rather than
		 * this function, to see whether a widget, or any of its children,
		 * has the expand flag set. If any child of a widget wants to
		 * expand, the parent may ask to expand also.
		 *
		 * This function only looks at the widget’s own hexpand flag, rather
		 * than computing whether the entire widget tree rooted at this widget
		 * wants to expand.
		 *
		 * Return: whether hexpand flag is set
		 */
		public bool getHexpand()
		{
			return gtk_widget_get_hexpand(gtkWidget) != 0;
		}

		/**
		 * Gets whether gtk_widget_set_hexpand() has been used to
		 * explicitly set the expand flag on this widget.
		 *
		 * If hexpand is set, then it overrides any computed
		 * expand value based on child widgets. If hexpand is not
		 * set, then the expand value depends on whether any
		 * children of the widget would like to expand.
		 *
		 * There are few reasons to use this function, but it’s here
		 * for completeness and consistency.
		 *
		 * Return: whether hexpand has been explicitly set
		 */
		public bool getHexpandSet()
		{
			return gtk_widget_get_hexpand_set(gtkWidget) != 0;
		}

		/**
		 * Whether the widget is mapped.
		 *
		 * Return: %TRUE if the widget is mapped, %FALSE otherwise.
		 *
		 * Since: 2.20
		 */
		public bool getMapped()
		{
			return gtk_widget_get_mapped(gtkWidget) != 0;
		}

		/**
		 * Gets the value of the #GtkWidget:margin-bottom property.
		 *
		 * Return: The bottom margin of @widget
		 *
		 * Since: 3.0
		 */
		public int getMarginBottom()
		{
			return gtk_widget_get_margin_bottom(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:margin-end property.
		 *
		 * Return: The end margin of @widget
		 *
		 * Since: 3.12
		 */
		public int getMarginEnd()
		{
			return gtk_widget_get_margin_end(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:margin-left property.
		 *
		 * Deprecated: Use gtk_widget_get_margin_start() instead.
		 *
		 * Return: The left margin of @widget
		 *
		 * Since: 3.0
		 */
		public int getMarginLeft()
		{
			return gtk_widget_get_margin_left(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:margin-right property.
		 *
		 * Deprecated: Use gtk_widget_get_margin_end() instead.
		 *
		 * Return: The right margin of @widget
		 *
		 * Since: 3.0
		 */
		public int getMarginRight()
		{
			return gtk_widget_get_margin_right(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:margin-start property.
		 *
		 * Return: The start margin of @widget
		 *
		 * Since: 3.12
		 */
		public int getMarginStart()
		{
			return gtk_widget_get_margin_start(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:margin-top property.
		 *
		 * Return: The top margin of @widget
		 *
		 * Since: 3.0
		 */
		public int getMarginTop()
		{
			return gtk_widget_get_margin_top(gtkWidget);
		}

		/**
		 * Returns the modifier mask the @widget’s windowing system backend
		 * uses for a particular purpose.
		 *
		 * See gdk_keymap_get_modifier_mask().
		 *
		 * Params:
		 *     intent = the use case for the modifier mask
		 *
		 * Return: the modifier mask used for @intent.
		 *
		 * Since: 3.4
		 */
		public GdkModifierType getModifierMask(GdkModifierIntent intent)
		{
			return gtk_widget_get_modifier_mask(gtkWidget, intent);
		}

		/**
		 * Returns the current modifier style for the widget. (As set by
		 * gtk_widget_modify_style().) If no style has previously set, a new
		 * #GtkRcStyle will be created with all values unset, and set as the
		 * modifier style for the widget. If you make changes to this rc
		 * style, you must call gtk_widget_modify_style(), passing in the
		 * returned rc style, to make sure that your changes take effect.
		 *
		 * Caution: passing the style back to gtk_widget_modify_style() will
		 * normally end up destroying it, because gtk_widget_modify_style() copies
		 * the passed-in style and sets the copy as the new modifier style,
		 * thus dropping any reference to the old modifier style. Add a reference
		 * to the modifier style if you want to keep it alive.
		 *
		 * Deprecated: Use #GtkStyleContext with a custom #GtkStyleProvider instead
		 *
		 * Return: the modifier style for the widget.
		 *     This rc style is owned by the widget. If you want to keep a
		 *     pointer to value this around, you must add a refcount using
		 *     g_object_ref().
		 */
		public RcStyle getModifierStyle()
		{
			auto p = gtk_widget_get_modifier_style(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(RcStyle)(cast(GtkRcStyle*) p);
		}

		/**
		 * Retrieves the name of a widget. See gtk_widget_set_name() for the
		 * significance of widget names.
		 *
		 * Return: name of the widget. This string is owned by GTK+ and
		 *     should not be modified or freed
		 */
		public string getName()
		{
			return Str.toString(gtk_widget_get_name(gtkWidget));
		}

		/**
		 * Returns the current value of the #GtkWidget:no-show-all property,
		 * which determines whether calls to gtk_widget_show_all()
		 * will affect this widget.
		 *
		 * Return: the current value of the “no-show-all” property.
		 *
		 * Since: 2.4
		 */
		public bool getNoShowAll()
		{
			return gtk_widget_get_no_show_all(gtkWidget) != 0;
		}

		/**
		 * Fetches the requested opacity for this widget.
		 * See gtk_widget_set_opacity().
		 *
		 * Return: the requested opacity for this widget.
		 *
		 * Since: 3.8
		 */
		public double getOpacity()
		{
			return gtk_widget_get_opacity(gtkWidget);
		}

		/**
		 * Gets a #PangoContext with the appropriate font map, font description,
		 * and base direction for this widget. Unlike the context returned
		 * by gtk_widget_create_pango_context(), this context is owned by
		 * the widget (it can be used until the screen for the widget changes
		 * or the widget is removed from its toplevel), and will be updated to
		 * match any changes to the widget’s attributes. This can be tracked
		 * by using the #GtkWidget::screen-changed signal on the widget.
		 *
		 * Return: the #PangoContext for the widget.
		 */
		public PgContext getPangoContext()
		{
			auto p = gtk_widget_get_pango_context(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
		}

		/**
		 * Returns the parent container of @widget.
		 *
		 * Return: the parent container of @widget, or %NULL
		 */
		public Widget getParent()
		{
			auto p = gtk_widget_get_parent(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
		}

		/**
		 * Gets @widget’s parent window.
		 *
		 * Return: the parent window of @widget.
		 */
		public GdkWin getParentWindow()
		{
			auto p = gtk_widget_get_parent_window(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(GdkWin)(cast(GdkWindow*) p);
		}

		/**
		 * Returns the #GtkWidgetPath representing @widget, if the widget
		 * is not connected to a toplevel widget, a partial path will be
		 * created.
		 *
		 * Return: The #GtkWidgetPath representing @widget
		 */
		public WidgetPath getPath()
		{
			auto p = gtk_widget_get_path(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
		}

		/**
		 * Obtains the location of the mouse pointer in widget coordinates.
		 * Widget coordinates are a bit odd; for historical reasons, they are
		 * defined as @widget->window coordinates for widgets that return %TRUE for
		 * gtk_widget_get_has_window(); and are relative to @widget->allocation.x,
		 * @widget->allocation.y otherwise.
		 *
		 * Deprecated: Use gdk_window_get_device_position() instead.
		 *
		 * Params:
		 *     x = return location for the X coordinate, or %NULL
		 *     y = return location for the Y coordinate, or %NULL
		 */
		public void getPointer(out int x, out int y)
		{
			gtk_widget_get_pointer(gtkWidget, &x, &y);
		}

		/**
		 * Retrieves a widget’s initial minimum and natural height.
		 *
		 * This call is specific to width-for-height requests.
		 *
		 * The returned request will be modified by the
		 * GtkWidgetClass::adjust_size_request virtual method and by any
		 * #GtkSizeGroups that have been applied. That is, the returned request
		 * is the one that should be used for layout, not necessarily the one
		 * returned by the widget itself.
		 *
		 * Params:
		 *     minimumHeight = location to store the minimum height, or %NULL
		 *     naturalHeight = location to store the natural height, or %NULL
		 *
		 * Since: 3.0
		 */
		public void getPreferredHeight(out int minimumHeight, out int naturalHeight)
		{
			gtk_widget_get_preferred_height(gtkWidget, &minimumHeight, &naturalHeight);
		}

		/**
		 * Retrieves a widget’s minimum and natural height and the corresponding baselines if it would be given
		 * the specified @width, or the default height if @width is -1. The baselines may be -1 which means
		 * that no baseline is requested for this widget.
		 *
		 * The returned request will be modified by the
		 * GtkWidgetClass::adjust_size_request and GtkWidgetClass::adjust_baseline_request virtual methods
		 * and by any #GtkSizeGroups that have been applied. That is, the returned request
		 * is the one that should be used for layout, not necessarily the one
		 * returned by the widget itself.
		 *
		 * Params:
		 *     width = the width which is available for allocation, or -1 if none
		 *     minimumHeight = location for storing the minimum height, or %NULL
		 *     naturalHeight = location for storing the natural height, or %NULL
		 *     minimumBaseline = location for storing the baseline for the minimum height, or %NULL
		 *     naturalBaseline = location for storing the baseline for the natural height, or %NULL
		 *
		 * Since: 3.10
		 */
		public void getPreferredHeightAndBaselineForWidth(int width, out int minimumHeight, out int naturalHeight, out int minimumBaseline, out int naturalBaseline)
		{
			gtk_widget_get_preferred_height_and_baseline_for_width(gtkWidget, width, &minimumHeight, &naturalHeight, &minimumBaseline, &naturalBaseline);
		}

		/**
		 * Retrieves a widget’s minimum and natural height if it would be given
		 * the specified @width.
		 *
		 * The returned request will be modified by the
		 * GtkWidgetClass::adjust_size_request virtual method and by any
		 * #GtkSizeGroups that have been applied. That is, the returned request
		 * is the one that should be used for layout, not necessarily the one
		 * returned by the widget itself.
		 *
		 * Params:
		 *     width = the width which is available for allocation
		 *     minimumHeight = location for storing the minimum height, or %NULL
		 *     naturalHeight = location for storing the natural height, or %NULL
		 *
		 * Since: 3.0
		 */
		public void getPreferredHeightForWidth(int width, out int minimumHeight, out int naturalHeight)
		{
			gtk_widget_get_preferred_height_for_width(gtkWidget, width, &minimumHeight, &naturalHeight);
		}

		/**
		 * Retrieves the minimum and natural size of a widget, taking
		 * into account the widget’s preference for height-for-width management.
		 *
		 * This is used to retrieve a suitable size by container widgets which do
		 * not impose any restrictions on the child placement. It can be used
		 * to deduce toplevel window and menu sizes as well as child widgets in
		 * free-form containers such as GtkLayout.
		 *
		 * Handle with care. Note that the natural height of a height-for-width
		 * widget will generally be a smaller size than the minimum height, since the required
		 * height for the natural width is generally smaller than the required height for
		 * the minimum width.
		 *
		 * Use gtk_widget_get_preferred_height_and_baseline_for_width() if you want to support
		 * baseline alignment.
		 *
		 * Params:
		 *     minimumSize = location for storing the minimum size, or %NULL
		 *     naturalSize = location for storing the natural size, or %NULL
		 *
		 * Since: 3.0
		 */
		public void getPreferredSize(out Requisition minimumSize, out Requisition naturalSize)
		{
			GtkRequisition* outminimumSize = gMalloc!GtkRequisition();
			GtkRequisition* outnaturalSize = gMalloc!GtkRequisition();
			
			gtk_widget_get_preferred_size(gtkWidget, outminimumSize, outnaturalSize);
			
			minimumSize = ObjectG.getDObject!(Requisition)(outminimumSize, true);
			naturalSize = ObjectG.getDObject!(Requisition)(outnaturalSize, true);
		}

		/**
		 * Retrieves a widget’s initial minimum and natural width.
		 *
		 * This call is specific to height-for-width requests.
		 *
		 * The returned request will be modified by the
		 * GtkWidgetClass::adjust_size_request virtual method and by any
		 * #GtkSizeGroups that have been applied. That is, the returned request
		 * is the one that should be used for layout, not necessarily the one
		 * returned by the widget itself.
		 *
		 * Params:
		 *     minimumWidth = location to store the minimum width, or %NULL
		 *     naturalWidth = location to store the natural width, or %NULL
		 *
		 * Since: 3.0
		 */
		public void getPreferredWidth(out int minimumWidth, out int naturalWidth)
		{
			gtk_widget_get_preferred_width(gtkWidget, &minimumWidth, &naturalWidth);
		}

		/**
		 * Retrieves a widget’s minimum and natural width if it would be given
		 * the specified @height.
		 *
		 * The returned request will be modified by the
		 * GtkWidgetClass::adjust_size_request virtual method and by any
		 * #GtkSizeGroups that have been applied. That is, the returned request
		 * is the one that should be used for layout, not necessarily the one
		 * returned by the widget itself.
		 *
		 * Params:
		 *     height = the height which is available for allocation
		 *     minimumWidth = location for storing the minimum width, or %NULL
		 *     naturalWidth = location for storing the natural width, or %NULL
		 *
		 * Since: 3.0
		 */
		public void getPreferredWidthForHeight(int height, out int minimumWidth, out int naturalWidth)
		{
			gtk_widget_get_preferred_width_for_height(gtkWidget, height, &minimumWidth, &naturalWidth);
		}

		/**
		 * Determines whether @widget is realized.
		 *
		 * Return: %TRUE if @widget is realized, %FALSE otherwise
		 *
		 * Since: 2.20
		 */
		public bool getRealized()
		{
			return gtk_widget_get_realized(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget is always treated as the default widget
		 * within its toplevel when it has the focus, even if another widget
		 * is the default.
		 *
		 * See gtk_widget_set_receives_default().
		 *
		 * Return: %TRUE if @widget acts as the default widget when focused,
		 *     %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool getReceivesDefault()
		{
			return gtk_widget_get_receives_default(gtkWidget) != 0;
		}

		/**
		 * Gets whether the widget prefers a height-for-width layout
		 * or a width-for-height layout.
		 *
		 * #GtkBin widgets generally propagate the preference of
		 * their child, container widgets need to request something either in
		 * context of their children or in context of their allocation
		 * capabilities.
		 *
		 * Return: The #GtkSizeRequestMode preferred by @widget.
		 *
		 * Since: 3.0
		 */
		public GtkSizeRequestMode getRequestMode()
		{
			return gtk_widget_get_request_mode(gtkWidget);
		}

		/**
		 * Retrieves the widget’s requisition.
		 *
		 * This function should only be used by widget implementations in
		 * order to figure whether the widget’s requisition has actually
		 * changed after some internal state change (so that they can call
		 * gtk_widget_queue_resize() instead of gtk_widget_queue_draw()).
		 *
		 * Normally, gtk_widget_size_request() should be used.
		 *
		 * Deprecated: The #GtkRequisition cache on the widget was
		 * removed, If you need to cache sizes across requests and allocations,
		 * add an explicit cache to the widget in question instead.
		 *
		 * Params:
		 *     requisition = a pointer to a #GtkRequisition to copy to
		 *
		 * Since: 2.20
		 */
		public void getRequisition(out Requisition requisition)
		{
			GtkRequisition* outrequisition = gMalloc!GtkRequisition();
			
			gtk_widget_get_requisition(gtkWidget, outrequisition);
			
			requisition = ObjectG.getDObject!(Requisition)(outrequisition, true);
		}

		/**
		 * Get the root window where this widget is located. This function can
		 * only be called after the widget has been added to a widget
		 * hierarchy with #GtkWindow at the top.
		 *
		 * The root window is useful for such purposes as creating a popup
		 * #GdkWindow associated with the window. In general, you should only
		 * create display specific resources when a widget has been realized,
		 * and you should free those resources when the widget is unrealized.
		 *
		 * Deprecated: Use gdk_screen_get_root_window() instead
		 *
		 * Return: the #GdkWindow root window for the toplevel for this widget.
		 *
		 * Since: 2.2
		 */
		public GdkWin getRootWindow()
		{
			auto p = gtk_widget_get_root_window(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(GdkWin)(cast(GdkWindow*) p);
		}

		/**
		 * Retrieves the internal scale factor that maps from window coordinates
		 * to the actual device pixels. On traditional systems this is 1, on
		 * high density outputs, it can be a higher value (typically 2).
		 *
		 * See gdk_window_get_scale_factor().
		 *
		 * Return: the scale factor for @widget
		 *
		 * Since: 3.10
		 */
		public int getScaleFactor()
		{
			return gtk_widget_get_scale_factor(gtkWidget);
		}

		/**
		 * Get the #GdkScreen from the toplevel window associated with
		 * this widget. This function can only be called after the widget
		 * has been added to a widget hierarchy with a #GtkWindow
		 * at the top.
		 *
		 * In general, you should only create screen specific
		 * resources when a widget has been realized, and you should
		 * free those resources when the widget is unrealized.
		 *
		 * Return: the #GdkScreen for the toplevel for this widget.
		 *
		 * Since: 2.2
		 */
		public Screen getScreen()
		{
			auto p = gtk_widget_get_screen(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
		}

		/**
		 * Returns the widget’s sensitivity (in the sense of returning
		 * the value that has been set using gtk_widget_set_sensitive()).
		 *
		 * The effective sensitivity of a widget is however determined by both its
		 * own and its parent widget’s sensitivity. See gtk_widget_is_sensitive().
		 *
		 * Return: %TRUE if the widget is sensitive
		 *
		 * Since: 2.18
		 */
		public bool getSensitive()
		{
			return gtk_widget_get_sensitive(gtkWidget) != 0;
		}

		/**
		 * Gets the settings object holding the settings used for this widget.
		 *
		 * Note that this function can only be called when the #GtkWidget
		 * is attached to a toplevel, since the settings object is specific
		 * to a particular #GdkScreen.
		 *
		 * Return: the relevant #GtkSettings object
		 */
		public Settings getSettings()
		{
			auto p = gtk_widget_get_settings(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
		}

		/**
		 * Gets the size request that was explicitly set for the widget using
		 * gtk_widget_set_size_request(). A value of -1 stored in @width or
		 * @height indicates that that dimension has not been set explicitly
		 * and the natural requisition of the widget will be used instead. See
		 * gtk_widget_set_size_request(). To get the size a widget will
		 * actually request, call gtk_widget_get_preferred_size() instead of
		 * this function.
		 *
		 * Params:
		 *     width = return location for width, or %NULL
		 *     height = return location for height, or %NULL
		 */
		public void getSizeRequest(out int width, out int height)
		{
			gtk_widget_get_size_request(gtkWidget, &width, &height);
		}

		/**
		 * Returns the widget state as a flag set. It is worth mentioning
		 * that the effective %GTK_STATE_FLAG_INSENSITIVE state will be
		 * returned, that is, also based on parent insensitivity, even if
		 * @widget itself is sensitive.
		 *
		 * Also note that if you are looking for a way to obtain the
		 * #GtkStateFlags to pass to a #GtkStyleContext method, you
		 * should look at gtk_style_context_get_state().
		 *
		 * Return: The state flags for widget
		 *
		 * Since: 3.0
		 */
		public GtkStateFlags getStateFlags()
		{
			return gtk_widget_get_state_flags(gtkWidget);
		}

		/**
		 * Simply an accessor function that returns @widget->style.
		 *
		 * Deprecated: Use #GtkStyleContext instead
		 *
		 * Return: the widget’s #GtkStyle
		 */
		public Style getStyle()
		{
			auto p = gtk_widget_get_style(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
		}

		/**
		 * Returns the style context associated to @widget. The returned object is
		 * guaranteed to be the same for the lifetime of @widget.
		 *
		 * Return: a #GtkStyleContext. This memory is owned by @widget and
		 *     must not be freed.
		 */
		public StyleContext getStyleContext()
		{
			auto p = gtk_widget_get_style_context(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
		}

		/**
		 * Returns %TRUE if @widget is multiple pointer aware. See
		 * gtk_widget_set_support_multidevice() for more information.
		 *
		 * Return: %TRUE if @widget is multidevice aware.
		 */
		public bool getSupportMultidevice()
		{
			return gtk_widget_get_support_multidevice(gtkWidget) != 0;
		}

		/**
		 * Fetch an object build from the template XML for @widget_type in this @widget instance.
		 *
		 * This will only report children which were previously declared with
		 * gtk_widget_class_bind_template_child_full() or one of its
		 * variants.
		 *
		 * This function is only meant to be called for code which is private to the @widget_type which
		 * declared the child and is meant for language bindings which cannot easily make use
		 * of the GObject structure offsets.
		 *
		 * Params:
		 *     widgetType = The #GType to get a template child for
		 *     name = The “id” of the child defined in the template XML
		 *
		 * Return: The object built in the template XML with the id @name
		 */
		public ObjectG getTemplateChild(GType widgetType, string name)
		{
			auto p = gtk_widget_get_template_child(gtkWidget, widgetType, Str.toStringz(name));
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
		}

		/**
		 * Gets the contents of the tooltip for @widget.
		 *
		 * Return: the tooltip text, or %NULL. You should free the
		 *     returned string with g_free() when done.
		 *
		 * Since: 2.12
		 */
		public string getTooltipMarkup()
		{
			auto retStr = gtk_widget_get_tooltip_markup(gtkWidget);
			
			scope(exit) Str.freeString(retStr);
			return Str.toString(retStr);
		}

		/**
		 * Gets the contents of the tooltip for @widget.
		 *
		 * Return: the tooltip text, or %NULL. You should free the
		 *     returned string with g_free() when done.
		 *
		 * Since: 2.12
		 */
		public string getTooltipText()
		{
			auto retStr = gtk_widget_get_tooltip_text(gtkWidget);
			
			scope(exit) Str.freeString(retStr);
			return Str.toString(retStr);
		}

		/**
		 * Returns the #GtkWindow of the current tooltip. This can be the
		 * GtkWindow created by default, or the custom tooltip window set
		 * using gtk_widget_set_tooltip_window().
		 *
		 * Return: The #GtkWindow of the current tooltip.
		 *
		 * Since: 2.12
		 */
		public Window getTooltipWindow()
		{
			auto p = gtk_widget_get_tooltip_window(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Window)(cast(GtkWindow*) p);
		}

		/**
		 * This function returns the topmost widget in the container hierarchy
		 * @widget is a part of. If @widget has no parent widgets, it will be
		 * returned as the topmost widget. No reference will be added to the
		 * returned widget; it should not be unreferenced.
		 *
		 * Note the difference in behavior vs. gtk_widget_get_ancestor();
		 * `gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)`
		 * would return
		 * %NULL if @widget wasn’t inside a toplevel window, and if the
		 * window was inside a #GtkWindow-derived widget which was in turn
		 * inside the toplevel #GtkWindow. While the second case may
		 * seem unlikely, it actually happens when a #GtkPlug is embedded
		 * inside a #GtkSocket within the same application.
		 *
		 * To reliably find the toplevel #GtkWindow, use
		 * gtk_widget_get_toplevel() and call gtk_widget_is_toplevel()
		 * on the result.
		 * |[<!-- language="C" -->
		 * GtkWidget *toplevel = gtk_widget_get_toplevel (widget);
		 * if (gtk_widget_is_toplevel (toplevel))
		 * {
		 * // Perform action on toplevel.
		 * }
		 * ]|
		 *
		 * Return: the topmost ancestor of @widget, or @widget itself
		 *     if there’s no ancestor.
		 */
		public Widget getToplevel()
		{
			auto p = gtk_widget_get_toplevel(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
		}

		/**
		 * Gets the value of the #GtkWidget:valign property.
		 *
		 * For backwards compatibility reasons this method will never return
		 * %GTK_ALIGN_BASELINE, but instead it will convert it to
		 * %GTK_ALIGN_FILL. If your widget want to support baseline aligned
		 * children it must use gtk_widget_get_valign_with_baseline(), or
		 * `g_object_get (widget, "valign", &value, NULL)`, which will
		 * also report the true value.
		 *
		 * Return: the vertical alignment of @widget, ignoring baseline alignment
		 */
		public GtkAlign getValign()
		{
			return gtk_widget_get_valign(gtkWidget);
		}

		/**
		 * Gets the value of the #GtkWidget:valign property, including
		 * %GTK_ALIGN_BASELINE.
		 *
		 * Return: the vertical alignment of @widget
		 *
		 * Since: 3.10
		 */
		public GtkAlign getValignWithBaseline()
		{
			return gtk_widget_get_valign_with_baseline(gtkWidget);
		}

		/**
		 * Gets whether the widget would like any available extra vertical
		 * space.
		 *
		 * See gtk_widget_get_hexpand() for more detail.
		 *
		 * Return: whether vexpand flag is set
		 */
		public bool getVexpand()
		{
			return gtk_widget_get_vexpand(gtkWidget) != 0;
		}

		/**
		 * Gets whether gtk_widget_set_vexpand() has been used to
		 * explicitly set the expand flag on this widget.
		 *
		 * See gtk_widget_get_hexpand_set() for more detail.
		 *
		 * Return: whether vexpand has been explicitly set
		 */
		public bool getVexpandSet()
		{
			return gtk_widget_get_vexpand_set(gtkWidget) != 0;
		}

		/**
		 * Determines whether the widget is visible. If you want to
		 * take into account whether the widget’s parent is also marked as
		 * visible, use gtk_widget_is_visible() instead.
		 *
		 * This function does not check if the widget is obscured in any way.
		 *
		 * See gtk_widget_set_visible().
		 *
		 * Return: %TRUE if the widget is visible
		 *
		 * Since: 2.18
		 */
		public bool getVisible()
		{
			return gtk_widget_get_visible(gtkWidget) != 0;
		}

		/**
		 * Gets the visual that will be used to render @widget.
		 *
		 * Return: the visual for @widget
		 */
		public Visual getVisual()
		{
			auto p = gtk_widget_get_visual(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
		}

		/**
		 * Returns the widget’s window if it is realized, %NULL otherwise
		 *
		 * Return: @widget’s window.
		 *
		 * Since: 2.14
		 */
		public GdkWin getWindow()
		{
			auto p = gtk_widget_get_window(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(GdkWin)(cast(GdkWindow*) p);
		}

		/**
		 * Makes @widget the current grabbed widget.
		 *
		 * This means that interaction with other widgets in the same
		 * application is blocked and mouse as well as keyboard events
		 * are delivered to this widget.
		 *
		 * If @widget is not sensitive, it is not set as the current
		 * grabbed widget and this function does nothing.
		 */
		public void grabAdd()
		{
			gtk_grab_add(gtkWidget);
		}

		/**
		 * Causes @widget to become the default widget. @widget must be able to be
		 * a default widget; typically you would ensure this yourself
		 * by calling gtk_widget_set_can_default() with a %TRUE value.
		 * The default widget is activated when
		 * the user presses Enter in a window. Default widgets must be
		 * activatable, that is, gtk_widget_activate() should affect them. Note
		 * that #GtkEntry widgets require the “activates-default” property
		 * set to %TRUE before they activate the default widget when Enter
		 * is pressed and the #GtkEntry is focused.
		 */
		public void grabDefault()
		{
			gtk_widget_grab_default(gtkWidget);
		}

		/**
		 * Causes @widget to have the keyboard focus for the #GtkWindow it's
		 * inside. @widget must be a focusable widget, such as a #GtkEntry;
		 * something like #GtkFrame won’t work.
		 *
		 * More precisely, it must have the %GTK_CAN_FOCUS flag set. Use
		 * gtk_widget_set_can_focus() to modify that flag.
		 *
		 * The widget also needs to be realized and mapped. This is indicated by the
		 * related signals. Grabbing the focus immediately after creating the widget
		 * will likely fail and cause critical warnings.
		 */
		public void grabFocus()
		{
			gtk_widget_grab_focus(gtkWidget);
		}

		/**
		 * Removes the grab from the given widget.
		 *
		 * You have to pair calls to gtk_grab_add() and gtk_grab_remove().
		 *
		 * If @widget does not have the grab, this function does nothing.
		 */
		public void grabRemove()
		{
			gtk_grab_remove(gtkWidget);
		}

		/**
		 * Determines whether @widget is the current default widget within its
		 * toplevel. See gtk_widget_set_can_default().
		 *
		 * Return: %TRUE if @widget is the current default widget within
		 *     its toplevel, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool hasDefault()
		{
			return gtk_widget_has_default(gtkWidget) != 0;
		}

		/**
		 * Determines if the widget has the global input focus. See
		 * gtk_widget_is_focus() for the difference between having the global
		 * input focus, and only having the focus within a toplevel.
		 *
		 * Return: %TRUE if the widget has the global input focus.
		 *
		 * Since: 2.18
		 */
		public bool hasFocus()
		{
			return gtk_widget_has_focus(gtkWidget) != 0;
		}

		/**
		 * Determines whether the widget is currently grabbing events, so it
		 * is the only widget receiving input events (keyboard and mouse).
		 *
		 * See also gtk_grab_add().
		 *
		 * Return: %TRUE if the widget is in the grab_widgets stack
		 *
		 * Since: 2.18
		 */
		public bool hasGrab()
		{
			return gtk_widget_has_grab(gtkWidget) != 0;
		}

		/**
		 * Determines if the widget style has been looked up through the rc mechanism.
		 *
		 * Deprecated: Use #GtkStyleContext instead
		 *
		 * Return: %TRUE if the widget has been looked up through the rc
		 *     mechanism, %FALSE otherwise.
		 *
		 * Since: 2.20
		 */
		public bool hasRcStyle()
		{
			return gtk_widget_has_rc_style(gtkWidget) != 0;
		}

		/**
		 * Checks whether there is a #GdkScreen is associated with
		 * this widget. All toplevel widgets have an associated
		 * screen, and all widgets added into a hierarchy with a toplevel
		 * window at the top.
		 *
		 * Return: %TRUE if there is a #GdkScreen associated
		 *     with the widget.
		 *
		 * Since: 2.2
		 */
		public bool hasScreen()
		{
			return gtk_widget_has_screen(gtkWidget) != 0;
		}

		/**
		 * Determines if the widget should show a visible indication that
		 * it has the global input focus. This is a convenience function for
		 * use in ::draw handlers that takes into account whether focus
		 * indication should currently be shown in the toplevel window of
		 * @widget. See gtk_window_get_focus_visible() for more information
		 * about focus indication.
		 *
		 * To find out if the widget has the global input focus, use
		 * gtk_widget_has_focus().
		 *
		 * Return: %TRUE if the widget should display a “focus rectangle”
		 *
		 * Since: 3.2
		 */
		public bool hasVisibleFocus()
		{
			return gtk_widget_has_visible_focus(gtkWidget) != 0;
		}

		/**
		 * Reverses the effects of gtk_widget_show(), causing the widget to be
		 * hidden (invisible to the user).
		 */
		public void hide()
		{
			gtk_widget_hide(gtkWidget);
		}

		/**
		 * Utility function; intended to be connected to the #GtkWidget::delete-event
		 * signal on a #GtkWindow. The function calls gtk_widget_hide() on its
		 * argument, then returns %TRUE. If connected to ::delete-event, the
		 * result is that clicking the close button for a window (on the
		 * window frame, top right corner usually) will hide but not destroy
		 * the window. By default, GTK+ destroys windows when ::delete-event
		 * is received.
		 *
		 * Return: %TRUE
		 */
		public bool hideOnDelete()
		{
			return gtk_widget_hide_on_delete(gtkWidget) != 0;
		}

		/**
		 * Returns whether the widget is currently being destroyed.
		 * This information can sometimes be used to avoid doing
		 * unnecessary work.
		 *
		 * Return: %TRUE if @widget is being destroyed
		 */
		public bool inDestruction()
		{
			return gtk_widget_in_destruction(gtkWidget) != 0;
		}

		/**
		 * Creates and initializes child widgets defined in templates. This
		 * function must be called in the instance initializer for any
		 * class which assigned itself a template using gtk_widget_class_set_template()
		 *
		 * It is important to call this function in the instance initializer
		 * of a #GtkWidget subclass and not in #GObject.constructed() or
		 * #GObject.constructor() for two reasons.
		 *
		 * One reason is that generally derived widgets will assume that parent
		 * class composite widgets have been created in their instance
		 * initializers.
		 *
		 * Another reason is that when calling g_object_new() on a widget with
		 * composite templates, it’s important to build the composite widgets
		 * before the construct properties are set. Properties passed to g_object_new()
		 * should take precedence over properties set in the private template XML.
		 *
		 * Since: 3.10
		 */
		public void initTemplate()
		{
			gtk_widget_init_template(gtkWidget);
		}

		/**
		 * Sets an input shape for this widget’s GDK window. This allows for
		 * windows which react to mouse click in a nonrectangular region, see
		 * gdk_window_input_shape_combine_region() for more information.
		 *
		 * Params:
		 *     region = shape to be added, or %NULL to remove an existing shape
		 *
		 * Since: 3.0
		 */
		public void inputShapeCombineRegion(Region region)
		{
			gtk_widget_input_shape_combine_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
		}

		/**
		 * Inserts @group into @widget. Children of @widget that implement
		 * #GtkActionable can then be associated with actions in @group by
		 * setting their “action-name” to
		 * @prefix.`action-name`.
		 *
		 * If @group is %NULL, a previously inserted group for @name is removed
		 * from @widget.
		 *
		 * Params:
		 *     name = the prefix for actions in @group
		 *     group = a #GActionGroup, or %NULL
		 *
		 * Since: 3.6
		 */
		public void insertActionGroup(string name, ActionGroupIF group)
		{
			gtk_widget_insert_action_group(gtkWidget, Str.toStringz(name), (group is null) ? null : group.getActionGroupStruct());
		}

		/**
		 * Computes the intersection of a @widget’s area and @area, storing
		 * the intersection in @intersection, and returns %TRUE if there was
		 * an intersection.  @intersection may be %NULL if you’re only
		 * interested in whether there was an intersection.
		 *
		 * Params:
		 *     area = a rectangle
		 *     intersection = rectangle to store intersection of @widget and @area
		 *
		 * Return: %TRUE if there was an intersection
		 */
		public bool intersect(GdkRectangle* area, GdkRectangle* intersection)
		{
			return gtk_widget_intersect(gtkWidget, area, intersection) != 0;
		}

		/**
		 * Determines whether @widget is somewhere inside @ancestor, possibly with
		 * intermediate containers.
		 *
		 * Params:
		 *     ancestor = another #GtkWidget
		 *
		 * Return: %TRUE if @ancestor contains @widget as a child,
		 *     grandchild, great grandchild, etc.
		 */
		public bool isAncestor(Widget ancestor)
		{
			return gtk_widget_is_ancestor(gtkWidget, (ancestor is null) ? null : ancestor.getWidgetStruct()) != 0;
		}

		/**
		 * Whether @widget can rely on having its alpha channel
		 * drawn correctly. On X11 this function returns whether a
		 * compositing manager is running for @widget’s screen.
		 *
		 * Please note that the semantics of this call will change
		 * in the future if used on a widget that has a composited
		 * window in its hierarchy (as set by gdk_window_set_composited()).
		 *
		 * Deprecated: Use gdk_screen_is_composited() instead.
		 *
		 * Return: %TRUE if the widget can rely on its alpha
		 *     channel being drawn correctly.
		 *
		 * Since: 2.10
		 */
		public bool isComposited()
		{
			return gtk_widget_is_composited(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget can be drawn to. A widget can be drawn
		 * to if it is mapped and visible.
		 *
		 * Return: %TRUE if @widget is drawable, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool isDrawable()
		{
			return gtk_widget_is_drawable(gtkWidget) != 0;
		}

		/**
		 * Determines if the widget is the focus widget within its
		 * toplevel. (This does not mean that the #GtkWidget:has-focus property is
		 * necessarily set; #GtkWidget:has-focus will only be set if the
		 * toplevel widget additionally has the global input focus.)
		 *
		 * Return: %TRUE if the widget is the focus widget.
		 */
		public bool isFocus()
		{
			return gtk_widget_is_focus(gtkWidget) != 0;
		}

		/**
		 * Returns the widget’s effective sensitivity, which means
		 * it is sensitive itself and also its parent widget is sensitive
		 *
		 * Return: %TRUE if the widget is effectively sensitive
		 *
		 * Since: 2.18
		 */
		public bool isSensitive()
		{
			return gtk_widget_is_sensitive(gtkWidget) != 0;
		}

		/**
		 * Determines whether @widget is a toplevel widget.
		 *
		 * Currently only #GtkWindow and #GtkInvisible (and out-of-process
		 * #GtkPlugs) are toplevel widgets. Toplevel widgets have no parent
		 * widget.
		 *
		 * Return: %TRUE if @widget is a toplevel, %FALSE otherwise
		 *
		 * Since: 2.18
		 */
		public bool isToplevel()
		{
			return gtk_widget_is_toplevel(gtkWidget) != 0;
		}

		/**
		 * Determines whether the widget and all its parents are marked as
		 * visible.
		 *
		 * This function does not check if the widget is obscured in any way.
		 *
		 * See also gtk_widget_get_visible() and gtk_widget_set_visible()
		 *
		 * Return: %TRUE if the widget and all its parents are visible
		 *
		 * Since: 3.8
		 */
		public bool isVisible()
		{
			return gtk_widget_is_visible(gtkWidget) != 0;
		}

		/**
		 * This function should be called whenever keyboard navigation within
		 * a single widget hits a boundary. The function emits the
		 * #GtkWidget::keynav-failed signal on the widget and its return
		 * value should be interpreted in a way similar to the return value of
		 * gtk_widget_child_focus():
		 *
		 * When %TRUE is returned, stay in the widget, the failed keyboard
		 * navigation is OK and/or there is nowhere we can/should move the
		 * focus to.
		 *
		 * When %FALSE is returned, the caller should continue with keyboard
		 * navigation outside the widget, e.g. by calling
		 * gtk_widget_child_focus() on the widget’s toplevel.
		 *
		 * The default ::keynav-failed handler returns %TRUE for
		 * %GTK_DIR_TAB_FORWARD and %GTK_DIR_TAB_BACKWARD. For the other
		 * values of #GtkDirectionType it returns %FALSE.
		 *
		 * Whenever the default handler returns %TRUE, it also calls
		 * gtk_widget_error_bell() to notify the user of the failed keyboard
		 * navigation.
		 *
		 * A use case for providing an own implementation of ::keynav-failed
		 * (either by connecting to it or by overriding it) would be a row of
		 * #GtkEntry widgets where the user should be able to navigate the
		 * entire row with the cursor keys, as e.g. known from user interfaces
		 * that require entering license keys.
		 *
		 * Params:
		 *     direction = direction of focus movement
		 *
		 * Return: %TRUE if stopping keyboard navigation is fine, %FALSE
		 *     if the emitting widget should try to handle the keyboard
		 *     navigation attempt in its parent container(s).
		 *
		 * Since: 2.12
		 */
		public bool keynavFailed(GtkDirectionType direction)
		{
			return gtk_widget_keynav_failed(gtkWidget, direction) != 0;
		}

		/**
		 * Lists the closures used by @widget for accelerator group connections
		 * with gtk_accel_group_connect_by_path() or gtk_accel_group_connect().
		 * The closures can be used to monitor accelerator changes on @widget,
		 * by connecting to the @GtkAccelGroup::accel-changed signal of the
		 * #GtkAccelGroup of a closure which can be found out with
		 * gtk_accel_group_from_accel_closure().
		 *
		 * Return: a newly allocated #GList of closures
		 */
		public ListG listAccelClosures()
		{
			auto p = gtk_widget_list_accel_closures(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return new ListG(cast(GList*) p);
		}

		/**
		 * Retrieves a %NULL-terminated array of strings containing the prefixes of
		 * #GActionGroup's available to @widget.
		 *
		 * Return: a %NULL-terminated array of strings.
		 *
		 * Since: 3.16
		 */
		public string[] listActionPrefixes()
		{
			return Str.toStringArray(gtk_widget_list_action_prefixes(gtkWidget));
		}

		/**
		 * Returns a newly allocated list of the widgets, normally labels, for
		 * which this widget is the target of a mnemonic (see for example,
		 * gtk_label_set_mnemonic_widget()).
		 *
		 * The widgets in the list are not individually referenced. If you
		 * want to iterate through the list and perform actions involving
		 * callbacks that might destroy the widgets, you
		 * must call `g_list_foreach (result,
		 * (GFunc)g_object_ref, NULL)` first, and then unref all the
		 * widgets afterwards.
		 *
		 * Return: the list of
		 *     mnemonic labels; free this list
		 *     with g_list_free() when you are done with it.
		 *
		 * Since: 2.4
		 */
		public ListG listMnemonicLabels()
		{
			auto p = gtk_widget_list_mnemonic_labels(gtkWidget);
			
			if(p is null)
			{
				return null;
			}
			
			return new ListG(cast(GList*) p);
		}

		/**
		 * This function is only for use in widget implementations. Causes
		 * a widget to be mapped if it isn’t already.
		 */
		public void map()
		{
			gtk_widget_map(gtkWidget);
		}

		/**
		 * Emits the #GtkWidget::mnemonic-activate signal.
		 *
		 * The default handler for this signal activates the @widget if
		 * @group_cycling is %FALSE, and just grabs the focus if @group_cycling
		 * is %TRUE.
		 *
		 * Params:
		 *     groupCycling = %TRUE if there are other widgets with the same mnemonic
		 *
		 * Return: %TRUE if the signal has been handled
		 */
		public bool mnemonicActivate(bool groupCycling)
		{
			return gtk_widget_mnemonic_activate(gtkWidget, groupCycling) != 0;
		}

		/**
		 * Sets the base color for a widget in a particular state.
		 * All other style values are left untouched. The base color
		 * is the background color used along with the text color
		 * (see gtk_widget_modify_text()) for widgets such as #GtkEntry
		 * and #GtkTextView. See also gtk_widget_modify_style().
		 *
		 * > Note that “no window” widgets (which have the %GTK_NO_WINDOW
		 * > flag set) draw on their parent container’s window and thus may
		 * > not draw any background themselves. This is the case for e.g.
		 * > #GtkLabel.
		 * >
		 * > To modify the background of such widgets, you have to set the
		 * > base color on their parent; if you want to set the background
		 * > of a rectangular area around a label, try placing the label in
		 * > a #GtkEventBox widget and setting the base color on that.
		 *
		 * Deprecated: Use gtk_widget_override_background_color() instead
		 *
		 * Params:
		 *     state = the state for which to set the base color
		 *     color = the color to assign (does not need to
		 *         be allocated), or %NULL to undo the effect of previous
		 *         calls to of gtk_widget_modify_base().
		 */
		public void modifyBase(GtkStateType state, Color color)
		{
			gtk_widget_modify_base(gtkWidget, state, (color is null) ? null : color.getColorStruct());
		}

		/**
		 * Sets the background color for a widget in a particular state.
		 *
		 * All other style values are left untouched.
		 * See also gtk_widget_modify_style().
		 *
		 * > Note that “no window” widgets (which have the %GTK_NO_WINDOW
		 * > flag set) draw on their parent container’s window and thus may
		 * > not draw any background themselves. This is the case for e.g.
		 * > #GtkLabel.
		 * >
		 * > To modify the background of such widgets, you have to set the
		 * > background color on their parent; if you want to set the background
		 * > of a rectangular area around a label, try placing the label in
		 * > a #GtkEventBox widget and setting the background color on that.
		 *
		 * Deprecated: Use gtk_widget_override_background_color() instead
		 *
		 * Params:
		 *     state = the state for which to set the background color
		 *     color = the color to assign (does not need
		 *         to be allocated), or %NULL to undo the effect of previous
		 *         calls to of gtk_widget_modify_bg().
		 */
		public void modifyBg(GtkStateType state, Color color)
		{
			gtk_widget_modify_bg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
		}

		/**
		 * Sets the cursor color to use in a widget, overriding the #GtkWidget
		 * cursor-color and secondary-cursor-color
		 * style properties.
		 *
		 * All other style values are left untouched.
		 * See also gtk_widget_modify_style().
		 *
		 * Deprecated: Use gtk_widget_override_cursor() instead.
		 *
		 * Params:
		 *     primary = the color to use for primary cursor (does not
		 *         need to be allocated), or %NULL to undo the effect of previous
		 *         calls to of gtk_widget_modify_cursor().
		 *     secondary = the color to use for secondary cursor (does
		 *         not need to be allocated), or %NULL to undo the effect of
		 *         previous calls to of gtk_widget_modify_cursor().
		 *
		 * Since: 2.12
		 */
		public void modifyCursor(Color primary, Color secondary)
		{
			gtk_widget_modify_cursor(gtkWidget, (primary is null) ? null : primary.getColorStruct(), (secondary is null) ? null : secondary.getColorStruct());
		}

		/**
		 * Sets the foreground color for a widget in a particular state.
		 *
		 * All other style values are left untouched.
		 * See also gtk_widget_modify_style().
		 *
		 * Deprecated: Use gtk_widget_override_color() instead
		 *
		 * Params:
		 *     state = the state for which to set the foreground color
		 *     color = the color to assign (does not need to be allocated),
		 *         or %NULL to undo the effect of previous calls to
		 *         of gtk_widget_modify_fg().
		 */
		public void modifyFg(GtkStateType state, Color color)
		{
			gtk_widget_modify_fg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
		}

		/**
		 * Sets the font to use for a widget.
		 *
		 * All other style values are left untouched.
		 * See also gtk_widget_modify_style().
		 *
		 * Deprecated: Use gtk_widget_override_font() instead
		 *
		 * Params:
		 *     fontDesc = the font description to use, or %NULL
		 *         to undo the effect of previous calls to gtk_widget_modify_font()
		 */
		public void modifyFont(PgFontDescription fontDesc)
		{
			gtk_widget_modify_font(gtkWidget, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
		}

		/**
		 * Modifies style values on the widget.
		 *
		 * Modifications made using this technique take precedence over
		 * style values set via an RC file, however, they will be overridden
		 * if a style is explicitly set on the widget using gtk_widget_set_style().
		 * The #GtkRcStyle-struct is designed so each field can either be
		 * set or unset, so it is possible, using this function, to modify some
		 * style values and leave the others unchanged.
		 *
		 * Note that modifications made with this function are not cumulative
		 * with previous calls to gtk_widget_modify_style() or with such
		 * functions as gtk_widget_modify_fg(). If you wish to retain
		 * previous values, you must first call gtk_widget_get_modifier_style(),
		 * make your modifications to the returned style, then call
		 * gtk_widget_modify_style() with that style. On the other hand,
		 * if you first call gtk_widget_modify_style(), subsequent calls
		 * to such functions gtk_widget_modify_fg() will have a cumulative
		 * effect with the initial modifications.
		 *
		 * Deprecated: Use #GtkStyleContext with a custom #GtkStyleProvider instead
		 *
		 * Params:
		 *     style = the #GtkRcStyle-struct holding the style modifications
		 */
		public void modifyStyle(RcStyle style)
		{
			gtk_widget_modify_style(gtkWidget, (style is null) ? null : style.getRcStyleStruct());
		}

		/**
		 * Sets the text color for a widget in a particular state.
		 *
		 * All other style values are left untouched.
		 * The text color is the foreground color used along with the
		 * base color (see gtk_widget_modify_base()) for widgets such
		 * as #GtkEntry and #GtkTextView.
		 * See also gtk_widget_modify_style().
		 *
		 * Deprecated: Use gtk_widget_override_color() instead
		 *
		 * Params:
		 *     state = the state for which to set the text color
		 *     color = the color to assign (does not need to
		 *         be allocated), or %NULL to undo the effect of previous
		 *         calls to of gtk_widget_modify_text().
		 */
		public void modifyText(GtkStateType state, Color color)
		{
			gtk_widget_modify_text(gtkWidget, state, (color is null) ? null : color.getColorStruct());
		}

		/**
		 * Sets the background color to use for a widget.
		 *
		 * All other style values are left untouched.
		 * See gtk_widget_override_color().
		 *
		 * Deprecated: This function is not useful in the context of CSS-based
		 * rendering. If you wish to change the way a widget renders its background
		 * you should use a custom CSS style, through an application-specific
		 * #GtkStyleProvider and a CSS style class. You can also override the default
		 * drawing of a widget through the #GtkWidget::draw signal, and use Cairo to
		 * draw a specific color, regardless of the CSS style.
		 *
		 * Params:
		 *     state = the state for which to set the background color
		 *     color = the color to assign, or %NULL to undo the effect
		 *         of previous calls to gtk_widget_override_background_color()
		 *
		 * Since: 3.0
		 */
		public void overrideBackgroundColor(GtkStateFlags state, RGBA color)
		{
			gtk_widget_override_background_color(gtkWidget, state, (color is null) ? null : color.getRGBAStruct());
		}

		/**
		 * Sets the color to use for a widget.
		 *
		 * All other style values are left untouched.
		 *
		 * This function does not act recursively. Setting the color of a
		 * container does not affect its children. Note that some widgets that
		 * you may not think of as containers, for instance #GtkButtons,
		 * are actually containers.
		 *
		 * This API is mostly meant as a quick way for applications to
		 * change a widget appearance. If you are developing a widgets
		 * library and intend this change to be themeable, it is better
		 * done by setting meaningful CSS classes in your
		 * widget/container implementation through gtk_style_context_add_class().
		 *
		 * This way, your widget library can install a #GtkCssProvider
		 * with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK priority in order
		 * to provide a default styling for those widgets that need so, and
		 * this theming may fully overridden by the user’s theme.
		 *
		 * Note that for complex widgets this may bring in undesired
		 * results (such as uniform background color everywhere), in
		 * these cases it is better to fully style such widgets through a
		 * #GtkCssProvider with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
		 * priority.
		 *
		 * Deprecated: Use a custom style provider and style classes instead
		 *
		 * Params:
		 *     state = the state for which to set the color
		 *     color = the color to assign, or %NULL to undo the effect
		 *         of previous calls to gtk_widget_override_color()
		 *
		 * Since: 3.0
		 */
		public void overrideColor(GtkStateFlags state, RGBA color)
		{
			gtk_widget_override_color(gtkWidget, state, (color is null) ? null : color.getRGBAStruct());
		}

		/**
		 * Sets the cursor color to use in a widget, overriding the
		 * cursor-color and secondary-cursor-color
		 * style properties. All other style values are left untouched.
		 * See also gtk_widget_modify_style().
		 *
		 * Note that the underlying properties have the #GdkColor type,
		 * so the alpha value in @primary and @secondary will be ignored.
		 *
		 * Deprecated: This function is not useful in the context of CSS-based
		 * rendering. If you wish to change the color used to render the primary
		 * and secondary cursors you should use a custom CSS style, through an
		 * application-specific #GtkStyleProvider and a CSS style class.
		 *
		 * Params:
		 *     cursor = the color to use for primary cursor (does not need to be
		 *         allocated), or %NULL to undo the effect of previous calls to
		 *         of gtk_widget_override_cursor().
		 *     secondaryCursor = the color to use for secondary cursor (does not
		 *         need to be allocated), or %NULL to undo the effect of previous
		 *         calls to of gtk_widget_override_cursor().
		 *
		 * Since: 3.0
		 */
		public void overrideCursor(RGBA cursor, RGBA secondaryCursor)
		{
			gtk_widget_override_cursor(gtkWidget, (cursor is null) ? null : cursor.getRGBAStruct(), (secondaryCursor is null) ? null : secondaryCursor.getRGBAStruct());
		}

		/**
		 * Sets the font to use for a widget. All other style values are
		 * left untouched. See gtk_widget_override_color().
		 *
		 * Deprecated: This function is not useful in the context of CSS-based
		 * rendering. If you wish to change the font a widget uses to render its text
		 * you should use a custom CSS style, through an application-specific
		 * #GtkStyleProvider and a CSS style class.
		 *
		 * Params:
		 *     fontDesc = the font description to use, or %NULL to undo
		 *         the effect of previous calls to gtk_widget_override_font()
		 *
		 * Since: 3.0
		 */
		public void overrideFont(PgFontDescription fontDesc)
		{
			gtk_widget_override_font(gtkWidget, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
		}

		/**
		 * Sets a symbolic color for a widget.
		 *
		 * All other style values are left untouched.
		 * See gtk_widget_override_color() for overriding the foreground
		 * or background color.
		 *
		 * Deprecated: This function is not useful in the context of CSS-based
		 * rendering. If you wish to change the color used to render symbolic icons
		 * you should use a custom CSS style, through an application-specific
		 * #GtkStyleProvider and a CSS style class.
		 *
		 * Params:
		 *     name = the name of the symbolic color to modify
		 *     color = the color to assign (does not need
		 *         to be allocated), or %NULL to undo the effect of previous
		 *         calls to gtk_widget_override_symbolic_color()
		 *
		 * Since: 3.0
		 */
		public void overrideSymbolicColor(string name, RGBA color)
		{
			gtk_widget_override_symbolic_color(gtkWidget, Str.toStringz(name), (color is null) ? null : color.getRGBAStruct());
		}

		/**
		 * Obtains the full path to @widget. The path is simply the name of a
		 * widget and all its parents in the container hierarchy, separated by
		 * periods. The name of a widget comes from
		 * gtk_widget_get_name(). Paths are used to apply styles to a widget
		 * in gtkrc configuration files. Widget names are the type of the
		 * widget by default (e.g. “GtkButton”) or can be set to an
		 * application-specific value with gtk_widget_set_name(). By setting
		 * the name of a widget, you allow users or theme authors to apply
		 * styles to that specific widget in their gtkrc
		 * file. @path_reversed_p fills in the path in reverse order,
		 * i.e. starting with @widget’s name instead of starting with the name
		 * of @widget’s outermost ancestor.
		 *
		 * Deprecated: Use gtk_widget_get_path() instead
		 *
		 * Params:
		 *     pathLength = location to store length of the path,
		 *         or %NULL
		 *     path = location to store allocated path string,
		 *         or %NULL
		 *     pathReversed = location to store allocated reverse
		 *         path string, or %NULL
		 */
		public void path(out uint pathLength, out string path, out string pathReversed)
		{
			char* outpath = null;
			char* outpathReversed = null;
			
			gtk_widget_path(gtkWidget, &pathLength, &outpath, &outpathReversed);
			
			path = Str.toString(outpath);
			pathReversed = Str.toString(outpathReversed);
		}

		/**
		 * This function is only for use in widget implementations.
		 *
		 * Flags the widget for a rerun of the GtkWidgetClass::size_allocate
		 * function. Use this function instead of gtk_widget_queue_resize()
		 * when the @widget's size request didn't change but it wants to
		 * reposition its contents.
		 *
		 * An example user of this function is gtk_widget_set_halign().
		 *
		 * Since: 3.20
		 */
		public void queueAllocate()
		{
			gtk_widget_queue_allocate(gtkWidget);
		}

		/**
		 * Mark @widget as needing to recompute its expand flags. Call
		 * this function when setting legacy expand child properties
		 * on the child of a container.
		 *
		 * See gtk_widget_compute_expand().
		 */
		public void queueComputeExpand()
		{
			gtk_widget_queue_compute_expand(gtkWidget);
		}

		/**
		 * Equivalent to calling gtk_widget_queue_draw_area() for the
		 * entire area of a widget.
		 */
		public void queueDraw()
		{
			gtk_widget_queue_draw(gtkWidget);
		}

		/**
		 * Convenience function that calls gtk_widget_queue_draw_region() on
		 * the region created from the given coordinates.
		 *
		 * The region here is specified in widget coordinates.
		 * Widget coordinates are a bit odd; for historical reasons, they are
		 * defined as @widget->window coordinates for widgets that return %TRUE for
		 * gtk_widget_get_has_window(), and are relative to @widget->allocation.x,
		 * @widget->allocation.y otherwise.
		 *
		 * @width or @height may be 0, in this case this function does
		 * nothing. Negative values for @width and @height are not allowed.
		 *
		 * Params:
		 *     x = x coordinate of upper-left corner of rectangle to redraw
		 *     y = y coordinate of upper-left corner of rectangle to redraw
		 *     width = width of region to draw
		 *     height = height of region to draw
		 */
		public void queueDrawArea(int x, int y, int width, int height)
		{
			gtk_widget_queue_draw_area(gtkWidget, x, y, width, height);
		}

		/**
		 * Invalidates the area of @widget defined by @region by calling
		 * gdk_window_invalidate_region() on the widget’s window and all its
		 * child windows. Once the main loop becomes idle (after the current
		 * batch of events has been processed, roughly), the window will
		 * receive expose events for the union of all regions that have been
		 * invalidated.
		 *
		 * Normally you would only use this function in widget
		 * implementations. You might also use it to schedule a redraw of a
		 * #GtkDrawingArea or some portion thereof.
		 *
		 * Params:
		 *     region = region to draw
		 *
		 * Since: 3.0
		 */
		public void queueDrawRegion(Region region)
		{
			gtk_widget_queue_draw_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
		}

		/**
		 * This function is only for use in widget implementations.
		 * Flags a widget to have its size renegotiated; should
		 * be called when a widget for some reason has a new size request.
		 * For example, when you change the text in a #GtkLabel, #GtkLabel
		 * queues a resize to ensure there’s enough space for the new text.
		 *
		 * Note that you cannot call gtk_widget_queue_resize() on a widget
		 * from inside its implementation of the GtkWidgetClass::size_allocate
		 * virtual method. Calls to gtk_widget_queue_resize() from inside
		 * GtkWidgetClass::size_allocate will be silently ignored.
		 */
		public void queueResize()
		{
			gtk_widget_queue_resize(gtkWidget);
		}

		/**
		 * This function works like gtk_widget_queue_resize(),
		 * except that the widget is not invalidated.
		 *
		 * Since: 2.4
		 */
		public void queueResizeNoRedraw()
		{
			gtk_widget_queue_resize_no_redraw(gtkWidget);
		}

		/**
		 * Creates the GDK (windowing system) resources associated with a
		 * widget.  For example, @widget->window will be created when a widget
		 * is realized.  Normally realization happens implicitly; if you show
		 * a widget and all its parent containers, then the widget will be
		 * realized and mapped automatically.
		 *
		 * Realizing a widget requires all
		 * the widget’s parent widgets to be realized; calling
		 * gtk_widget_realize() realizes the widget’s parents in addition to
		 * @widget itself. If a widget is not yet inside a toplevel window
		 * when you realize it, bad things will happen.
		 *
		 * This function is primarily used in widget implementations, and
		 * isn’t very useful otherwise. Many times when you think you might
		 * need it, a better approach is to connect to a signal that will be
		 * called after the widget is realized automatically, such as
		 * #GtkWidget::draw. Or simply g_signal_connect () to the
		 * #GtkWidget::realize signal.
		 */
		public void realize()
		{
			gtk_widget_realize(gtkWidget);
		}

		/**
		 * Computes the intersection of a @widget’s area and @region, returning
		 * the intersection. The result may be empty, use cairo_region_is_empty() to
		 * check.
		 *
		 * Deprecated: Use gtk_widget_get_allocation() and
		 * cairo_region_intersect_rectangle() to get the same behavior.
		 *
		 * Params:
		 *     region = a #cairo_region_t, in the same coordinate system as
		 *         @widget->allocation. That is, relative to @widget->window
		 *         for widgets which return %FALSE from gtk_widget_get_has_window();
		 *         relative to the parent window of @widget->window otherwise.
		 *
		 * Return: A newly allocated region holding the intersection of @widget
		 *     and @region.
		 */
		public Region regionIntersect(Region region)
		{
			auto p = gtk_widget_region_intersect(gtkWidget, (region is null) ? null : region.getRegionStruct());
			
			if(p is null)
			{
				return null;
			}
			
			return new Region(cast(cairo_region_t*) p);
		}

		/**
		 * Registers a #GdkWindow with the widget and sets it up so that
		 * the widget receives events for it. Call gtk_widget_unregister_window()
		 * when destroying the window.
		 *
		 * Before 3.8 you needed to call gdk_window_set_user_data() directly to set
		 * this up. This is now deprecated and you should use gtk_widget_register_window()
		 * instead. Old code will keep working as is, although some new features like
		 * transparency might not work perfectly.
		 *
		 * Params:
		 *     window = a #GdkWindow
		 *
		 * Since: 3.8
		 */
		public void registerWindow(GdkWin window)
		{
			gtk_widget_register_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
		}

		/**
		 * Removes an accelerator from @widget, previously installed with
		 * gtk_widget_add_accelerator().
		 *
		 * Params:
		 *     accelGroup = accel group for this widget
		 *     accelKey = GDK keyval of the accelerator
		 *     accelMods = modifier key combination of the accelerator
		 *
		 * Return: whether an accelerator was installed and could be removed
		 */
		public bool removeAccelerator(AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods)
		{
			return gtk_widget_remove_accelerator(gtkWidget, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods) != 0;
		}

		/**
		 * Removes a widget from the list of mnemonic labels for
		 * this widget. (See gtk_widget_list_mnemonic_labels()). The widget
		 * must have previously been added to the list with
		 * gtk_widget_add_mnemonic_label().
		 *
		 * Params:
		 *     label = a #GtkWidget that was previously set as a mnemonic label for
		 *         @widget with gtk_widget_add_mnemonic_label().
		 *
		 * Since: 2.4
		 */
		public void removeMnemonicLabel(Widget label)
		{
			gtk_widget_remove_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
		}

		/**
		 * Removes a tick callback previously registered with
		 * gtk_widget_add_tick_callback().
		 *
		 * Params:
		 *     id = an id returned by gtk_widget_add_tick_callback()
		 *
		 * Since: 3.8
		 */
		public void removeTickCallback(uint id)
		{
			gtk_widget_remove_tick_callback(gtkWidget, id);
		}

		/**
		 * A convenience function that uses the theme settings for @widget
		 * to look up @stock_id and render it to a pixbuf. @stock_id should
		 * be a stock icon ID such as #GTK_STOCK_OPEN or #GTK_STOCK_OK. @size
		 * should be a size such as #GTK_ICON_SIZE_MENU. @detail should be a
		 * string that identifies the widget or code doing the rendering, so
		 * that theme engines can special-case rendering for that widget or
		 * code.
		 *
		 * The pixels in the returned #GdkPixbuf are shared with the rest of
		 * the application and should not be modified. The pixbuf should be
		 * freed after use with g_object_unref().
		 *
		 * Deprecated: Use gtk_widget_render_icon_pixbuf() instead.
		 *
		 * Params:
		 *     stockId = a stock ID
		 *     size = a stock size (#GtkIconSize). A size of `(GtkIconSize)-1`
		 *         means render at the size of the source and don’t scale (if there are
		 *         multiple source sizes, GTK+ picks one of the available sizes).
		 *     detail = render detail to pass to theme engine
		 *
		 * Return: a new pixbuf, or %NULL if the
		 *     stock ID wasn’t known
		 */
		public Pixbuf renderIcon(string stockId, GtkIconSize size, string detail)
		{
			auto p = gtk_widget_render_icon(gtkWidget, Str.toStringz(stockId), size, Str.toStringz(detail));
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
		}

		/**
		 * A convenience function that uses the theme engine and style
		 * settings for @widget to look up @stock_id and render it to
		 * a pixbuf. @stock_id should be a stock icon ID such as
		 * #GTK_STOCK_OPEN or #GTK_STOCK_OK. @size should be a size
		 * such as #GTK_ICON_SIZE_MENU.
		 *
		 * The pixels in the returned #GdkPixbuf are shared with the rest of
		 * the application and should not be modified. The pixbuf should be freed
		 * after use with g_object_unref().
		 *
		 * Deprecated: Use gtk_icon_theme_load_icon() instead.
		 *
		 * Params:
		 *     stockId = a stock ID
		 *     size = a stock size (#GtkIconSize). A size of `(GtkIconSize)-1`
		 *         means render at the size of the source and don’t scale (if there are
		 *         multiple source sizes, GTK+ picks one of the available sizes).
		 *
		 * Return: a new pixbuf, or %NULL if the
		 *     stock ID wasn’t known
		 *
		 * Since: 3.0
		 */
		public Pixbuf renderIconPixbuf(string stockId, GtkIconSize size)
		{
			auto p = gtk_widget_render_icon_pixbuf(gtkWidget, Str.toStringz(stockId), size);
			
			if(p is null)
			{
				return null;
			}
			
			return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
		}

		/**
		 * Moves a widget from one #GtkContainer to another, handling reference
		 * count issues to avoid destroying the widget.
		 *
		 * Deprecated: Use gtk_container_remove() and gtk_container_add().
		 *
		 * Params:
		 *     newParent = a #GtkContainer to move the widget into
		 */
		public void reparent(Widget newParent)
		{
			gtk_widget_reparent(gtkWidget, (newParent is null) ? null : newParent.getWidgetStruct());
		}

		/**
		 * Reset the styles of @widget and all descendents, so when
		 * they are looked up again, they get the correct values
		 * for the currently loaded RC file settings.
		 *
		 * This function is not useful for applications.
		 *
		 * Deprecated: Use #GtkStyleContext instead, and gtk_widget_reset_style()
		 */
		public void resetRcStyles()
		{
			gtk_widget_reset_rc_styles(gtkWidget);
		}

		/**
		 * Updates the style context of @widget and all descendants
		 * by updating its widget path. #GtkContainers may want
		 * to use this on a child when reordering it in a way that a different
		 * style might apply to it. See also gtk_container_get_path_for_child().
		 *
		 * Since: 3.0
		 */
		public void resetStyle()
		{
			gtk_widget_reset_style(gtkWidget);
		}

		/**
		 * Very rarely-used function. This function is used to emit
		 * an expose event on a widget. This function is not normally used
		 * directly. The only time it is used is when propagating an expose
		 * event to a windowless child widget (gtk_widget_get_has_window() is %FALSE),
		 * and that is normally done using gtk_container_propagate_draw().
		 *
		 * If you want to force an area of a window to be redrawn,
		 * use gdk_window_invalidate_rect() or gdk_window_invalidate_region().
		 * To cause the redraw to be done immediately, follow that call
		 * with a call to gdk_window_process_updates().
		 *
		 * Deprecated: Application and widget code should not handle
		 * expose events directly; invalidation should use the #GtkWidget
		 * API, and drawing should only happen inside #GtkWidget::draw
		 * implementations
		 *
		 * Params:
		 *     event = a expose #GdkEvent
		 *
		 * Return: return from the event signal emission (%TRUE if
		 *     the event was handled)
		 */
		public int sendExpose(Event event)
		{
			return gtk_widget_send_expose(gtkWidget, (event is null) ? null : event.getEventStruct());
		}

		/**
		 * Sends the focus change @event to @widget
		 *
		 * This function is not meant to be used by applications. The only time it
		 * should be used is when it is necessary for a #GtkWidget to assign focus
		 * to a widget that is semantically owned by the first widget even though
		 * it’s not a direct child - for instance, a search entry in a floating
		 * window similar to the quick search in #GtkTreeView.
		 *
		 * An example of its usage is:
		 *
		 * |[<!-- language="C" -->
		 * GdkEvent *fevent = gdk_event_new (GDK_FOCUS_CHANGE);
		 *
		 * fevent->focus_change.type = GDK_FOCUS_CHANGE;
		 * fevent->focus_change.in = TRUE;
		 * fevent->focus_change.window = _gtk_widget_get_window (widget);
		 * if (fevent->focus_change.window != NULL)
		 * g_object_ref (fevent->focus_change.window);
		 *
		 * gtk_widget_send_focus_change (widget, fevent);
		 *
		 * gdk_event_free (event);
		 * ]|
		 *
		 * Params:
		 *     event = a #GdkEvent of type GDK_FOCUS_CHANGE
		 *
		 * Return: the return value from the event signal emission: %TRUE
		 *     if the event was handled, and %FALSE otherwise
		 *
		 * Since: 2.20
		 */
		public bool sendFocusChange(Event event)
		{
			return gtk_widget_send_focus_change(gtkWidget, (event is null) ? null : event.getEventStruct()) != 0;
		}

		/**
		 * Given an accelerator group, @accel_group, and an accelerator path,
		 * @accel_path, sets up an accelerator in @accel_group so whenever the
		 * key binding that is defined for @accel_path is pressed, @widget
		 * will be activated.  This removes any accelerators (for any
		 * accelerator group) installed by previous calls to
		 * gtk_widget_set_accel_path(). Associating accelerators with
		 * paths allows them to be modified by the user and the modifications
		 * to be saved for future use. (See gtk_accel_map_save().)
		 *
		 * This function is a low level function that would most likely
		 * be used by a menu creation system like #GtkUIManager. If you
		 * use #GtkUIManager, setting up accelerator paths will be done
		 * automatically.
		 *
		 * Even when you you aren’t using #GtkUIManager, if you only want to
		 * set up accelerators on menu items gtk_menu_item_set_accel_path()
		 * provides a somewhat more convenient interface.
		 *
		 * Note that @accel_path string will be stored in a #GQuark. Therefore, if you
		 * pass a static string, you can save some memory by interning it first with
		 * g_intern_static_string().
		 *
		 * Params:
		 *     accelPath = path used to look up the accelerator
		 *     accelGroup = a #GtkAccelGroup.
		 */
		public void setAccelPath(string accelPath, AccelGroup accelGroup)
		{
			gtk_widget_set_accel_path(gtkWidget, Str.toStringz(accelPath), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
		}

		/**
		 * Sets the widget’s allocation.  This should not be used
		 * directly, but from within a widget’s size_allocate method.
		 *
		 * The allocation set should be the “adjusted” or actual
		 * allocation. If you’re implementing a #GtkContainer, you want to use
		 * gtk_widget_size_allocate() instead of gtk_widget_set_allocation().
		 * The GtkWidgetClass::adjust_size_allocation virtual method adjusts the
		 * allocation inside gtk_widget_size_allocate() to create an adjusted
		 * allocation.
		 *
		 * Params:
		 *     allocation = a pointer to a #GtkAllocation to copy from
		 *
		 * Since: 2.18
		 */
		public void setAllocation(GtkAllocation* allocation)
		{
			gtk_widget_set_allocation(gtkWidget, allocation);
		}

		/**
		 * Sets whether the application intends to draw on the widget in
		 * an #GtkWidget::draw handler.
		 *
		 * This is a hint to the widget and does not affect the behavior of
		 * the GTK+ core; many widgets ignore this flag entirely. For widgets
		 * that do pay attention to the flag, such as #GtkEventBox and #GtkWindow,
		 * the effect is to suppress default themed drawing of the widget's
		 * background. (Children of the widget will still be drawn.) The application
		 * is then entirely responsible for drawing the widget background.
		 *
		 * Note that the background is still drawn when the widget is mapped.
		 *
		 * Params:
		 *     appPaintable = %TRUE if the application will paint on the widget
		 */
		public void setAppPaintable(bool appPaintable)
		{
			gtk_widget_set_app_paintable(gtkWidget, appPaintable);
		}

		/**
		 * Specifies whether @widget can be a default widget. See
		 * gtk_widget_grab_default() for details about the meaning of
		 * “default”.
		 *
		 * Params:
		 *     canDefault = whether or not @widget can be a default widget.
		 *
		 * Since: 2.18
		 */
		public void setCanDefault(bool canDefault)
		{
			gtk_widget_set_can_default(gtkWidget, canDefault);
		}

		/**
		 * Specifies whether @widget can own the input focus. See
		 * gtk_widget_grab_focus() for actually setting the input focus on a
		 * widget.
		 *
		 * Params:
		 *     canFocus = whether or not @widget can own the input focus.
		 *
		 * Since: 2.18
		 */
		public void setCanFocus(bool canFocus)
		{
			gtk_widget_set_can_focus(gtkWidget, canFocus);
		}

		/**
		 * Sets whether @widget should be mapped along with its when its parent
		 * is mapped and @widget has been shown with gtk_widget_show().
		 *
		 * The child visibility can be set for widget before it is added to
		 * a container with gtk_widget_set_parent(), to avoid mapping
		 * children unnecessary before immediately unmapping them. However
		 * it will be reset to its default state of %TRUE when the widget
		 * is removed from a container.
		 *
		 * Note that changing the child visibility of a widget does not
		 * queue a resize on the widget. Most of the time, the size of
		 * a widget is computed from all visible children, whether or
		 * not they are mapped. If this is not the case, the container
		 * can queue a resize itself.
		 *
		 * This function is only useful for container implementations and
		 * never should be called by an application.
		 *
		 * Params:
		 *     isVisible = if %TRUE, @widget should be mapped along with its parent.
		 */
		public void setChildVisible(bool isVisible)
		{
			gtk_widget_set_child_visible(gtkWidget, isVisible);
		}

		/**
		 * Sets the widget’s clip.  This must not be used directly,
		 * but from within a widget’s size_allocate method.
		 * It must be called after gtk_widget_set_allocation() (or after chaining up
		 * to the parent class), because that function resets the clip.
		 *
		 * The clip set should be the area that @widget draws on. If @widget is a
		 * #GtkContainer, the area must contain all children's clips.
		 *
		 * If this function is not called by @widget during a ::size-allocate handler,
		 * the clip will be set to @widget's allocation.
		 *
		 * Params:
		 *     clip = a pointer to a #GtkAllocation to copy from
		 *
		 * Since: 3.14
		 */
		public void setClip(GtkAllocation* clip)
		{
			gtk_widget_set_clip(gtkWidget, clip);
		}

		/**
		 * Sets a widgets composite name. The widget must be
		 * a composite child of its parent; see gtk_widget_push_composite_child().
		 *
		 * Deprecated: Use gtk_widget_class_set_template(), or don’t use this API at all.
		 *
		 * Params:
		 *     name = the name to set
		 */
		public void setCompositeName(string name)
		{
			gtk_widget_set_composite_name(gtkWidget, Str.toStringz(name));
		}

		/**
		 * Enables or disables a #GdkDevice to interact with @widget
		 * and all its children.
		 *
		 * It does so by descending through the #GdkWindow hierarchy
		 * and enabling the same mask that is has for core events
		 * (i.e. the one that gdk_window_get_events() returns).
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *     enabled = whether to enable the device
		 *
		 * Since: 3.0
		 */
		public void setDeviceEnabled(Device device, bool enabled)
		{
			gtk_widget_set_device_enabled(gtkWidget, (device is null) ? null : device.getDeviceStruct(), enabled);
		}

		/**
		 * Sets the device event mask (see #GdkEventMask) for a widget. The event
		 * mask determines which events a widget will receive from @device. Keep
		 * in mind that different widgets have different default event masks, and by
		 * changing the event mask you may disrupt a widget’s functionality,
		 * so be careful. This function must be called while a widget is
		 * unrealized. Consider gtk_widget_add_device_events() for widgets that are
		 * already realized, or if you want to preserve the existing event
		 * mask. This function can’t be used with windowless widgets (which return
		 * %FALSE from gtk_widget_get_has_window());
		 * to get events on those widgets, place them inside a #GtkEventBox
		 * and receive events on the event box.
		 *
		 * Params:
		 *     device = a #GdkDevice
		 *     events = event mask
		 *
		 * Since: 3.0
		 */
		public void setDeviceEvents(Device device, GdkEventMask events)
		{
			gtk_widget_set_device_events(gtkWidget, (device is null) ? null : device.getDeviceStruct(), events);
		}

		/**
		 * Sets the reading direction on a particular widget. This direction
		 * controls the primary direction for widgets containing text,
		 * and also the direction in which the children of a container are
		 * packed. The ability to set the direction is present in order
		 * so that correct localization into languages with right-to-left
		 * reading directions can be done. Generally, applications will
		 * let the default reading direction present, except for containers
		 * where the containers are arranged in an order that is explicitly
		 * visual rather than logical (such as buttons for text justification).
		 *
		 * If the direction is set to %GTK_TEXT_DIR_NONE, then the value
		 * set by gtk_widget_set_default_direction() will be used.
		 *
		 * Params:
		 *     dir = the new direction
		 */
		public void setDirection(GtkTextDirection dir)
		{
			gtk_widget_set_direction(gtkWidget, dir);
		}

		/**
		 * Widgets are double buffered by default; you can use this function
		 * to turn off the buffering. “Double buffered” simply means that
		 * gdk_window_begin_draw_frame() and gdk_window_end_draw_frame() are called
		 * automatically around expose events sent to the
		 * widget. gdk_window_begin_draw_frame() diverts all drawing to a widget's
		 * window to an offscreen buffer, and gdk_window_end_draw_frame() draws the
		 * buffer to the screen. The result is that users see the window
		 * update in one smooth step, and don’t see individual graphics
		 * primitives being rendered.
		 *
		 * In very simple terms, double buffered widgets don’t flicker,
		 * so you would only use this function to turn off double buffering
		 * if you had special needs and really knew what you were doing.
		 *
		 * Note: if you turn off double-buffering, you have to handle
		 * expose events, since even the clearing to the background color or
		 * pixmap will not happen automatically (as it is done in
		 * gdk_window_begin_draw_frame()).
		 *
		 * In 3.10 GTK and GDK have been restructured for translucent drawing. Since
		 * then expose events for double-buffered widgets are culled into a single
		 * event to the toplevel GDK window. If you now unset double buffering, you
		 * will cause a separate rendering pass for every widget. This will likely
		 * cause rendering problems - in particular related to stacking - and usually
		 * increases rendering times significantly.
		 *
		 * Deprecated: This function does not work under non-X11 backends or with
		 * non-native windows.
		 * It should not be used in newly written code.
		 *
		 * Params:
		 *     doubleBuffered = %TRUE to double-buffer a widget
		 */
		public void setDoubleBuffered(bool doubleBuffered)
		{
			gtk_widget_set_double_buffered(gtkWidget, doubleBuffered);
		}

		/**
		 * Sets the event mask (see #GdkEventMask) for a widget. The event
		 * mask determines which events a widget will receive. Keep in mind
		 * that different widgets have different default event masks, and by
		 * changing the event mask you may disrupt a widget’s functionality,
		 * so be careful. This function must be called while a widget is
		 * unrealized. Consider gtk_widget_add_events() for widgets that are
		 * already realized, or if you want to preserve the existing event
		 * mask. This function can’t be used with widgets that have no window.
		 * (See gtk_widget_get_has_window()).  To get events on those widgets,
		 * place them inside a #GtkEventBox and receive events on the event
		 * box.
		 *
		 * Params:
		 *     events = event mask
		 */
		public void setEvents(int events)
		{
			gtk_widget_set_events(gtkWidget, events);
		}

		/**
		 * Sets whether the widget should grab focus when it is clicked with the mouse.
		 * Making mouse clicks not grab focus is useful in places like toolbars where
		 * you don’t want the keyboard focus removed from the main area of the
		 * application.
		 *
		 * Params:
		 *     focusOnClick = whether the widget should grab focus when clicked with the mouse
		 *
		 * Since: 3.20
		 */
		public void setFocusOnClick(bool focusOnClick)
		{
			gtk_widget_set_focus_on_click(gtkWidget, focusOnClick);
		}

		/**
		 * Sets the font map to use for Pango rendering. When not set, the widget
		 * will inherit the font map from its parent.
		 *
		 * Params:
		 *     fontMap = a #PangoFontMap, or %NULL to unset any previously
		 *         set font map
		 *
		 * Since: 3.18
		 */
		public void setFontMap(PgFontMap fontMap)
		{
			gtk_widget_set_font_map(gtkWidget, (fontMap is null) ? null : fontMap.getPgFontMapStruct());
		}

		/**
		 * Sets the #cairo_font_options_t used for Pango rendering in this widget.
		 * When not set, the default font options for the #GdkScreen will be used.
		 *
		 * Params:
		 *     options = a #cairo_font_options_t, or %NULL to unset any
		 *         previously set default font options.
		 *
		 * Since: 3.18
		 */
		public void setFontOptions(FontOption options)
		{
			gtk_widget_set_font_options(gtkWidget, (options is null) ? null : options.getFontOptionStruct());
		}

		/**
		 * Sets the horizontal alignment of @widget.
		 * See the #GtkWidget:halign property.
		 *
		 * Params:
		 *     alig = the horizontal alignment
		 */
		public void setHalign(GtkAlign alig)
		{
			gtk_widget_set_halign(gtkWidget, alig);
		}

		/**
		 * Sets the has-tooltip property on @widget to @has_tooltip.  See
		 * #GtkWidget:has-tooltip for more information.
		 *
		 * Params:
		 *     hasTooltip = whether or not @widget has a tooltip.
		 *
		 * Since: 2.12
		 */
		public void setHasTooltip(bool hasTooltip)
		{
			gtk_widget_set_has_tooltip(gtkWidget, hasTooltip);
		}

		/**
		 * Specifies whether @widget has a #GdkWindow of its own. Note that
		 * all realized widgets have a non-%NULL “window” pointer
		 * (gtk_widget_get_window() never returns a %NULL window when a widget
		 * is realized), but for many of them it’s actually the #GdkWindow of
		 * one of its parent widgets. Widgets that do not create a %window for
		 * themselves in #GtkWidget::realize must announce this by
		 * calling this function with @has_window = %FALSE.
		 *
		 * This function should only be called by widget implementations,
		 * and they should call it in their init() function.
		 *
		 * Params:
		 *     hasWindow = whether or not @widget has a window.
		 *
		 * Since: 2.18
		 */
		public void setHasWindow(bool hasWindow)
		{
			gtk_widget_set_has_window(gtkWidget, hasWindow);
		}

		/**
		 * Sets whether the widget would like any available extra horizontal
		 * space. When a user resizes a #GtkWindow, widgets with expand=TRUE
		 * generally receive the extra space. For example, a list or
		 * scrollable area or document in your window would often be set to
		 * expand.
		 *
		 * Call this function to set the expand flag if you would like your
		 * widget to become larger horizontally when the window has extra
		 * room.
		 *
		 * By default, widgets automatically expand if any of their children
		 * want to expand. (To see if a widget will automatically expand given
		 * its current children and state, call gtk_widget_compute_expand(). A
		 * container can decide how the expandability of children affects the
		 * expansion of the container by overriding the compute_expand virtual
		 * method on #GtkWidget.).
		 *
		 * Setting hexpand explicitly with this function will override the
		 * automatic expand behavior.
		 *
		 * This function forces the widget to expand or not to expand,
		 * regardless of children.  The override occurs because
		 * gtk_widget_set_hexpand() sets the hexpand-set property (see
		 * gtk_widget_set_hexpand_set()) which causes the widget’s hexpand
		 * value to be used, rather than looking at children and widget state.
		 *
		 * Params:
		 *     expand = whether to expand
		 */
		public void setHexpand(bool expand)
		{
			gtk_widget_set_hexpand(gtkWidget, expand);
		}

		/**
		 * Sets whether the hexpand flag (see gtk_widget_get_hexpand()) will
		 * be used.
		 *
		 * The hexpand-set property will be set automatically when you call
		 * gtk_widget_set_hexpand() to set hexpand, so the most likely
		 * reason to use this function would be to unset an explicit expand
		 * flag.
		 *
		 * If hexpand is set, then it overrides any computed
		 * expand value based on child widgets. If hexpand is not
		 * set, then the expand value depends on whether any
		 * children of the widget would like to expand.
		 *
		 * There are few reasons to use this function, but it’s here
		 * for completeness and consistency.
		 *
		 * Params:
		 *     set = value for hexpand-set property
		 */
		public void setHexpandSet(bool set)
		{
			gtk_widget_set_hexpand_set(gtkWidget, set);
		}

		/**
		 * Marks the widget as being realized.
		 *
		 * This function should only ever be called in a derived widget's
		 * “map” or “unmap” implementation.
		 *
		 * Params:
		 *     mapped = %TRUE to mark the widget as mapped
		 *
		 * Since: 2.20
		 */
		public void setMapped(bool mapped)
		{
			gtk_widget_set_mapped(gtkWidget, mapped);
		}

		/**
		 * Sets the bottom margin of @widget.
		 * See the #GtkWidget:margin-bottom property.
		 *
		 * Params:
		 *     margin = the bottom margin
		 *
		 * Since: 3.0
		 */
		public void setMarginBottom(int margin)
		{
			gtk_widget_set_margin_bottom(gtkWidget, margin);
		}

		/**
		 * Sets the end margin of @widget.
		 * See the #GtkWidget:margin-end property.
		 *
		 * Params:
		 *     margin = the end margin
		 *
		 * Since: 3.12
		 */
		public void setMarginEnd(int margin)
		{
			gtk_widget_set_margin_end(gtkWidget, margin);
		}

		/**
		 * Sets the left margin of @widget.
		 * See the #GtkWidget:margin-left property.
		 *
		 * Deprecated: Use gtk_widget_set_margin_start() instead.
		 *
		 * Params:
		 *     margin = the left margin
		 *
		 * Since: 3.0
		 */
		public void setMarginLeft(int margin)
		{
			gtk_widget_set_margin_left(gtkWidget, margin);
		}

		/**
		 * Sets the right margin of @widget.
		 * See the #GtkWidget:margin-right property.
		 *
		 * Deprecated: Use gtk_widget_set_margin_end() instead.
		 *
		 * Params:
		 *     margin = the right margin
		 *
		 * Since: 3.0
		 */
		public void setMarginRight(int margin)
		{
			gtk_widget_set_margin_right(gtkWidget, margin);
		}

		/**
		 * Sets the start margin of @widget.
		 * See the #GtkWidget:margin-start property.
		 *
		 * Params:
		 *     margin = the start margin
		 *
		 * Since: 3.12
		 */
		public void setMarginStart(int margin)
		{
			gtk_widget_set_margin_start(gtkWidget, margin);
		}

		/**
		 * Sets the top margin of @widget.
		 * See the #GtkWidget:margin-top property.
		 *
		 * Params:
		 *     margin = the top margin
		 *
		 * Since: 3.0
		 */
		public void setMarginTop(int margin)
		{
			gtk_widget_set_margin_top(gtkWidget, margin);
		}

		/**
		 * Widgets can be named, which allows you to refer to them from a
		 * CSS file. You can apply a style to widgets with a particular name
		 * in the CSS file. See the documentation for the CSS syntax (on the
		 * same page as the docs for #GtkStyleContext).
		 *
		 * Note that the CSS syntax has certain special characters to delimit
		 * and represent elements in a selector (period, #, >, *...), so using
		 * these will make your widget impossible to match by name. Any combination
		 * of alphanumeric symbols, dashes and underscores will suffice.
		 *
		 * Params:
		 *     name = name for the widget
		 */
		public void setName(string name)
		{
			gtk_widget_set_name(gtkWidget, Str.toStringz(name));
		}

		/**
		 * Sets the #GtkWidget:no-show-all property, which determines whether
		 * calls to gtk_widget_show_all() will affect this widget.
		 *
		 * This is mostly for use in constructing widget hierarchies with externally
		 * controlled visibility, see #GtkUIManager.
		 *
		 * Params:
		 *     noShowAll = the new value for the “no-show-all” property
		 *
		 * Since: 2.4
		 */
		public void setNoShowAll(bool noShowAll)
		{
			gtk_widget_set_no_show_all(gtkWidget, noShowAll);
		}

		/**
		 * Request the @widget to be rendered partially transparent,
		 * with opacity 0 being fully transparent and 1 fully opaque. (Opacity values
		 * are clamped to the [0,1] range.).
		 * This works on both toplevel widget, and child widgets, although there
		 * are some limitations:
		 *
		 * For toplevel widgets this depends on the capabilities of the windowing
		 * system. On X11 this has any effect only on X screens with a compositing manager
		 * running. See gtk_widget_is_composited(). On Windows it should work
		 * always, although setting a window’s opacity after the window has been
		 * shown causes it to flicker once on Windows.
		 *
		 * For child widgets it doesn’t work if any affected widget has a native window, or
		 * disables double buffering.
		 *
		 * Params:
		 *     opacity = desired opacity, between 0 and 1
		 *
		 * Since: 3.8
		 */
		public void setOpacity(double opacity)
		{
			gtk_widget_set_opacity(gtkWidget, opacity);
		}

		/**
		 * This function is useful only when implementing subclasses of
		 * #GtkContainer.
		 * Sets the container as the parent of @widget, and takes care of
		 * some details such as updating the state and style of the child
		 * to reflect its new location. The opposite function is
		 * gtk_widget_unparent().
		 *
		 * Params:
		 *     parent = parent container
		 */
		public void setParent(Widget parent)
		{
			gtk_widget_set_parent(gtkWidget, (parent is null) ? null : parent.getWidgetStruct());
		}

		/**
		 * Sets a non default parent window for @widget.
		 *
		 * For #GtkWindow classes, setting a @parent_window effects whether
		 * the window is a toplevel window or can be embedded into other
		 * widgets.
		 *
		 * For #GtkWindow classes, this needs to be called before the
		 * window is realized.
		 *
		 * Params:
		 *     parentWindow = the new parent window.
		 */
		public void setParentWindow(GdkWin parentWindow)
		{
			gtk_widget_set_parent_window(gtkWidget, (parentWindow is null) ? null : parentWindow.getWindowStruct());
		}

		/**
		 * Marks the widget as being realized. This function must only be
		 * called after all #GdkWindows for the @widget have been created
		 * and registered.
		 *
		 * This function should only ever be called in a derived widget's
		 * “realize” or “unrealize” implementation.
		 *
		 * Params:
		 *     realized = %TRUE to mark the widget as realized
		 *
		 * Since: 2.20
		 */
		public void setRealized(bool realized)
		{
			gtk_widget_set_realized(gtkWidget, realized);
		}

		/**
		 * Specifies whether @widget will be treated as the default widget
		 * within its toplevel when it has the focus, even if another widget
		 * is the default.
		 *
		 * See gtk_widget_grab_default() for details about the meaning of
		 * “default”.
		 *
		 * Params:
		 *     receivesDefault = whether or not @widget can be a default widget.
		 *
		 * Since: 2.18
		 */
		public void setReceivesDefault(bool receivesDefault)
		{
			gtk_widget_set_receives_default(gtkWidget, receivesDefault);
		}

		/**
		 * Sets whether the entire widget is queued for drawing when its size
		 * allocation changes. By default, this setting is %TRUE and
		 * the entire widget is redrawn on every size change. If your widget
		 * leaves the upper left unchanged when made bigger, turning this
		 * setting off will improve performance.
		 *
		 * Note that for widgets where gtk_widget_get_has_window() is %FALSE
		 * setting this flag to %FALSE turns off all allocation on resizing:
		 * the widget will not even redraw if its position changes; this is to
		 * allow containers that don’t draw anything to avoid excess
		 * invalidations. If you set this flag on a widget with no window that
		 * does draw on @widget->window, you are
		 * responsible for invalidating both the old and new allocation of the
		 * widget when the widget is moved and responsible for invalidating
		 * regions newly when the widget increases size.
		 *
		 * Params:
		 *     redrawOnAllocate = if %TRUE, the entire widget will be redrawn
		 *         when it is allocated to a new size. Otherwise, only the
		 *         new portion of the widget will be redrawn.
		 */
		public void setRedrawOnAllocate(bool redrawOnAllocate)
		{
			gtk_widget_set_redraw_on_allocate(gtkWidget, redrawOnAllocate);
		}

		/**
		 * Sets the sensitivity of a widget. A widget is sensitive if the user
		 * can interact with it. Insensitive widgets are “grayed out” and the
		 * user can’t interact with them. Insensitive widgets are known as
		 * “inactive”, “disabled”, or “ghosted” in some other toolkits.
		 *
		 * Params:
		 *     sensitive = %TRUE to make the widget sensitive
		 */
		public void setSensitive(bool sensitive)
		{
			gtk_widget_set_sensitive(gtkWidget, sensitive);
		}

		/**
		 * Sets the minimum size of a widget; that is, the widget’s size
		 * request will be at least @width by @height. You can use this
		 * function to force a widget to be larger than it normally would be.
		 *
		 * In most cases, gtk_window_set_default_size() is a better choice for
		 * toplevel windows than this function; setting the default size will
		 * still allow users to shrink the window. Setting the size request
		 * will force them to leave the window at least as large as the size
		 * request. When dealing with window sizes,
		 * gtk_window_set_geometry_hints() can be a useful function as well.
		 *
		 * Note the inherent danger of setting any fixed size - themes,
		 * translations into other languages, different fonts, and user action
		 * can all change the appropriate size for a given widget. So, it's
		 * basically impossible to hardcode a size that will always be
		 * correct.
		 *
		 * The size request of a widget is the smallest size a widget can
		 * accept while still functioning well and drawing itself correctly.
		 * However in some strange cases a widget may be allocated less than
		 * its requested size, and in many cases a widget may be allocated more
		 * space than it requested.
		 *
		 * If the size request in a given direction is -1 (unset), then
		 * the “natural” size request of the widget will be used instead.
		 *
		 * The size request set here does not include any margin from the
		 * #GtkWidget properties margin-left, margin-right, margin-top, and
		 * margin-bottom, but it does include pretty much all other padding
		 * or border properties set by any subclass of #GtkWidget.
		 *
		 * Params:
		 *     width = width @widget should request, or -1 to unset
		 *     height = height @widget should request, or -1 to unset
		 */
		public void setSizeRequest(int width, int height)
		{
			gtk_widget_set_size_request(gtkWidget, width, height);
		}

		/**
		 * This function is for use in widget implementations. Turns on flag
		 * values in the current widget state (insensitive, prelighted, etc.).
		 *
		 * This function accepts the values %GTK_STATE_FLAG_DIR_LTR and
		 * %GTK_STATE_FLAG_DIR_RTL but ignores them. If you want to set the widget's
		 * direction, use gtk_widget_set_direction().
		 *
		 * It is worth mentioning that any other state than %GTK_STATE_FLAG_INSENSITIVE,
		 * will be propagated down to all non-internal children if @widget is a
		 * #GtkContainer, while %GTK_STATE_FLAG_INSENSITIVE itself will be propagated
		 * down to all #GtkContainer children by different means than turning on the
		 * state flag down the hierarchy, both gtk_widget_get_state_flags() and
		 * gtk_widget_is_sensitive() will make use of these.
		 *
		 * Params:
		 *     flags = State flags to turn on
		 *     clear = Whether to clear state before turning on @flags
		 *
		 * Since: 3.0
		 */
		public void setStateFlags(GtkStateFlags flags, bool clear)
		{
			gtk_widget_set_state_flags(gtkWidget, flags, clear);
		}

		/**
		 * Used to set the #GtkStyle for a widget (@widget->style). Since
		 * GTK 3, this function does nothing, the passed in style is ignored.
		 *
		 * Deprecated: Use #GtkStyleContext instead
		 *
		 * Params:
		 *     style = a #GtkStyle, or %NULL to remove the effect
		 *         of a previous call to gtk_widget_set_style() and go back to
		 *         the default style
		 */
		public void setStyle(Style style)
		{
			gtk_widget_set_style(gtkWidget, (style is null) ? null : style.getStyleStruct());
		}

		/**
		 * Enables or disables multiple pointer awareness. If this setting is %TRUE,
		 * @widget will start receiving multiple, per device enter/leave events. Note
		 * that if custom #GdkWindows are created in #GtkWidget::realize,
		 * gdk_window_set_support_multidevice() will have to be called manually on them.
		 *
		 * Params:
		 *     supportMultidevice = %TRUE to support input from multiple devices.
		 *
		 * Since: 3.0
		 */
		public void setSupportMultidevice(bool supportMultidevice)
		{
			gtk_widget_set_support_multidevice(gtkWidget, supportMultidevice);
		}

		/**
		 * Sets @markup as the contents of the tooltip, which is marked up with
		 * the [Pango text markup language][PangoMarkupFormat].
		 *
		 * This function will take care of setting #GtkWidget:has-tooltip to %TRUE
		 * and of the default handler for the #GtkWidget::query-tooltip signal.
		 *
		 * See also the #GtkWidget:tooltip-markup property and
		 * gtk_tooltip_set_markup().
		 *
		 * Params:
		 *     markup = the contents of the tooltip for @widget, or %NULL
		 *
		 * Since: 2.12
		 */
		public void setTooltipMarkup(string markup)
		{
			gtk_widget_set_tooltip_markup(gtkWidget, Str.toStringz(markup));
		}

		/**
		 * Sets @text as the contents of the tooltip. This function will take
		 * care of setting #GtkWidget:has-tooltip to %TRUE and of the default
		 * handler for the #GtkWidget::query-tooltip signal.
		 *
		 * See also the #GtkWidget:tooltip-text property and gtk_tooltip_set_text().
		 *
		 * Params:
		 *     text = the contents of the tooltip for @widget
		 *
		 * Since: 2.12
		 */
		public void setTooltipText(string text)
		{
			gtk_widget_set_tooltip_text(gtkWidget, Str.toStringz(text));
		}

		/**
		 * Replaces the default, usually yellow, window used for displaying
		 * tooltips with @custom_window. GTK+ will take care of showing and
		 * hiding @custom_window at the right moment, to behave likewise as
		 * the default tooltip window. If @custom_window is %NULL, the default
		 * tooltip window will be used.
		 *
		 * If the custom window should have the default theming it needs to
		 * have the name “gtk-tooltip”, see gtk_widget_set_name().
		 *
		 * Params:
		 *     customWindow = a #GtkWindow, or %NULL
		 *
		 * Since: 2.12
		 */
		public void setTooltipWindow(Window customWindow)
		{
			gtk_widget_set_tooltip_window(gtkWidget, (customWindow is null) ? null : customWindow.getWindowStruct());
		}

		/**
		 * Sets the vertical alignment of @widget.
		 * See the #GtkWidget:valign property.
		 *
		 * Params:
		 *     alig = the vertical alignment
		 */
		public void setValign(GtkAlign alig)
		{
			gtk_widget_set_valign(gtkWidget, alig);
		}

		/**
		 * Sets whether the widget would like any available extra vertical
		 * space.
		 *
		 * See gtk_widget_set_hexpand() for more detail.
		 *
		 * Params:
		 *     expand = whether to expand
		 */
		public void setVexpand(bool expand)
		{
			gtk_widget_set_vexpand(gtkWidget, expand);
		}

		/**
		 * Sets whether the vexpand flag (see gtk_widget_get_vexpand()) will
		 * be used.
		 *
		 * See gtk_widget_set_hexpand_set() for more detail.
		 *
		 * Params:
		 *     set = value for vexpand-set property
		 */
		public void setVexpandSet(bool set)
		{
			gtk_widget_set_vexpand_set(gtkWidget, set);
		}

		/**
		 * Sets the visibility state of @widget. Note that setting this to
		 * %TRUE doesn’t mean the widget is actually viewable, see
		 * gtk_widget_get_visible().
		 *
		 * This function simply calls gtk_widget_show() or gtk_widget_hide()
		 * but is nicer to use when the visibility of the widget depends on
		 * some condition.
		 *
		 * Params:
		 *     visible = whether the widget should be shown or not
		 *
		 * Since: 2.18
		 */
		public void setVisible(bool visible)
		{
			gtk_widget_set_visible(gtkWidget, visible);
		}

		/**
		 * Sets the visual that should be used for by widget and its children for
		 * creating #GdkWindows. The visual must be on the same #GdkScreen as
		 * returned by gtk_widget_get_screen(), so handling the
		 * #GtkWidget::screen-changed signal is necessary.
		 *
		 * Setting a new @visual will not cause @widget to recreate its windows,
		 * so you should call this function before @widget is realized.
		 *
		 * Params:
		 *     visual = visual to be used or %NULL to unset a previous one
		 */
		public void setVisual(Visual visual)
		{
			gtk_widget_set_visual(gtkWidget, (visual is null) ? null : visual.getVisualStruct());
		}

		/**
		 * Sets a widget’s window. This function should only be used in a
		 * widget’s #GtkWidget::realize implementation. The %window passed is
		 * usually either new window created with gdk_window_new(), or the
		 * window of its parent widget as returned by
		 * gtk_widget_get_parent_window().
		 *
		 * Widgets must indicate whether they will create their own #GdkWindow
		 * by calling gtk_widget_set_has_window(). This is usually done in the
		 * widget’s init() function.
		 *
		 * Note that this function does not add any reference to @window.
		 *
		 * Params:
		 *     window = a #GdkWindow
		 *
		 * Since: 2.18
		 */
		public void setWindow(GdkWin window)
		{
			gtk_widget_set_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
		}

		/**
		 * Sets a shape for this widget’s GDK window. This allows for
		 * transparent windows etc., see gdk_window_shape_combine_region()
		 * for more information.
		 *
		 * Params:
		 *     region = shape to be added, or %NULL to remove an existing shape
		 *
		 * Since: 3.0
		 */
		public void shapeCombineRegion(Region region)
		{
			gtk_widget_shape_combine_region(gtkWidget, (region is null) ? null : region.getRegionStruct());
		}

		/**
		 * Flags a widget to be displayed. Any widget that isn’t shown will
		 * not appear on the screen. If you want to show all the widgets in a
		 * container, it’s easier to call gtk_widget_show_all() on the
		 * container, instead of individually showing the widgets.
		 *
		 * Remember that you have to show the containers containing a widget,
		 * in addition to the widget itself, before it will appear onscreen.
		 *
		 * When a toplevel container is shown, it is immediately realized and
		 * mapped; other shown widgets are realized and mapped when their
		 * toplevel container is realized and mapped.
		 */
		public void show()
		{
			gtk_widget_show(gtkWidget);
		}

		/**
		 * Recursively shows a widget, and any child widgets (if the widget is
		 * a container).
		 */
		public void showAll()
		{
			gtk_widget_show_all(gtkWidget);
		}

		/**
		 * Shows a widget. If the widget is an unmapped toplevel widget
		 * (i.e. a #GtkWindow that has not yet been shown), enter the main
		 * loop and wait for the window to actually be mapped. Be careful;
		 * because the main loop is running, anything can happen during
		 * this function.
		 */
		public void showNow()
		{
			gtk_widget_show_now(gtkWidget);
		}

		/**
		 * This function is only used by #GtkContainer subclasses, to assign a size
		 * and position to their child widgets.
		 *
		 * In this function, the allocation may be adjusted. It will be forced
		 * to a 1x1 minimum size, and the adjust_size_allocation virtual
		 * method on the child will be used to adjust the allocation. Standard
		 * adjustments include removing the widget’s margins, and applying the
		 * widget’s #GtkWidget:halign and #GtkWidget:valign properties.
		 *
		 * For baseline support in containers you need to use gtk_widget_size_allocate_with_baseline()
		 * instead.
		 *
		 * Params:
		 *     allocation = position and size to be allocated to @widget
		 */
		public void sizeAllocate(GtkAllocation* allocation)
		{
			gtk_widget_size_allocate(gtkWidget, allocation);
		}

		/**
		 * This function is only used by #GtkContainer subclasses, to assign a size,
		 * position and (optionally) baseline to their child widgets.
		 *
		 * In this function, the allocation and baseline may be adjusted. It
		 * will be forced to a 1x1 minimum size, and the
		 * adjust_size_allocation virtual and adjust_baseline_allocation
		 * methods on the child will be used to adjust the allocation and
		 * baseline. Standard adjustments include removing the widget's
		 * margins, and applying the widget’s #GtkWidget:halign and
		 * #GtkWidget:valign properties.
		 *
		 * If the child widget does not have a valign of %GTK_ALIGN_BASELINE the
		 * baseline argument is ignored and -1 is used instead.
		 *
		 * Params:
		 *     allocation = position and size to be allocated to @widget
		 *     baseline = The baseline of the child, or -1
		 *
		 * Since: 3.10
		 */
		public void sizeAllocateWithBaseline(GtkAllocation* allocation, int baseline)
		{
			gtk_widget_size_allocate_with_baseline(gtkWidget, allocation, baseline);
		}

		/**
		 * This function is typically used when implementing a #GtkContainer
		 * subclass.  Obtains the preferred size of a widget. The container
		 * uses this information to arrange its child widgets and decide what
		 * size allocations to give them with gtk_widget_size_allocate().
		 *
		 * You can also call this function from an application, with some
		 * caveats. Most notably, getting a size request requires the widget
		 * to be associated with a screen, because font information may be
		 * needed. Multihead-aware applications should keep this in mind.
		 *
		 * Also remember that the size request is not necessarily the size
		 * a widget will actually be allocated.
		 *
		 * Deprecated: Use gtk_widget_get_preferred_size() instead.
		 *
		 * Params:
		 *     requisition = a #GtkRequisition to be filled in
		 */
		public void sizeRequest(out Requisition requisition)
		{
			GtkRequisition* outrequisition = gMalloc!GtkRequisition();
			
			gtk_widget_size_request(gtkWidget, outrequisition);
			
			requisition = ObjectG.getDObject!(Requisition)(outrequisition, true);
		}

		/**
		 * This function attaches the widget’s #GtkStyle to the widget's
		 * #GdkWindow. It is a replacement for
		 *
		 * |[
		 * widget->style = gtk_style_attach (widget->style, widget->window);
		 * ]|
		 *
		 * and should only ever be called in a derived widget’s “realize”
		 * implementation which does not chain up to its parent class'
		 * “realize” implementation, because one of the parent classes
		 * (finally #GtkWidget) would attach the style itself.
		 *
		 * Deprecated: This step is unnecessary with #GtkStyleContext.
		 *
		 * Since: 2.20
		 */
		public void styleAttach()
		{
			gtk_widget_style_attach(gtkWidget);
		}

		/**
		 * Gets the value of a style property of @widget.
		 *
		 * Params:
		 *     propertyName = the name of a style property
		 *     value = location to return the property value
		 */
		public void styleGetProperty(string propertyName, Value value)
		{
			gtk_widget_style_get_property(gtkWidget, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
		}

		/**
		 * Non-vararg variant of gtk_widget_style_get(). Used primarily by language
		 * bindings.
		 *
		 * Params:
		 *     firstPropertyName = the name of the first property to get
		 *     varArgs = a va_list of pairs of property names and
		 *         locations to return the property values, starting with the location
		 *         for @first_property_name.
		 */
		public void styleGetValist(string firstPropertyName, void* varArgs)
		{
			gtk_widget_style_get_valist(gtkWidget, Str.toStringz(firstPropertyName), varArgs);
		}

		/**
		 * Reverts the effect of a previous call to gtk_widget_freeze_child_notify().
		 * This causes all queued #GtkWidget::child-notify signals on @widget to be
		 * emitted.
		 */
		public void thawChildNotify()
		{
			gtk_widget_thaw_child_notify(gtkWidget);
		}

		/**
		 * Translate coordinates relative to @src_widget’s allocation to coordinates
		 * relative to @dest_widget’s allocations. In order to perform this
		 * operation, both widgets must be realized, and must share a common
		 * toplevel.
		 *
		 * Params:
		 *     destWidget = a #GtkWidget
		 *     srcX = X position relative to @src_widget
		 *     srcY = Y position relative to @src_widget
		 *     destX = location to store X position relative to @dest_widget
		 *     destY = location to store Y position relative to @dest_widget
		 *
		 * Return: %FALSE if either widget was not realized, or there
		 *     was no common ancestor. In this case, nothing is stored in
		 *     *@dest_x and *@dest_y. Otherwise %TRUE.
		 */
		public bool translateCoordinates(Widget destWidget, int srcX, int srcY, out int destX, out int destY)
		{
			return gtk_widget_translate_coordinates(gtkWidget, (destWidget is null) ? null : destWidget.getWidgetStruct(), srcX, srcY, &destX, &destY) != 0;
		}

		/**
		 * Triggers a tooltip query on the display where the toplevel of @widget
		 * is located. See gtk_tooltip_trigger_tooltip_query() for more
		 * information.
		 *
		 * Since: 2.12
		 */
		public void triggerTooltipQuery()
		{
			gtk_widget_trigger_tooltip_query(gtkWidget);
		}

		/**
		 * This function is only for use in widget implementations. Causes
		 * a widget to be unmapped if it’s currently mapped.
		 */
		public void unmap()
		{
			gtk_widget_unmap(gtkWidget);
		}

		/**
		 * This function is only for use in widget implementations.
		 * Should be called by implementations of the remove method
		 * on #GtkContainer, to dissociate a child from the container.
		 */
		public void unparent()
		{
			gtk_widget_unparent(gtkWidget);
		}

		/**
		 * This function is only useful in widget implementations.
		 * Causes a widget to be unrealized (frees all GDK resources
		 * associated with the widget, such as @widget->window).
		 */
		public void unrealize()
		{
			gtk_widget_unrealize(gtkWidget);
		}

		/**
		 * Unregisters a #GdkWindow from the widget that was previously set up with
		 * gtk_widget_register_window(). You need to call this when the window is
		 * no longer used by the widget, such as when you destroy it.
		 *
		 * Params:
		 *     window = a #GdkWindow
		 *
		 * Since: 3.8
		 */
		public void unregisterWindow(GdkWin window)
		{
			gtk_widget_unregister_window(gtkWidget, (window is null) ? null : window.getWindowStruct());
		}

		/**
		 * This function is for use in widget implementations. Turns off flag
		 * values for the current widget state (insensitive, prelighted, etc.).
		 * See gtk_widget_set_state_flags().
		 *
		 * Params:
		 *     flags = State flags to turn off
		 *
		 * Since: 3.0
		 */
		public void unsetStateFlags(GtkStateFlags flags)
		{
			gtk_widget_unset_state_flags(gtkWidget, flags);
		}

		protected class OnAccelClosuresChangedDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnAccelClosuresChangedDelegateWrapper[] onAccelClosuresChangedListeners;

		/** */
		gulong addOnAccelClosuresChanged(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onAccelClosuresChangedListeners ~= new OnAccelClosuresChangedDelegateWrapper(dlg, 0, connectFlags);
			onAccelClosuresChangedListeners[onAccelClosuresChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"accel-closures-changed",
				cast(GCallback)&callBackAccelClosuresChanged,
				cast(void*)onAccelClosuresChangedListeners[onAccelClosuresChangedListeners.length - 1],
				cast(GClosureNotify)&callBackAccelClosuresChangedDestroy,
				connectFlags);
			return onAccelClosuresChangedListeners[onAccelClosuresChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackAccelClosuresChanged(GtkWidget* widgetStruct,OnAccelClosuresChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackAccelClosuresChangedDestroy(OnAccelClosuresChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnAccelClosuresChanged(wrapper);
		}

		protected void internalRemoveOnAccelClosuresChanged(OnAccelClosuresChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onAccelClosuresChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onAccelClosuresChangedListeners[index] = null;
					onAccelClosuresChangedListeners = std.algorithm.remove(onAccelClosuresChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnButtonPressDelegateWrapper
		{
			bool delegate(GdkEventButton*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventButton*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnButtonPressDelegateWrapper[] onButtonPressListeners;

		/**
		 * The ::button-press-event signal will be emitted when a button
		 * (typically from a mouse) is pressed.
		 *
		 * To receive this signal, the #GdkWindow associated to the
		 * widget needs to enable the #GDK_BUTTON_PRESS_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventButton which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnButtonPress(bool delegate(GdkEventButton*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.BUTTON_PRESS_MASK);
			onButtonPressListeners ~= new OnButtonPressDelegateWrapper(dlg, 0, connectFlags);
			onButtonPressListeners[onButtonPressListeners.length - 1].handlerId = Signals.connectData(
				this,
				"button-press-event",
				cast(GCallback)&callBackButtonPress,
				cast(void*)onButtonPressListeners[onButtonPressListeners.length - 1],
				cast(GClosureNotify)&callBackButtonPressDestroy,
				connectFlags);
			return onButtonPressListeners[onButtonPressListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackButtonPress(GtkWidget* widgetStruct, GdkEventButton* event,OnButtonPressDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackButtonPressDestroy(OnButtonPressDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnButtonPress(wrapper);
		}

		protected void internalRemoveOnButtonPress(OnButtonPressDelegateWrapper source)
		{
			foreach(index, wrapper; onButtonPressListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onButtonPressListeners[index] = null;
					onButtonPressListeners = std.algorithm.remove(onButtonPressListeners, index);
					break;
				}
			}
		}
		

		protected class OnButtonPressEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnButtonPressEventGenericDelegateWrapper[] onButtonPressEventGenericListeners;
		
		/**
		 * The ::button-press-event signal will be emitted when a button
		 * (typically from a mouse) is pressed.
		 *
		 * To receive this signal, the #GdkWindow associated to the
		 * widget needs to enable the #GDK_BUTTON_PRESS_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventButton which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnButtonPress(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.BUTTON_PRESS_MASK);
			onButtonPressEventGenericListeners ~= new OnButtonPressEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onButtonPressEventGenericListeners[onButtonPressEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"button-press-event",
				cast(GCallback)&callBackButtonPressEventGeneric,
				cast(void*)onButtonPressEventGenericListeners[onButtonPressEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackButtonPressEventGenericDestroy,
				connectFlags);
			return onButtonPressEventGenericListeners[onButtonPressEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackButtonPressEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnButtonPressEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackButtonPressEventGenericDestroy(OnButtonPressEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnButtonPressEventGeneric(wrapper);
		}
		protected void internalRemoveOnButtonPressEventGeneric(OnButtonPressEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onButtonPressEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onButtonPressEventGenericListeners[index] = null;
					onButtonPressEventGenericListeners = std.algorithm.remove(onButtonPressEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnButtonReleaseDelegateWrapper
		{
			bool delegate(GdkEventButton*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventButton*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnButtonReleaseDelegateWrapper[] onButtonReleaseListeners;

		/**
		 * The ::button-release-event signal will be emitted when a button
		 * (typically from a mouse) is released.
		 *
		 * To receive this signal, the #GdkWindow associated to the
		 * widget needs to enable the #GDK_BUTTON_RELEASE_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventButton which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnButtonRelease(bool delegate(GdkEventButton*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.BUTTON_RELEASE_MASK);
			onButtonReleaseListeners ~= new OnButtonReleaseDelegateWrapper(dlg, 0, connectFlags);
			onButtonReleaseListeners[onButtonReleaseListeners.length - 1].handlerId = Signals.connectData(
				this,
				"button-release-event",
				cast(GCallback)&callBackButtonRelease,
				cast(void*)onButtonReleaseListeners[onButtonReleaseListeners.length - 1],
				cast(GClosureNotify)&callBackButtonReleaseDestroy,
				connectFlags);
			return onButtonReleaseListeners[onButtonReleaseListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackButtonRelease(GtkWidget* widgetStruct, GdkEventButton* event,OnButtonReleaseDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackButtonReleaseDestroy(OnButtonReleaseDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnButtonRelease(wrapper);
		}

		protected void internalRemoveOnButtonRelease(OnButtonReleaseDelegateWrapper source)
		{
			foreach(index, wrapper; onButtonReleaseListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onButtonReleaseListeners[index] = null;
					onButtonReleaseListeners = std.algorithm.remove(onButtonReleaseListeners, index);
					break;
				}
			}
		}
		

		protected class OnButtonReleaseEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnButtonReleaseEventGenericDelegateWrapper[] onButtonReleaseEventGenericListeners;
		
		/**
		 * The ::button-release-event signal will be emitted when a button
		 * (typically from a mouse) is released.
		 *
		 * To receive this signal, the #GdkWindow associated to the
		 * widget needs to enable the #GDK_BUTTON_RELEASE_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventButton which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnButtonRelease(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.BUTTON_RELEASE_MASK);
			onButtonReleaseEventGenericListeners ~= new OnButtonReleaseEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onButtonReleaseEventGenericListeners[onButtonReleaseEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"button-release-event",
				cast(GCallback)&callBackButtonReleaseEventGeneric,
				cast(void*)onButtonReleaseEventGenericListeners[onButtonReleaseEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackButtonReleaseEventGenericDestroy,
				connectFlags);
			return onButtonReleaseEventGenericListeners[onButtonReleaseEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackButtonReleaseEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnButtonReleaseEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackButtonReleaseEventGenericDestroy(OnButtonReleaseEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnButtonReleaseEventGeneric(wrapper);
		}
		protected void internalRemoveOnButtonReleaseEventGeneric(OnButtonReleaseEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onButtonReleaseEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onButtonReleaseEventGenericListeners[index] = null;
					onButtonReleaseEventGenericListeners = std.algorithm.remove(onButtonReleaseEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnCanActivateAccelDelegateWrapper
		{
			bool delegate(uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnCanActivateAccelDelegateWrapper[] onCanActivateAccelListeners;

		/**
		 * Determines whether an accelerator that activates the signal
		 * identified by @signal_id can currently be activated.
		 * This signal is present to allow applications and derived
		 * widgets to override the default #GtkWidget handling
		 * for determining whether an accelerator can be activated.
		 *
		 * Params:
		 *     signalId = the ID of a signal installed on @widget
		 *
		 * Return: %TRUE if the signal can be activated.
		 */
		gulong addOnCanActivateAccel(bool delegate(uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onCanActivateAccelListeners ~= new OnCanActivateAccelDelegateWrapper(dlg, 0, connectFlags);
			onCanActivateAccelListeners[onCanActivateAccelListeners.length - 1].handlerId = Signals.connectData(
				this,
				"can-activate-accel",
				cast(GCallback)&callBackCanActivateAccel,
				cast(void*)onCanActivateAccelListeners[onCanActivateAccelListeners.length - 1],
				cast(GClosureNotify)&callBackCanActivateAccelDestroy,
				connectFlags);
			return onCanActivateAccelListeners[onCanActivateAccelListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackCanActivateAccel(GtkWidget* widgetStruct, uint signalId,OnCanActivateAccelDelegateWrapper wrapper)
		{
			return wrapper.dlg(signalId, wrapper.outer);
		}
		
		extern(C) static void callBackCanActivateAccelDestroy(OnCanActivateAccelDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnCanActivateAccel(wrapper);
		}

		protected void internalRemoveOnCanActivateAccel(OnCanActivateAccelDelegateWrapper source)
		{
			foreach(index, wrapper; onCanActivateAccelListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onCanActivateAccelListeners[index] = null;
					onCanActivateAccelListeners = std.algorithm.remove(onCanActivateAccelListeners, index);
					break;
				}
			}
		}
		

		protected class OnChildNotifyDelegateWrapper
		{
			void delegate(ParamSpec, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(ParamSpec, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnChildNotifyDelegateWrapper[] onChildNotifyListeners;

		/**
		 * The ::child-notify signal is emitted for each
		 * [child property][child-properties]  that has
		 * changed on an object. The signal's detail holds the property name.
		 *
		 * Params:
		 *     childProperty = the #GParamSpec of the changed child property
		 */
		gulong addOnChildNotify(void delegate(ParamSpec, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onChildNotifyListeners ~= new OnChildNotifyDelegateWrapper(dlg, 0, connectFlags);
			onChildNotifyListeners[onChildNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"child-notify",
				cast(GCallback)&callBackChildNotify,
				cast(void*)onChildNotifyListeners[onChildNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackChildNotifyDestroy,
				connectFlags);
			return onChildNotifyListeners[onChildNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackChildNotify(GtkWidget* widgetStruct, GParamSpec* childProperty,OnChildNotifyDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(ParamSpec)(childProperty), wrapper.outer);
		}
		
		extern(C) static void callBackChildNotifyDestroy(OnChildNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnChildNotify(wrapper);
		}

		protected void internalRemoveOnChildNotify(OnChildNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onChildNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onChildNotifyListeners[index] = null;
					onChildNotifyListeners = std.algorithm.remove(onChildNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnCompositedChangedDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnCompositedChangedDelegateWrapper[] onCompositedChangedListeners;

		/**
		 * The ::composited-changed signal is emitted when the composited
		 * status of @widgets screen changes.
		 * See gdk_screen_is_composited().
		 *
		 * Deprecated: Use GdkScreen::composited-changed instead.
		 */
		gulong addOnCompositedChanged(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onCompositedChangedListeners ~= new OnCompositedChangedDelegateWrapper(dlg, 0, connectFlags);
			onCompositedChangedListeners[onCompositedChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"composited-changed",
				cast(GCallback)&callBackCompositedChanged,
				cast(void*)onCompositedChangedListeners[onCompositedChangedListeners.length - 1],
				cast(GClosureNotify)&callBackCompositedChangedDestroy,
				connectFlags);
			return onCompositedChangedListeners[onCompositedChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackCompositedChanged(GtkWidget* widgetStruct,OnCompositedChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackCompositedChangedDestroy(OnCompositedChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnCompositedChanged(wrapper);
		}

		protected void internalRemoveOnCompositedChanged(OnCompositedChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onCompositedChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onCompositedChangedListeners[index] = null;
					onCompositedChangedListeners = std.algorithm.remove(onCompositedChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnConfigureDelegateWrapper
		{
			bool delegate(GdkEventConfigure*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventConfigure*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnConfigureDelegateWrapper[] onConfigureListeners;

		/**
		 * The ::configure-event signal will be emitted when the size, position or
		 * stacking of the @widget's window has changed.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventConfigure which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnConfigure(bool delegate(GdkEventConfigure*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onConfigureListeners ~= new OnConfigureDelegateWrapper(dlg, 0, connectFlags);
			onConfigureListeners[onConfigureListeners.length - 1].handlerId = Signals.connectData(
				this,
				"configure-event",
				cast(GCallback)&callBackConfigure,
				cast(void*)onConfigureListeners[onConfigureListeners.length - 1],
				cast(GClosureNotify)&callBackConfigureDestroy,
				connectFlags);
			return onConfigureListeners[onConfigureListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackConfigure(GtkWidget* widgetStruct, GdkEventConfigure* event,OnConfigureDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackConfigureDestroy(OnConfigureDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnConfigure(wrapper);
		}

		protected void internalRemoveOnConfigure(OnConfigureDelegateWrapper source)
		{
			foreach(index, wrapper; onConfigureListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onConfigureListeners[index] = null;
					onConfigureListeners = std.algorithm.remove(onConfigureListeners, index);
					break;
				}
			}
		}
		

		protected class OnConfigureEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnConfigureEventGenericDelegateWrapper[] onConfigureEventGenericListeners;
		
		/**
		 * The ::configure-event signal will be emitted when the size, position or
		 * stacking of the @widget's window has changed.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventConfigure which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnConfigure(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onConfigureEventGenericListeners ~= new OnConfigureEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onConfigureEventGenericListeners[onConfigureEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"configure-event",
				cast(GCallback)&callBackConfigureEventGeneric,
				cast(void*)onConfigureEventGenericListeners[onConfigureEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackConfigureEventGenericDestroy,
				connectFlags);
			return onConfigureEventGenericListeners[onConfigureEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackConfigureEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnConfigureEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackConfigureEventGenericDestroy(OnConfigureEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnConfigureEventGeneric(wrapper);
		}
		protected void internalRemoveOnConfigureEventGeneric(OnConfigureEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onConfigureEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onConfigureEventGenericListeners[index] = null;
					onConfigureEventGenericListeners = std.algorithm.remove(onConfigureEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnDamageDelegateWrapper
		{
			bool delegate(GdkEventExpose*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventExpose*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDamageDelegateWrapper[] onDamageListeners;

		/**
		 * Emitted when a redirected window belonging to @widget gets drawn into.
		 * The region/area members of the event shows what area of the redirected
		 * drawable was drawn into.
		 *
		 * Params:
		 *     event = the #GdkEventExpose event
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 *
		 * Since: 2.14
		 */
		gulong addOnDamage(bool delegate(GdkEventExpose*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDamageListeners ~= new OnDamageDelegateWrapper(dlg, 0, connectFlags);
			onDamageListeners[onDamageListeners.length - 1].handlerId = Signals.connectData(
				this,
				"damage-event",
				cast(GCallback)&callBackDamage,
				cast(void*)onDamageListeners[onDamageListeners.length - 1],
				cast(GClosureNotify)&callBackDamageDestroy,
				connectFlags);
			return onDamageListeners[onDamageListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDamage(GtkWidget* widgetStruct, GdkEventExpose* event,OnDamageDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackDamageDestroy(OnDamageDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDamage(wrapper);
		}

		protected void internalRemoveOnDamage(OnDamageDelegateWrapper source)
		{
			foreach(index, wrapper; onDamageListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDamageListeners[index] = null;
					onDamageListeners = std.algorithm.remove(onDamageListeners, index);
					break;
				}
			}
		}
		

		protected class OnDamageEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDamageEventGenericDelegateWrapper[] onDamageEventGenericListeners;
		
		/**
		 * Emitted when a redirected window belonging to @widget gets drawn into.
		 * The region/area members of the event shows what area of the redirected
		 * drawable was drawn into.
		 *
		 * Params:
		 *     event = the #GdkEventExpose event
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 *
		 * Since: 2.14
		 */
		gulong addOnDamage(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDamageEventGenericListeners ~= new OnDamageEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onDamageEventGenericListeners[onDamageEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"damage-event",
				cast(GCallback)&callBackDamageEventGeneric,
				cast(void*)onDamageEventGenericListeners[onDamageEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackDamageEventGenericDestroy,
				connectFlags);
			return onDamageEventGenericListeners[onDamageEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDamageEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnDamageEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackDamageEventGenericDestroy(OnDamageEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDamageEventGeneric(wrapper);
		}
		protected void internalRemoveOnDamageEventGeneric(OnDamageEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onDamageEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDamageEventGenericListeners[index] = null;
					onDamageEventGenericListeners = std.algorithm.remove(onDamageEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnDeleteDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDeleteDelegateWrapper[] onDeleteListeners;

		/**
		 * The ::delete-event signal is emitted if a user requests that
		 * a toplevel window is closed. The default handler for this signal
		 * destroys the window. Connecting gtk_widget_hide_on_delete() to
		 * this signal will cause the window to be hidden instead, so that
		 * it can later be shown again without reconstructing it.
		 *
		 * Params:
		 *     event = the event which triggered this signal
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnDelete(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDeleteListeners ~= new OnDeleteDelegateWrapper(dlg, 0, connectFlags);
			onDeleteListeners[onDeleteListeners.length - 1].handlerId = Signals.connectData(
				this,
				"delete-event",
				cast(GCallback)&callBackDelete,
				cast(void*)onDeleteListeners[onDeleteListeners.length - 1],
				cast(GClosureNotify)&callBackDeleteDestroy,
				connectFlags);
			return onDeleteListeners[onDeleteListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDelete(GtkWidget* widgetStruct, GdkEvent* event,OnDeleteDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackDeleteDestroy(OnDeleteDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDelete(wrapper);
		}

		protected void internalRemoveOnDelete(OnDeleteDelegateWrapper source)
		{
			foreach(index, wrapper; onDeleteListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDeleteListeners[index] = null;
					onDeleteListeners = std.algorithm.remove(onDeleteListeners, index);
					break;
				}
			}
		}
		

		protected class OnDestroyDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDestroyDelegateWrapper[] onDestroyListeners;

		/**
		 * Signals that all holders of a reference to the widget should release
		 * the reference that they hold. May result in finalization of the widget
		 * if all references are released.
		 *
		 * This signal is not suitable for saving widget state.
		 */
		gulong addOnDestroy(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDestroyListeners ~= new OnDestroyDelegateWrapper(dlg, 0, connectFlags);
			onDestroyListeners[onDestroyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"destroy",
				cast(GCallback)&callBackDestroy,
				cast(void*)onDestroyListeners[onDestroyListeners.length - 1],
				cast(GClosureNotify)&callBackDestroyDestroy,
				connectFlags);
			return onDestroyListeners[onDestroyListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDestroy(GtkWidget* widgetStruct,OnDestroyDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackDestroyDestroy(OnDestroyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDestroy(wrapper);
		}

		protected void internalRemoveOnDestroy(OnDestroyDelegateWrapper source)
		{
			foreach(index, wrapper; onDestroyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDestroyListeners[index] = null;
					onDestroyListeners = std.algorithm.remove(onDestroyListeners, index);
					break;
				}
			}
		}
		

		protected class OnDestroyEventDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDestroyEventDelegateWrapper[] onDestroyEventListeners;

		/**
		 * The ::destroy-event signal is emitted when a #GdkWindow is destroyed.
		 * You rarely get this signal, because most widgets disconnect themselves
		 * from their window before they destroy it, so no widget owns the
		 * window at destroy time.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the event which triggered this signal
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnDestroyEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDestroyEventListeners ~= new OnDestroyEventDelegateWrapper(dlg, 0, connectFlags);
			onDestroyEventListeners[onDestroyEventListeners.length - 1].handlerId = Signals.connectData(
				this,
				"destroy-event",
				cast(GCallback)&callBackDestroyEvent,
				cast(void*)onDestroyEventListeners[onDestroyEventListeners.length - 1],
				cast(GClosureNotify)&callBackDestroyEventDestroy,
				connectFlags);
			return onDestroyEventListeners[onDestroyEventListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDestroyEvent(GtkWidget* widgetStruct, GdkEvent* event,OnDestroyEventDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackDestroyEventDestroy(OnDestroyEventDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDestroyEvent(wrapper);
		}

		protected void internalRemoveOnDestroyEvent(OnDestroyEventDelegateWrapper source)
		{
			foreach(index, wrapper; onDestroyEventListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDestroyEventListeners[index] = null;
					onDestroyEventListeners = std.algorithm.remove(onDestroyEventListeners, index);
					break;
				}
			}
		}
		

		protected class OnDirectionChangedDelegateWrapper
		{
			void delegate(GtkTextDirection, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(GtkTextDirection, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDirectionChangedDelegateWrapper[] onDirectionChangedListeners;

		/**
		 * The ::direction-changed signal is emitted when the text direction
		 * of a widget changes.
		 *
		 * Params:
		 *     previousDirection = the previous text direction of @widget
		 */
		gulong addOnDirectionChanged(void delegate(GtkTextDirection, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDirectionChangedListeners ~= new OnDirectionChangedDelegateWrapper(dlg, 0, connectFlags);
			onDirectionChangedListeners[onDirectionChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"direction-changed",
				cast(GCallback)&callBackDirectionChanged,
				cast(void*)onDirectionChangedListeners[onDirectionChangedListeners.length - 1],
				cast(GClosureNotify)&callBackDirectionChangedDestroy,
				connectFlags);
			return onDirectionChangedListeners[onDirectionChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDirectionChanged(GtkWidget* widgetStruct, GtkTextDirection previousDirection,OnDirectionChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(previousDirection, wrapper.outer);
		}
		
		extern(C) static void callBackDirectionChangedDestroy(OnDirectionChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDirectionChanged(wrapper);
		}

		protected void internalRemoveOnDirectionChanged(OnDirectionChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onDirectionChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDirectionChangedListeners[index] = null;
					onDirectionChangedListeners = std.algorithm.remove(onDirectionChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragBeginDelegateWrapper
		{
			void delegate(DragContext, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragBeginDelegateWrapper[] onDragBeginListeners;

		/**
		 * The ::drag-begin signal is emitted on the drag source when a drag is
		 * started. A typical reason to connect to this signal is to set up a
		 * custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
		 *
		 * Note that some widgets set up a drag icon in the default handler of
		 * this signal, so you may have to use g_signal_connect_after() to
		 * override what the default handler did.
		 *
		 * Params:
		 *     context = the drag context
		 */
		gulong addOnDragBegin(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragBeginListeners ~= new OnDragBeginDelegateWrapper(dlg, 0, connectFlags);
			onDragBeginListeners[onDragBeginListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-begin",
				cast(GCallback)&callBackDragBegin,
				cast(void*)onDragBeginListeners[onDragBeginListeners.length - 1],
				cast(GClosureNotify)&callBackDragBeginDestroy,
				connectFlags);
			return onDragBeginListeners[onDragBeginListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragBegin(GtkWidget* widgetStruct, GdkDragContext* context,OnDragBeginDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), wrapper.outer);
		}
		
		extern(C) static void callBackDragBeginDestroy(OnDragBeginDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragBegin(wrapper);
		}

		protected void internalRemoveOnDragBegin(OnDragBeginDelegateWrapper source)
		{
			foreach(index, wrapper; onDragBeginListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragBeginListeners[index] = null;
					onDragBeginListeners = std.algorithm.remove(onDragBeginListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragDataDeleteDelegateWrapper
		{
			void delegate(DragContext, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragDataDeleteDelegateWrapper[] onDragDataDeleteListeners;

		/**
		 * The ::drag-data-delete signal is emitted on the drag source when a drag
		 * with the action %GDK_ACTION_MOVE is successfully completed. The signal
		 * handler is responsible for deleting the data that has been dropped. What
		 * "delete" means depends on the context of the drag operation.
		 *
		 * Params:
		 *     context = the drag context
		 */
		gulong addOnDragDataDelete(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragDataDeleteListeners ~= new OnDragDataDeleteDelegateWrapper(dlg, 0, connectFlags);
			onDragDataDeleteListeners[onDragDataDeleteListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-data-delete",
				cast(GCallback)&callBackDragDataDelete,
				cast(void*)onDragDataDeleteListeners[onDragDataDeleteListeners.length - 1],
				cast(GClosureNotify)&callBackDragDataDeleteDestroy,
				connectFlags);
			return onDragDataDeleteListeners[onDragDataDeleteListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragDataDelete(GtkWidget* widgetStruct, GdkDragContext* context,OnDragDataDeleteDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), wrapper.outer);
		}
		
		extern(C) static void callBackDragDataDeleteDestroy(OnDragDataDeleteDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragDataDelete(wrapper);
		}

		protected void internalRemoveOnDragDataDelete(OnDragDataDeleteDelegateWrapper source)
		{
			foreach(index, wrapper; onDragDataDeleteListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragDataDeleteListeners[index] = null;
					onDragDataDeleteListeners = std.algorithm.remove(onDragDataDeleteListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragDataGetDelegateWrapper
		{
			void delegate(DragContext, SelectionData, uint, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, SelectionData, uint, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragDataGetDelegateWrapper[] onDragDataGetListeners;

		/**
		 * The ::drag-data-get signal is emitted on the drag source when the drop
		 * site requests the data which is dragged. It is the responsibility of
		 * the signal handler to fill @data with the data in the format which
		 * is indicated by @info. See gtk_selection_data_set() and
		 * gtk_selection_data_set_text().
		 *
		 * Params:
		 *     context = the drag context
		 *     data = the #GtkSelectionData to be filled with the dragged data
		 *     info = the info that has been registered with the target in the
		 *         #GtkTargetList
		 *     time = the timestamp at which the data was requested
		 */
		gulong addOnDragDataGet(void delegate(DragContext, SelectionData, uint, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragDataGetListeners ~= new OnDragDataGetDelegateWrapper(dlg, 0, connectFlags);
			onDragDataGetListeners[onDragDataGetListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-data-get",
				cast(GCallback)&callBackDragDataGet,
				cast(void*)onDragDataGetListeners[onDragDataGetListeners.length - 1],
				cast(GClosureNotify)&callBackDragDataGetDestroy,
				connectFlags);
			return onDragDataGetListeners[onDragDataGetListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragDataGet(GtkWidget* widgetStruct, GdkDragContext* context, GtkSelectionData* data, uint info, uint time,OnDragDataGetDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), ObjectG.getDObject!(SelectionData)(data), info, time, wrapper.outer);
		}
		
		extern(C) static void callBackDragDataGetDestroy(OnDragDataGetDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragDataGet(wrapper);
		}

		protected void internalRemoveOnDragDataGet(OnDragDataGetDelegateWrapper source)
		{
			foreach(index, wrapper; onDragDataGetListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragDataGetListeners[index] = null;
					onDragDataGetListeners = std.algorithm.remove(onDragDataGetListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragDataReceivedDelegateWrapper
		{
			void delegate(DragContext, int, int, SelectionData, uint, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, int, int, SelectionData, uint, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragDataReceivedDelegateWrapper[] onDragDataReceivedListeners;

		/**
		 * The ::drag-data-received signal is emitted on the drop site when the
		 * dragged data has been received. If the data was received in order to
		 * determine whether the drop will be accepted, the handler is expected
		 * to call gdk_drag_status() and not finish the drag.
		 * If the data was received in response to a #GtkWidget::drag-drop signal
		 * (and this is the last target to be received), the handler for this
		 * signal is expected to process the received data and then call
		 * gtk_drag_finish(), setting the @success parameter depending on
		 * whether the data was processed successfully.
		 *
		 * Applications must create some means to determine why the signal was emitted
		 * and therefore whether to call gdk_drag_status() or gtk_drag_finish().
		 *
		 * The handler may inspect the selected action with
		 * gdk_drag_context_get_selected_action() before calling
		 * gtk_drag_finish(), e.g. to implement %GDK_ACTION_ASK as
		 * shown in the following example:
		 * |[<!-- language="C" -->
		 * void
		 * drag_data_received (GtkWidget          *widget,
		 * GdkDragContext     *context,
		 * gint                x,
		 * gint                y,
		 * GtkSelectionData   *data,
		 * guint               info,
		 * guint               time)
		 * {
		 * if ((data->length >= 0) && (data->format == 8))
		 * {
		 * GdkDragAction action;
		 *
		 * // handle data here
		 *
		 * action = gdk_drag_context_get_selected_action (context);
		 * if (action == GDK_ACTION_ASK)
		 * {
		 * GtkWidget *dialog;
		 * gint response;
		 *
		 * dialog = gtk_message_dialog_new (NULL,
		 * GTK_DIALOG_MODAL |
		 * GTK_DIALOG_DESTROY_WITH_PARENT,
		 * GTK_MESSAGE_INFO,
		 * GTK_BUTTONS_YES_NO,
		 * "Move the data ?\n");
		 * response = gtk_dialog_run (GTK_DIALOG (dialog));
		 * gtk_widget_destroy (dialog);
		 *
		 * if (response == GTK_RESPONSE_YES)
		 * action = GDK_ACTION_MOVE;
		 * else
		 * action = GDK_ACTION_COPY;
		 * }
		 *
		 * gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
		 * }
		 * else
		 * gtk_drag_finish (context, FALSE, FALSE, time);
		 * }
		 * ]|
		 *
		 * Params:
		 *     context = the drag context
		 *     x = where the drop happened
		 *     y = where the drop happened
		 *     data = the received data
		 *     info = the info that has been registered with the target in the
		 *         #GtkTargetList
		 *     time = the timestamp at which the data was received
		 */
		gulong addOnDragDataReceived(void delegate(DragContext, int, int, SelectionData, uint, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragDataReceivedListeners ~= new OnDragDataReceivedDelegateWrapper(dlg, 0, connectFlags);
			onDragDataReceivedListeners[onDragDataReceivedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-data-received",
				cast(GCallback)&callBackDragDataReceived,
				cast(void*)onDragDataReceivedListeners[onDragDataReceivedListeners.length - 1],
				cast(GClosureNotify)&callBackDragDataReceivedDestroy,
				connectFlags);
			return onDragDataReceivedListeners[onDragDataReceivedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragDataReceived(GtkWidget* widgetStruct, GdkDragContext* context, int x, int y, GtkSelectionData* data, uint info, uint time,OnDragDataReceivedDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), x, y, ObjectG.getDObject!(SelectionData)(data), info, time, wrapper.outer);
		}
		
		extern(C) static void callBackDragDataReceivedDestroy(OnDragDataReceivedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragDataReceived(wrapper);
		}

		protected void internalRemoveOnDragDataReceived(OnDragDataReceivedDelegateWrapper source)
		{
			foreach(index, wrapper; onDragDataReceivedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragDataReceivedListeners[index] = null;
					onDragDataReceivedListeners = std.algorithm.remove(onDragDataReceivedListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragDropDelegateWrapper
		{
			bool delegate(DragContext, int, int, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(DragContext, int, int, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragDropDelegateWrapper[] onDragDropListeners;

		/**
		 * The ::drag-drop signal is emitted on the drop site when the user drops
		 * the data onto the widget. The signal handler must determine whether
		 * the cursor position is in a drop zone or not. If it is not in a drop
		 * zone, it returns %FALSE and no further processing is necessary.
		 * Otherwise, the handler returns %TRUE. In this case, the handler must
		 * ensure that gtk_drag_finish() is called to let the source know that
		 * the drop is done. The call to gtk_drag_finish() can be done either
		 * directly or in a #GtkWidget::drag-data-received handler which gets
		 * triggered by calling gtk_drag_get_data() to receive the data for one
		 * or more of the supported targets.
		 *
		 * Params:
		 *     context = the drag context
		 *     x = the x coordinate of the current cursor position
		 *     y = the y coordinate of the current cursor position
		 *     time = the timestamp of the motion event
		 *
		 * Return: whether the cursor position is in a drop zone
		 */
		gulong addOnDragDrop(bool delegate(DragContext, int, int, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragDropListeners ~= new OnDragDropDelegateWrapper(dlg, 0, connectFlags);
			onDragDropListeners[onDragDropListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-drop",
				cast(GCallback)&callBackDragDrop,
				cast(void*)onDragDropListeners[onDragDropListeners.length - 1],
				cast(GClosureNotify)&callBackDragDropDestroy,
				connectFlags);
			return onDragDropListeners[onDragDropListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDragDrop(GtkWidget* widgetStruct, GdkDragContext* context, int x, int y, uint time,OnDragDropDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(DragContext)(context), x, y, time, wrapper.outer);
		}
		
		extern(C) static void callBackDragDropDestroy(OnDragDropDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragDrop(wrapper);
		}

		protected void internalRemoveOnDragDrop(OnDragDropDelegateWrapper source)
		{
			foreach(index, wrapper; onDragDropListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragDropListeners[index] = null;
					onDragDropListeners = std.algorithm.remove(onDragDropListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragEndDelegateWrapper
		{
			void delegate(DragContext, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragEndDelegateWrapper[] onDragEndListeners;

		/**
		 * The ::drag-end signal is emitted on the drag source when a drag is
		 * finished.  A typical reason to connect to this signal is to undo
		 * things done in #GtkWidget::drag-begin.
		 *
		 * Params:
		 *     context = the drag context
		 */
		gulong addOnDragEnd(void delegate(DragContext, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragEndListeners ~= new OnDragEndDelegateWrapper(dlg, 0, connectFlags);
			onDragEndListeners[onDragEndListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-end",
				cast(GCallback)&callBackDragEnd,
				cast(void*)onDragEndListeners[onDragEndListeners.length - 1],
				cast(GClosureNotify)&callBackDragEndDestroy,
				connectFlags);
			return onDragEndListeners[onDragEndListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragEnd(GtkWidget* widgetStruct, GdkDragContext* context,OnDragEndDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), wrapper.outer);
		}
		
		extern(C) static void callBackDragEndDestroy(OnDragEndDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragEnd(wrapper);
		}

		protected void internalRemoveOnDragEnd(OnDragEndDelegateWrapper source)
		{
			foreach(index, wrapper; onDragEndListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragEndListeners[index] = null;
					onDragEndListeners = std.algorithm.remove(onDragEndListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragFailedDelegateWrapper
		{
			bool delegate(DragContext, GtkDragResult, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(DragContext, GtkDragResult, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragFailedDelegateWrapper[] onDragFailedListeners;

		/**
		 * The ::drag-failed signal is emitted on the drag source when a drag has
		 * failed. The signal handler may hook custom code to handle a failed DnD
		 * operation based on the type of error, it returns %TRUE is the failure has
		 * been already handled (not showing the default "drag operation failed"
		 * animation), otherwise it returns %FALSE.
		 *
		 * Params:
		 *     context = the drag context
		 *     result = the result of the drag operation
		 *
		 * Return: %TRUE if the failed drag operation has been already handled.
		 *
		 * Since: 2.12
		 */
		gulong addOnDragFailed(bool delegate(DragContext, GtkDragResult, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragFailedListeners ~= new OnDragFailedDelegateWrapper(dlg, 0, connectFlags);
			onDragFailedListeners[onDragFailedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-failed",
				cast(GCallback)&callBackDragFailed,
				cast(void*)onDragFailedListeners[onDragFailedListeners.length - 1],
				cast(GClosureNotify)&callBackDragFailedDestroy,
				connectFlags);
			return onDragFailedListeners[onDragFailedListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDragFailed(GtkWidget* widgetStruct, GdkDragContext* context, GtkDragResult result,OnDragFailedDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(DragContext)(context), result, wrapper.outer);
		}
		
		extern(C) static void callBackDragFailedDestroy(OnDragFailedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragFailed(wrapper);
		}

		protected void internalRemoveOnDragFailed(OnDragFailedDelegateWrapper source)
		{
			foreach(index, wrapper; onDragFailedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragFailedListeners[index] = null;
					onDragFailedListeners = std.algorithm.remove(onDragFailedListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragLeaveDelegateWrapper
		{
			void delegate(DragContext, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(DragContext, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragLeaveDelegateWrapper[] onDragLeaveListeners;

		/**
		 * The ::drag-leave signal is emitted on the drop site when the cursor
		 * leaves the widget. A typical reason to connect to this signal is to
		 * undo things done in #GtkWidget::drag-motion, e.g. undo highlighting
		 * with gtk_drag_unhighlight().
		 *
		 *
		 * Likewise, the #GtkWidget::drag-leave signal is also emitted before the
		 * ::drag-drop signal, for instance to allow cleaning up of a preview item
		 * created in the #GtkWidget::drag-motion signal handler.
		 *
		 * Params:
		 *     context = the drag context
		 *     time = the timestamp of the motion event
		 */
		gulong addOnDragLeave(void delegate(DragContext, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragLeaveListeners ~= new OnDragLeaveDelegateWrapper(dlg, 0, connectFlags);
			onDragLeaveListeners[onDragLeaveListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-leave",
				cast(GCallback)&callBackDragLeave,
				cast(void*)onDragLeaveListeners[onDragLeaveListeners.length - 1],
				cast(GClosureNotify)&callBackDragLeaveDestroy,
				connectFlags);
			return onDragLeaveListeners[onDragLeaveListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackDragLeave(GtkWidget* widgetStruct, GdkDragContext* context, uint time,OnDragLeaveDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(DragContext)(context), time, wrapper.outer);
		}
		
		extern(C) static void callBackDragLeaveDestroy(OnDragLeaveDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragLeave(wrapper);
		}

		protected void internalRemoveOnDragLeave(OnDragLeaveDelegateWrapper source)
		{
			foreach(index, wrapper; onDragLeaveListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragLeaveListeners[index] = null;
					onDragLeaveListeners = std.algorithm.remove(onDragLeaveListeners, index);
					break;
				}
			}
		}
		

		protected class OnDragMotionDelegateWrapper
		{
			bool delegate(DragContext, int, int, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(DragContext, int, int, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDragMotionDelegateWrapper[] onDragMotionListeners;

		/**
		 * The ::drag-motion signal is emitted on the drop site when the user
		 * moves the cursor over the widget during a drag. The signal handler
		 * must determine whether the cursor position is in a drop zone or not.
		 * If it is not in a drop zone, it returns %FALSE and no further processing
		 * is necessary. Otherwise, the handler returns %TRUE. In this case, the
		 * handler is responsible for providing the necessary information for
		 * displaying feedback to the user, by calling gdk_drag_status().
		 *
		 * If the decision whether the drop will be accepted or rejected can't be
		 * made based solely on the cursor position and the type of the data, the
		 * handler may inspect the dragged data by calling gtk_drag_get_data() and
		 * defer the gdk_drag_status() call to the #GtkWidget::drag-data-received
		 * handler. Note that you must pass #GTK_DEST_DEFAULT_DROP,
		 * #GTK_DEST_DEFAULT_MOTION or #GTK_DEST_DEFAULT_ALL to gtk_drag_dest_set()
		 * when using the drag-motion signal that way.
		 *
		 * Also note that there is no drag-enter signal. The drag receiver has to
		 * keep track of whether he has received any drag-motion signals since the
		 * last #GtkWidget::drag-leave and if not, treat the drag-motion signal as
		 * an "enter" signal. Upon an "enter", the handler will typically highlight
		 * the drop site with gtk_drag_highlight().
		 * |[<!-- language="C" -->
		 * static void
		 * drag_motion (GtkWidget      *widget,
		 * GdkDragContext *context,
		 * gint            x,
		 * gint            y,
		 * guint           time)
		 * {
		 * GdkAtom target;
		 *
		 * PrivateData *private_data = GET_PRIVATE_DATA (widget);
		 *
		 * if (!private_data->drag_highlight)
		 * {
		 * private_data->drag_highlight = 1;
		 * gtk_drag_highlight (widget);
		 * }
		 *
		 * target = gtk_drag_dest_find_target (widget, context, NULL);
		 * if (target == GDK_NONE)
		 * gdk_drag_status (context, 0, time);
		 * else
		 * {
		 * private_data->pending_status
		 * = gdk_drag_context_get_suggested_action (context);
		 * gtk_drag_get_data (widget, context, target, time);
		 * }
		 *
		 * return TRUE;
		 * }
		 *
		 * static void
		 * drag_data_received (GtkWidget        *widget,
		 * GdkDragContext   *context,
		 * gint              x,
		 * gint              y,
		 * GtkSelectionData *selection_data,
		 * guint             info,
		 * guint             time)
		 * {
		 * PrivateData *private_data = GET_PRIVATE_DATA (widget);
		 *
		 * if (private_data->suggested_action)
		 * {
		 * private_data->suggested_action = 0;
		 *
		 * // We are getting this data due to a request in drag_motion,
		 * // rather than due to a request in drag_drop, so we are just
		 * // supposed to call gdk_drag_status(), not actually paste in
		 * // the data.
		 *
		 * str = gtk_selection_data_get_text (selection_data);
		 * if (!data_is_acceptable (str))
		 * gdk_drag_status (context, 0, time);
		 * else
		 * gdk_drag_status (context,
		 * private_data->suggested_action,
		 * time);
		 * }
		 * else
		 * {
		 * // accept the drop
		 * }
		 * }
		 * ]|
		 *
		 * Params:
		 *     context = the drag context
		 *     x = the x coordinate of the current cursor position
		 *     y = the y coordinate of the current cursor position
		 *     time = the timestamp of the motion event
		 *
		 * Return: whether the cursor position is in a drop zone
		 */
		gulong addOnDragMotion(bool delegate(DragContext, int, int, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onDragMotionListeners ~= new OnDragMotionDelegateWrapper(dlg, 0, connectFlags);
			onDragMotionListeners[onDragMotionListeners.length - 1].handlerId = Signals.connectData(
				this,
				"drag-motion",
				cast(GCallback)&callBackDragMotion,
				cast(void*)onDragMotionListeners[onDragMotionListeners.length - 1],
				cast(GClosureNotify)&callBackDragMotionDestroy,
				connectFlags);
			return onDragMotionListeners[onDragMotionListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackDragMotion(GtkWidget* widgetStruct, GdkDragContext* context, int x, int y, uint time,OnDragMotionDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(DragContext)(context), x, y, time, wrapper.outer);
		}
		
		extern(C) static void callBackDragMotionDestroy(OnDragMotionDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnDragMotion(wrapper);
		}

		protected void internalRemoveOnDragMotion(OnDragMotionDelegateWrapper source)
		{
			foreach(index, wrapper; onDragMotionListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onDragMotionListeners[index] = null;
					onDragMotionListeners = std.algorithm.remove(onDragMotionListeners, index);
					break;
				}
			}
		}
		

		protected class OnEnterNotifyDelegateWrapper
		{
			bool delegate(GdkEventCrossing*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventCrossing*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnEnterNotifyDelegateWrapper[] onEnterNotifyListeners;

		/**
		 * The ::enter-notify-event will be emitted when the pointer enters
		 * the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_ENTER_NOTIFY_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventCrossing which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnEnterNotify(bool delegate(GdkEventCrossing*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.ENTER_NOTIFY_MASK);
			onEnterNotifyListeners ~= new OnEnterNotifyDelegateWrapper(dlg, 0, connectFlags);
			onEnterNotifyListeners[onEnterNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"enter-notify-event",
				cast(GCallback)&callBackEnterNotify,
				cast(void*)onEnterNotifyListeners[onEnterNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackEnterNotifyDestroy,
				connectFlags);
			return onEnterNotifyListeners[onEnterNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackEnterNotify(GtkWidget* widgetStruct, GdkEventCrossing* event,OnEnterNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackEnterNotifyDestroy(OnEnterNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnEnterNotify(wrapper);
		}

		protected void internalRemoveOnEnterNotify(OnEnterNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onEnterNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onEnterNotifyListeners[index] = null;
					onEnterNotifyListeners = std.algorithm.remove(onEnterNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnEnterNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnEnterNotifyEventGenericDelegateWrapper[] onEnterNotifyEventGenericListeners;
		
		/**
		 * The ::enter-notify-event will be emitted when the pointer enters
		 * the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_ENTER_NOTIFY_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventCrossing which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnEnterNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.ENTER_NOTIFY_MASK);
			onEnterNotifyEventGenericListeners ~= new OnEnterNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onEnterNotifyEventGenericListeners[onEnterNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"enter-notify-event",
				cast(GCallback)&callBackEnterNotifyEventGeneric,
				cast(void*)onEnterNotifyEventGenericListeners[onEnterNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackEnterNotifyEventGenericDestroy,
				connectFlags);
			return onEnterNotifyEventGenericListeners[onEnterNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackEnterNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnEnterNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackEnterNotifyEventGenericDestroy(OnEnterNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnEnterNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnEnterNotifyEventGeneric(OnEnterNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onEnterNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onEnterNotifyEventGenericListeners[index] = null;
					onEnterNotifyEventGenericListeners = std.algorithm.remove(onEnterNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnDelegateWrapper[] onListeners;

		/**
		 * The GTK+ main loop will emit three signals for each GDK event delivered
		 * to a widget: one generic ::event signal, another, more specific,
		 * signal that matches the type of event delivered (e.g.
		 * #GtkWidget::key-press-event) and finally a generic
		 * #GtkWidget::event-after signal.
		 *
		 * Params:
		 *     event = the #GdkEvent which triggered this signal
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event
		 *     and to cancel the emission of the second specific ::event signal.
		 *     %FALSE to propagate the event further and to allow the emission of
		 *     the second signal. The ::event-after signal is emitted regardless of
		 *     the return value.
		 */
		gulong addOn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onListeners ~= new OnDelegateWrapper(dlg, 0, connectFlags);
			onListeners[onListeners.length - 1].handlerId = Signals.connectData(
				this,
				"event",
				cast(GCallback)&callBack,
				cast(void*)onListeners[onListeners.length - 1],
				cast(GClosureNotify)&callBackDestroy,
				connectFlags);
			return onListeners[onListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBack(GtkWidget* widgetStruct, GdkEvent* event,OnDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackDestroy(OnDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOn(wrapper);
		}

		protected void internalRemoveOn(OnDelegateWrapper source)
		{
			foreach(index, wrapper; onListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onListeners[index] = null;
					onListeners = std.algorithm.remove(onListeners, index);
					break;
				}
			}
		}
		

		protected class OnEventAfterDelegateWrapper
		{
			void delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnEventAfterDelegateWrapper[] onEventAfterListeners;

		/**
		 * After the emission of the #GtkWidget::event signal and (optionally)
		 * the second more specific signal, ::event-after will be emitted
		 * regardless of the previous two signals handlers return values.
		 *
		 * Params:
		 *     event = the #GdkEvent which triggered this signal
		 */
		gulong addOnEventAfter(void delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onEventAfterListeners ~= new OnEventAfterDelegateWrapper(dlg, 0, connectFlags);
			onEventAfterListeners[onEventAfterListeners.length - 1].handlerId = Signals.connectData(
				this,
				"event-after",
				cast(GCallback)&callBackEventAfter,
				cast(void*)onEventAfterListeners[onEventAfterListeners.length - 1],
				cast(GClosureNotify)&callBackEventAfterDestroy,
				connectFlags);
			return onEventAfterListeners[onEventAfterListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackEventAfter(GtkWidget* widgetStruct, GdkEvent* event,OnEventAfterDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackEventAfterDestroy(OnEventAfterDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnEventAfter(wrapper);
		}

		protected void internalRemoveOnEventAfter(OnEventAfterDelegateWrapper source)
		{
			foreach(index, wrapper; onEventAfterListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onEventAfterListeners[index] = null;
					onEventAfterListeners = std.algorithm.remove(onEventAfterListeners, index);
					break;
				}
			}
		}
		

		protected class OnFocusDelegateWrapper
		{
			bool delegate(GtkDirectionType, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GtkDirectionType, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnFocusDelegateWrapper[] onFocusListeners;

		/**
		 * Return: %TRUE to stop other handlers from being invoked for the event. %FALSE to propagate the event further.
		 */
		gulong addOnFocus(bool delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onFocusListeners ~= new OnFocusDelegateWrapper(dlg, 0, connectFlags);
			onFocusListeners[onFocusListeners.length - 1].handlerId = Signals.connectData(
				this,
				"focus",
				cast(GCallback)&callBackFocus,
				cast(void*)onFocusListeners[onFocusListeners.length - 1],
				cast(GClosureNotify)&callBackFocusDestroy,
				connectFlags);
			return onFocusListeners[onFocusListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackFocus(GtkWidget* widgetStruct, GtkDirectionType direction,OnFocusDelegateWrapper wrapper)
		{
			return wrapper.dlg(direction, wrapper.outer);
		}
		
		extern(C) static void callBackFocusDestroy(OnFocusDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnFocus(wrapper);
		}

		protected void internalRemoveOnFocus(OnFocusDelegateWrapper source)
		{
			foreach(index, wrapper; onFocusListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onFocusListeners[index] = null;
					onFocusListeners = std.algorithm.remove(onFocusListeners, index);
					break;
				}
			}
		}
		

		protected class OnFocusInDelegateWrapper
		{
			bool delegate(GdkEventFocus*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventFocus*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnFocusInDelegateWrapper[] onFocusInListeners;

		/**
		 * The ::focus-in-event signal will be emitted when the keyboard focus
		 * enters the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_FOCUS_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventFocus which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnFocusIn(bool delegate(GdkEventFocus*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			onFocusInListeners ~= new OnFocusInDelegateWrapper(dlg, 0, connectFlags);
			onFocusInListeners[onFocusInListeners.length - 1].handlerId = Signals.connectData(
				this,
				"focus-in-event",
				cast(GCallback)&callBackFocusIn,
				cast(void*)onFocusInListeners[onFocusInListeners.length - 1],
				cast(GClosureNotify)&callBackFocusInDestroy,
				connectFlags);
			return onFocusInListeners[onFocusInListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackFocusIn(GtkWidget* widgetStruct, GdkEventFocus* event,OnFocusInDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackFocusInDestroy(OnFocusInDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnFocusIn(wrapper);
		}

		protected void internalRemoveOnFocusIn(OnFocusInDelegateWrapper source)
		{
			foreach(index, wrapper; onFocusInListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onFocusInListeners[index] = null;
					onFocusInListeners = std.algorithm.remove(onFocusInListeners, index);
					break;
				}
			}
		}
		

		protected class OnFocusInEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnFocusInEventGenericDelegateWrapper[] onFocusInEventGenericListeners;
		
		/**
		 * The ::focus-in-event signal will be emitted when the keyboard focus
		 * enters the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_FOCUS_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventFocus which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnFocusIn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			onFocusInEventGenericListeners ~= new OnFocusInEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onFocusInEventGenericListeners[onFocusInEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"focus-in-event",
				cast(GCallback)&callBackFocusInEventGeneric,
				cast(void*)onFocusInEventGenericListeners[onFocusInEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackFocusInEventGenericDestroy,
				connectFlags);
			return onFocusInEventGenericListeners[onFocusInEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackFocusInEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnFocusInEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackFocusInEventGenericDestroy(OnFocusInEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnFocusInEventGeneric(wrapper);
		}
		protected void internalRemoveOnFocusInEventGeneric(OnFocusInEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onFocusInEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onFocusInEventGenericListeners[index] = null;
					onFocusInEventGenericListeners = std.algorithm.remove(onFocusInEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnFocusOutDelegateWrapper
		{
			bool delegate(GdkEventFocus*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventFocus*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnFocusOutDelegateWrapper[] onFocusOutListeners;

		/**
		 * The ::focus-out-event signal will be emitted when the keyboard focus
		 * leaves the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_FOCUS_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventFocus which triggered this
		 *         signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnFocusOut(bool delegate(GdkEventFocus*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			onFocusOutListeners ~= new OnFocusOutDelegateWrapper(dlg, 0, connectFlags);
			onFocusOutListeners[onFocusOutListeners.length - 1].handlerId = Signals.connectData(
				this,
				"focus-out-event",
				cast(GCallback)&callBackFocusOut,
				cast(void*)onFocusOutListeners[onFocusOutListeners.length - 1],
				cast(GClosureNotify)&callBackFocusOutDestroy,
				connectFlags);
			return onFocusOutListeners[onFocusOutListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackFocusOut(GtkWidget* widgetStruct, GdkEventFocus* event,OnFocusOutDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackFocusOutDestroy(OnFocusOutDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnFocusOut(wrapper);
		}

		protected void internalRemoveOnFocusOut(OnFocusOutDelegateWrapper source)
		{
			foreach(index, wrapper; onFocusOutListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onFocusOutListeners[index] = null;
					onFocusOutListeners = std.algorithm.remove(onFocusOutListeners, index);
					break;
				}
			}
		}
		

		protected class OnFocusOutEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnFocusOutEventGenericDelegateWrapper[] onFocusOutEventGenericListeners;
		
		/**
		 * The ::focus-out-event signal will be emitted when the keyboard focus
		 * leaves the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_FOCUS_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventFocus which triggered this
		 *         signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnFocusOut(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.FOCUS_CHANGE_MASK);
			onFocusOutEventGenericListeners ~= new OnFocusOutEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onFocusOutEventGenericListeners[onFocusOutEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"focus-out-event",
				cast(GCallback)&callBackFocusOutEventGeneric,
				cast(void*)onFocusOutEventGenericListeners[onFocusOutEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackFocusOutEventGenericDestroy,
				connectFlags);
			return onFocusOutEventGenericListeners[onFocusOutEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackFocusOutEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnFocusOutEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackFocusOutEventGenericDestroy(OnFocusOutEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnFocusOutEventGeneric(wrapper);
		}
		protected void internalRemoveOnFocusOutEventGeneric(OnFocusOutEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onFocusOutEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onFocusOutEventGenericListeners[index] = null;
					onFocusOutEventGenericListeners = std.algorithm.remove(onFocusOutEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnGrabBrokenDelegateWrapper
		{
			bool delegate(GdkEventGrabBroken*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventGrabBroken*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnGrabBrokenDelegateWrapper[] onGrabBrokenListeners;

		/**
		 * Emitted when a pointer or keyboard grab on a window belonging
		 * to @widget gets broken.
		 *
		 * On X11, this happens when the grab window becomes unviewable
		 * (i.e. it or one of its ancestors is unmapped), or if the same
		 * application grabs the pointer or keyboard again.
		 *
		 * Params:
		 *     event = the #GdkEventGrabBroken event
		 *
		 * Return: %TRUE to stop other handlers from being invoked for
		 *     the event. %FALSE to propagate the event further.
		 *
		 * Since: 2.8
		 */
		gulong addOnGrabBroken(bool delegate(GdkEventGrabBroken*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onGrabBrokenListeners ~= new OnGrabBrokenDelegateWrapper(dlg, 0, connectFlags);
			onGrabBrokenListeners[onGrabBrokenListeners.length - 1].handlerId = Signals.connectData(
				this,
				"grab-broken-event",
				cast(GCallback)&callBackGrabBroken,
				cast(void*)onGrabBrokenListeners[onGrabBrokenListeners.length - 1],
				cast(GClosureNotify)&callBackGrabBrokenDestroy,
				connectFlags);
			return onGrabBrokenListeners[onGrabBrokenListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackGrabBroken(GtkWidget* widgetStruct, GdkEventGrabBroken* event,OnGrabBrokenDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackGrabBrokenDestroy(OnGrabBrokenDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnGrabBroken(wrapper);
		}

		protected void internalRemoveOnGrabBroken(OnGrabBrokenDelegateWrapper source)
		{
			foreach(index, wrapper; onGrabBrokenListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onGrabBrokenListeners[index] = null;
					onGrabBrokenListeners = std.algorithm.remove(onGrabBrokenListeners, index);
					break;
				}
			}
		}
		

		protected class OnGrabBrokenEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnGrabBrokenEventGenericDelegateWrapper[] onGrabBrokenEventGenericListeners;
		
		/**
		 * Emitted when a pointer or keyboard grab on a window belonging
		 * to @widget gets broken.
		 *
		 * On X11, this happens when the grab window becomes unviewable
		 * (i.e. it or one of its ancestors is unmapped), or if the same
		 * application grabs the pointer or keyboard again.
		 *
		 * Params:
		 *     event = the #GdkEventGrabBroken event
		 *
		 * Return: %TRUE to stop other handlers from being invoked for
		 *     the event. %FALSE to propagate the event further.
		 *
		 * Since: 2.8
		 */
		gulong addOnGrabBroken(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onGrabBrokenEventGenericListeners ~= new OnGrabBrokenEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onGrabBrokenEventGenericListeners[onGrabBrokenEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"grab-broken-event",
				cast(GCallback)&callBackGrabBrokenEventGeneric,
				cast(void*)onGrabBrokenEventGenericListeners[onGrabBrokenEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackGrabBrokenEventGenericDestroy,
				connectFlags);
			return onGrabBrokenEventGenericListeners[onGrabBrokenEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackGrabBrokenEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnGrabBrokenEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackGrabBrokenEventGenericDestroy(OnGrabBrokenEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnGrabBrokenEventGeneric(wrapper);
		}
		protected void internalRemoveOnGrabBrokenEventGeneric(OnGrabBrokenEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onGrabBrokenEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onGrabBrokenEventGenericListeners[index] = null;
					onGrabBrokenEventGenericListeners = std.algorithm.remove(onGrabBrokenEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnGrabFocusDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnGrabFocusDelegateWrapper[] onGrabFocusListeners;

		/** */
		gulong addOnGrabFocus(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onGrabFocusListeners ~= new OnGrabFocusDelegateWrapper(dlg, 0, connectFlags);
			onGrabFocusListeners[onGrabFocusListeners.length - 1].handlerId = Signals.connectData(
				this,
				"grab-focus",
				cast(GCallback)&callBackGrabFocus,
				cast(void*)onGrabFocusListeners[onGrabFocusListeners.length - 1],
				cast(GClosureNotify)&callBackGrabFocusDestroy,
				connectFlags);
			return onGrabFocusListeners[onGrabFocusListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackGrabFocus(GtkWidget* widgetStruct,OnGrabFocusDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackGrabFocusDestroy(OnGrabFocusDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnGrabFocus(wrapper);
		}

		protected void internalRemoveOnGrabFocus(OnGrabFocusDelegateWrapper source)
		{
			foreach(index, wrapper; onGrabFocusListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onGrabFocusListeners[index] = null;
					onGrabFocusListeners = std.algorithm.remove(onGrabFocusListeners, index);
					break;
				}
			}
		}
		

		protected class OnGrabNotifyDelegateWrapper
		{
			void delegate(bool, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(bool, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnGrabNotifyDelegateWrapper[] onGrabNotifyListeners;

		/**
		 * The ::grab-notify signal is emitted when a widget becomes
		 * shadowed by a GTK+ grab (not a pointer or keyboard grab) on
		 * another widget, or when it becomes unshadowed due to a grab
		 * being removed.
		 *
		 * A widget is shadowed by a gtk_grab_add() when the topmost
		 * grab widget in the grab stack of its window group is not
		 * its ancestor.
		 *
		 * Params:
		 *     wasGrabbed = %FALSE if the widget becomes shadowed, %TRUE
		 *         if it becomes unshadowed
		 */
		gulong addOnGrabNotify(void delegate(bool, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onGrabNotifyListeners ~= new OnGrabNotifyDelegateWrapper(dlg, 0, connectFlags);
			onGrabNotifyListeners[onGrabNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"grab-notify",
				cast(GCallback)&callBackGrabNotify,
				cast(void*)onGrabNotifyListeners[onGrabNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackGrabNotifyDestroy,
				connectFlags);
			return onGrabNotifyListeners[onGrabNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackGrabNotify(GtkWidget* widgetStruct, bool wasGrabbed,OnGrabNotifyDelegateWrapper wrapper)
		{
			wrapper.dlg(wasGrabbed, wrapper.outer);
		}
		
		extern(C) static void callBackGrabNotifyDestroy(OnGrabNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnGrabNotify(wrapper);
		}

		protected void internalRemoveOnGrabNotify(OnGrabNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onGrabNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onGrabNotifyListeners[index] = null;
					onGrabNotifyListeners = std.algorithm.remove(onGrabNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnHideDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnHideDelegateWrapper[] onHideListeners;

		/**
		 * The ::hide signal is emitted when @widget is hidden, for example with
		 * gtk_widget_hide().
		 */
		gulong addOnHide(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onHideListeners ~= new OnHideDelegateWrapper(dlg, 0, connectFlags);
			onHideListeners[onHideListeners.length - 1].handlerId = Signals.connectData(
				this,
				"hide",
				cast(GCallback)&callBackHide,
				cast(void*)onHideListeners[onHideListeners.length - 1],
				cast(GClosureNotify)&callBackHideDestroy,
				connectFlags);
			return onHideListeners[onHideListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackHide(GtkWidget* widgetStruct,OnHideDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackHideDestroy(OnHideDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnHide(wrapper);
		}

		protected void internalRemoveOnHide(OnHideDelegateWrapper source)
		{
			foreach(index, wrapper; onHideListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onHideListeners[index] = null;
					onHideListeners = std.algorithm.remove(onHideListeners, index);
					break;
				}
			}
		}
		

		protected class OnHierarchyChangedDelegateWrapper
		{
			void delegate(Widget, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnHierarchyChangedDelegateWrapper[] onHierarchyChangedListeners;

		/**
		 * The ::hierarchy-changed signal is emitted when the
		 * anchored state of a widget changes. A widget is
		 * “anchored” when its toplevel
		 * ancestor is a #GtkWindow. This signal is emitted when
		 * a widget changes from un-anchored to anchored or vice-versa.
		 *
		 * Params:
		 *     previousToplevel = the previous toplevel ancestor, or %NULL
		 *         if the widget was previously unanchored
		 */
		gulong addOnHierarchyChanged(void delegate(Widget, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onHierarchyChangedListeners ~= new OnHierarchyChangedDelegateWrapper(dlg, 0, connectFlags);
			onHierarchyChangedListeners[onHierarchyChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"hierarchy-changed",
				cast(GCallback)&callBackHierarchyChanged,
				cast(void*)onHierarchyChangedListeners[onHierarchyChangedListeners.length - 1],
				cast(GClosureNotify)&callBackHierarchyChangedDestroy,
				connectFlags);
			return onHierarchyChangedListeners[onHierarchyChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackHierarchyChanged(GtkWidget* widgetStruct, GtkWidget* previousToplevel,OnHierarchyChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(Widget)(previousToplevel), wrapper.outer);
		}
		
		extern(C) static void callBackHierarchyChangedDestroy(OnHierarchyChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnHierarchyChanged(wrapper);
		}

		protected void internalRemoveOnHierarchyChanged(OnHierarchyChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onHierarchyChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onHierarchyChangedListeners[index] = null;
					onHierarchyChangedListeners = std.algorithm.remove(onHierarchyChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnKeyPressDelegateWrapper
		{
			bool delegate(GdkEventKey*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventKey*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnKeyPressDelegateWrapper[] onKeyPressListeners;

		/**
		 * The ::key-press-event signal is emitted when a key is pressed. The signal
		 * emission will reoccur at the key-repeat rate when the key is kept pressed.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_KEY_PRESS_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventKey which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnKeyPress(bool delegate(GdkEventKey*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.KEY_PRESS_MASK);
			onKeyPressListeners ~= new OnKeyPressDelegateWrapper(dlg, 0, connectFlags);
			onKeyPressListeners[onKeyPressListeners.length - 1].handlerId = Signals.connectData(
				this,
				"key-press-event",
				cast(GCallback)&callBackKeyPress,
				cast(void*)onKeyPressListeners[onKeyPressListeners.length - 1],
				cast(GClosureNotify)&callBackKeyPressDestroy,
				connectFlags);
			return onKeyPressListeners[onKeyPressListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackKeyPress(GtkWidget* widgetStruct, GdkEventKey* event,OnKeyPressDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackKeyPressDestroy(OnKeyPressDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnKeyPress(wrapper);
		}

		protected void internalRemoveOnKeyPress(OnKeyPressDelegateWrapper source)
		{
			foreach(index, wrapper; onKeyPressListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onKeyPressListeners[index] = null;
					onKeyPressListeners = std.algorithm.remove(onKeyPressListeners, index);
					break;
				}
			}
		}
		

		protected class OnKeyPressEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnKeyPressEventGenericDelegateWrapper[] onKeyPressEventGenericListeners;
		
		/**
		 * The ::key-press-event signal is emitted when a key is pressed. The signal
		 * emission will reoccur at the key-repeat rate when the key is kept pressed.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_KEY_PRESS_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventKey which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnKeyPress(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.KEY_PRESS_MASK);
			onKeyPressEventGenericListeners ~= new OnKeyPressEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onKeyPressEventGenericListeners[onKeyPressEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"key-press-event",
				cast(GCallback)&callBackKeyPressEventGeneric,
				cast(void*)onKeyPressEventGenericListeners[onKeyPressEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackKeyPressEventGenericDestroy,
				connectFlags);
			return onKeyPressEventGenericListeners[onKeyPressEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackKeyPressEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnKeyPressEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackKeyPressEventGenericDestroy(OnKeyPressEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnKeyPressEventGeneric(wrapper);
		}
		protected void internalRemoveOnKeyPressEventGeneric(OnKeyPressEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onKeyPressEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onKeyPressEventGenericListeners[index] = null;
					onKeyPressEventGenericListeners = std.algorithm.remove(onKeyPressEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnKeyReleaseDelegateWrapper
		{
			bool delegate(GdkEventKey*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventKey*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnKeyReleaseDelegateWrapper[] onKeyReleaseListeners;

		/**
		 * The ::key-release-event signal is emitted when a key is released.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_KEY_RELEASE_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventKey which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnKeyRelease(bool delegate(GdkEventKey*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.KEY_RELEASE_MASK);
			onKeyReleaseListeners ~= new OnKeyReleaseDelegateWrapper(dlg, 0, connectFlags);
			onKeyReleaseListeners[onKeyReleaseListeners.length - 1].handlerId = Signals.connectData(
				this,
				"key-release-event",
				cast(GCallback)&callBackKeyRelease,
				cast(void*)onKeyReleaseListeners[onKeyReleaseListeners.length - 1],
				cast(GClosureNotify)&callBackKeyReleaseDestroy,
				connectFlags);
			return onKeyReleaseListeners[onKeyReleaseListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackKeyRelease(GtkWidget* widgetStruct, GdkEventKey* event,OnKeyReleaseDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackKeyReleaseDestroy(OnKeyReleaseDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnKeyRelease(wrapper);
		}

		protected void internalRemoveOnKeyRelease(OnKeyReleaseDelegateWrapper source)
		{
			foreach(index, wrapper; onKeyReleaseListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onKeyReleaseListeners[index] = null;
					onKeyReleaseListeners = std.algorithm.remove(onKeyReleaseListeners, index);
					break;
				}
			}
		}
		

		protected class OnKeyReleaseEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnKeyReleaseEventGenericDelegateWrapper[] onKeyReleaseEventGenericListeners;
		
		/**
		 * The ::key-release-event signal is emitted when a key is released.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_KEY_RELEASE_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventKey which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnKeyRelease(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.KEY_RELEASE_MASK);
			onKeyReleaseEventGenericListeners ~= new OnKeyReleaseEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onKeyReleaseEventGenericListeners[onKeyReleaseEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"key-release-event",
				cast(GCallback)&callBackKeyReleaseEventGeneric,
				cast(void*)onKeyReleaseEventGenericListeners[onKeyReleaseEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackKeyReleaseEventGenericDestroy,
				connectFlags);
			return onKeyReleaseEventGenericListeners[onKeyReleaseEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackKeyReleaseEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnKeyReleaseEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackKeyReleaseEventGenericDestroy(OnKeyReleaseEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnKeyReleaseEventGeneric(wrapper);
		}
		protected void internalRemoveOnKeyReleaseEventGeneric(OnKeyReleaseEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onKeyReleaseEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onKeyReleaseEventGenericListeners[index] = null;
					onKeyReleaseEventGenericListeners = std.algorithm.remove(onKeyReleaseEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnKeynavFailedDelegateWrapper
		{
			bool delegate(GtkDirectionType, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GtkDirectionType, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnKeynavFailedDelegateWrapper[] onKeynavFailedListeners;

		/**
		 * Gets emitted if keyboard navigation fails.
		 * See gtk_widget_keynav_failed() for details.
		 *
		 * Params:
		 *     direction = the direction of movement
		 *
		 * Return: %TRUE if stopping keyboard navigation is fine, %FALSE
		 *     if the emitting widget should try to handle the keyboard
		 *     navigation attempt in its parent container(s).
		 *
		 * Since: 2.12
		 */
		gulong addOnKeynavFailed(bool delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onKeynavFailedListeners ~= new OnKeynavFailedDelegateWrapper(dlg, 0, connectFlags);
			onKeynavFailedListeners[onKeynavFailedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"keynav-failed",
				cast(GCallback)&callBackKeynavFailed,
				cast(void*)onKeynavFailedListeners[onKeynavFailedListeners.length - 1],
				cast(GClosureNotify)&callBackKeynavFailedDestroy,
				connectFlags);
			return onKeynavFailedListeners[onKeynavFailedListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackKeynavFailed(GtkWidget* widgetStruct, GtkDirectionType direction,OnKeynavFailedDelegateWrapper wrapper)
		{
			return wrapper.dlg(direction, wrapper.outer);
		}
		
		extern(C) static void callBackKeynavFailedDestroy(OnKeynavFailedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnKeynavFailed(wrapper);
		}

		protected void internalRemoveOnKeynavFailed(OnKeynavFailedDelegateWrapper source)
		{
			foreach(index, wrapper; onKeynavFailedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onKeynavFailedListeners[index] = null;
					onKeynavFailedListeners = std.algorithm.remove(onKeynavFailedListeners, index);
					break;
				}
			}
		}
		

		protected class OnLeaveNotifyDelegateWrapper
		{
			bool delegate(GdkEventCrossing*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventCrossing*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnLeaveNotifyDelegateWrapper[] onLeaveNotifyListeners;

		/**
		 * The ::leave-notify-event will be emitted when the pointer leaves
		 * the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_LEAVE_NOTIFY_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventCrossing which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnLeaveNotify(bool delegate(GdkEventCrossing*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.LEAVE_NOTIFY_MASK);
			onLeaveNotifyListeners ~= new OnLeaveNotifyDelegateWrapper(dlg, 0, connectFlags);
			onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"leave-notify-event",
				cast(GCallback)&callBackLeaveNotify,
				cast(void*)onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackLeaveNotifyDestroy,
				connectFlags);
			return onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackLeaveNotify(GtkWidget* widgetStruct, GdkEventCrossing* event,OnLeaveNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackLeaveNotifyDestroy(OnLeaveNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnLeaveNotify(wrapper);
		}

		protected void internalRemoveOnLeaveNotify(OnLeaveNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onLeaveNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onLeaveNotifyListeners[index] = null;
					onLeaveNotifyListeners = std.algorithm.remove(onLeaveNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnLeaveNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnLeaveNotifyEventGenericDelegateWrapper[] onLeaveNotifyEventGenericListeners;
		
		/**
		 * The ::leave-notify-event will be emitted when the pointer leaves
		 * the @widget's window.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_LEAVE_NOTIFY_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventCrossing which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnLeaveNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.LEAVE_NOTIFY_MASK);
			onLeaveNotifyEventGenericListeners ~= new OnLeaveNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onLeaveNotifyEventGenericListeners[onLeaveNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"leave-notify-event",
				cast(GCallback)&callBackLeaveNotifyEventGeneric,
				cast(void*)onLeaveNotifyEventGenericListeners[onLeaveNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackLeaveNotifyEventGenericDestroy,
				connectFlags);
			return onLeaveNotifyEventGenericListeners[onLeaveNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackLeaveNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnLeaveNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackLeaveNotifyEventGenericDestroy(OnLeaveNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnLeaveNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnLeaveNotifyEventGeneric(OnLeaveNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onLeaveNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onLeaveNotifyEventGenericListeners[index] = null;
					onLeaveNotifyEventGenericListeners = std.algorithm.remove(onLeaveNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnMapDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMapDelegateWrapper[] onMapListeners;

		/**
		 * The ::map signal is emitted when @widget is going to be mapped, that is
		 * when the widget is visible (which is controlled with
		 * gtk_widget_set_visible()) and all its parents up to the toplevel widget
		 * are also visible. Once the map has occurred, #GtkWidget::map-event will
		 * be emitted.
		 *
		 * The ::map signal can be used to determine whether a widget will be drawn,
		 * for instance it can resume an animation that was stopped during the
		 * emission of #GtkWidget::unmap.
		 */
		gulong addOnMap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onMapListeners ~= new OnMapDelegateWrapper(dlg, 0, connectFlags);
			onMapListeners[onMapListeners.length - 1].handlerId = Signals.connectData(
				this,
				"map",
				cast(GCallback)&callBackMap,
				cast(void*)onMapListeners[onMapListeners.length - 1],
				cast(GClosureNotify)&callBackMapDestroy,
				connectFlags);
			return onMapListeners[onMapListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackMap(GtkWidget* widgetStruct,OnMapDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackMapDestroy(OnMapDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMap(wrapper);
		}

		protected void internalRemoveOnMap(OnMapDelegateWrapper source)
		{
			foreach(index, wrapper; onMapListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMapListeners[index] = null;
					onMapListeners = std.algorithm.remove(onMapListeners, index);
					break;
				}
			}
		}
		

		protected class OnMapEventDelegateWrapper
		{
			bool delegate(GdkEventAny*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventAny*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMapEventDelegateWrapper[] onMapEventListeners;

		/**
		 * The ::map-event signal will be emitted when the @widget's window is
		 * mapped. A window is mapped when it becomes visible on the screen.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventAny which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnMapEvent(bool delegate(GdkEventAny*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onMapEventListeners ~= new OnMapEventDelegateWrapper(dlg, 0, connectFlags);
			onMapEventListeners[onMapEventListeners.length - 1].handlerId = Signals.connectData(
				this,
				"map-event",
				cast(GCallback)&callBackMapEvent,
				cast(void*)onMapEventListeners[onMapEventListeners.length - 1],
				cast(GClosureNotify)&callBackMapEventDestroy,
				connectFlags);
			return onMapEventListeners[onMapEventListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackMapEvent(GtkWidget* widgetStruct, GdkEventAny* event,OnMapEventDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackMapEventDestroy(OnMapEventDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMapEvent(wrapper);
		}

		protected void internalRemoveOnMapEvent(OnMapEventDelegateWrapper source)
		{
			foreach(index, wrapper; onMapEventListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMapEventListeners[index] = null;
					onMapEventListeners = std.algorithm.remove(onMapEventListeners, index);
					break;
				}
			}
		}
		

		protected class OnMapEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMapEventGenericDelegateWrapper[] onMapEventGenericListeners;
		
		/**
		 * The ::map-event signal will be emitted when the @widget's window is
		 * mapped. A window is mapped when it becomes visible on the screen.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventAny which triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnMapEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onMapEventGenericListeners ~= new OnMapEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onMapEventGenericListeners[onMapEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"map-event",
				cast(GCallback)&callBackMapEventGeneric,
				cast(void*)onMapEventGenericListeners[onMapEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackMapEventGenericDestroy,
				connectFlags);
			return onMapEventGenericListeners[onMapEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackMapEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnMapEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackMapEventGenericDestroy(OnMapEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMapEventGeneric(wrapper);
		}
		protected void internalRemoveOnMapEventGeneric(OnMapEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onMapEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMapEventGenericListeners[index] = null;
					onMapEventGenericListeners = std.algorithm.remove(onMapEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnMnemonicActivateDelegateWrapper
		{
			bool delegate(bool, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(bool, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMnemonicActivateDelegateWrapper[] onMnemonicActivateListeners;

		/**
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnMnemonicActivate(bool delegate(bool, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onMnemonicActivateListeners ~= new OnMnemonicActivateDelegateWrapper(dlg, 0, connectFlags);
			onMnemonicActivateListeners[onMnemonicActivateListeners.length - 1].handlerId = Signals.connectData(
				this,
				"mnemonic-activate",
				cast(GCallback)&callBackMnemonicActivate,
				cast(void*)onMnemonicActivateListeners[onMnemonicActivateListeners.length - 1],
				cast(GClosureNotify)&callBackMnemonicActivateDestroy,
				connectFlags);
			return onMnemonicActivateListeners[onMnemonicActivateListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackMnemonicActivate(GtkWidget* widgetStruct, bool arg1,OnMnemonicActivateDelegateWrapper wrapper)
		{
			return wrapper.dlg(arg1, wrapper.outer);
		}
		
		extern(C) static void callBackMnemonicActivateDestroy(OnMnemonicActivateDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMnemonicActivate(wrapper);
		}

		protected void internalRemoveOnMnemonicActivate(OnMnemonicActivateDelegateWrapper source)
		{
			foreach(index, wrapper; onMnemonicActivateListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMnemonicActivateListeners[index] = null;
					onMnemonicActivateListeners = std.algorithm.remove(onMnemonicActivateListeners, index);
					break;
				}
			}
		}
		

		protected class OnMotionNotifyDelegateWrapper
		{
			bool delegate(GdkEventMotion*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventMotion*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMotionNotifyDelegateWrapper[] onMotionNotifyListeners;

		/**
		 * The ::motion-notify-event signal is emitted when the pointer moves
		 * over the widget's #GdkWindow.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget
		 * needs to enable the #GDK_POINTER_MOTION_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventMotion which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnMotionNotify(bool delegate(GdkEventMotion*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.POINTER_MOTION_MASK);
			onMotionNotifyListeners ~= new OnMotionNotifyDelegateWrapper(dlg, 0, connectFlags);
			onMotionNotifyListeners[onMotionNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"motion-notify-event",
				cast(GCallback)&callBackMotionNotify,
				cast(void*)onMotionNotifyListeners[onMotionNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackMotionNotifyDestroy,
				connectFlags);
			return onMotionNotifyListeners[onMotionNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackMotionNotify(GtkWidget* widgetStruct, GdkEventMotion* event,OnMotionNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackMotionNotifyDestroy(OnMotionNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMotionNotify(wrapper);
		}

		protected void internalRemoveOnMotionNotify(OnMotionNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onMotionNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMotionNotifyListeners[index] = null;
					onMotionNotifyListeners = std.algorithm.remove(onMotionNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnMotionNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMotionNotifyEventGenericDelegateWrapper[] onMotionNotifyEventGenericListeners;
		
		/**
		 * The ::motion-notify-event signal is emitted when the pointer moves
		 * over the widget's #GdkWindow.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget
		 * needs to enable the #GDK_POINTER_MOTION_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventMotion which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnMotionNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.POINTER_MOTION_MASK);
			onMotionNotifyEventGenericListeners ~= new OnMotionNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onMotionNotifyEventGenericListeners[onMotionNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"motion-notify-event",
				cast(GCallback)&callBackMotionNotifyEventGeneric,
				cast(void*)onMotionNotifyEventGenericListeners[onMotionNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackMotionNotifyEventGenericDestroy,
				connectFlags);
			return onMotionNotifyEventGenericListeners[onMotionNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackMotionNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnMotionNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackMotionNotifyEventGenericDestroy(OnMotionNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMotionNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnMotionNotifyEventGeneric(OnMotionNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onMotionNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMotionNotifyEventGenericListeners[index] = null;
					onMotionNotifyEventGenericListeners = std.algorithm.remove(onMotionNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnMoveFocusDelegateWrapper
		{
			void delegate(GtkDirectionType, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(GtkDirectionType, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnMoveFocusDelegateWrapper[] onMoveFocusListeners;

		/** */
		gulong addOnMoveFocus(void delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onMoveFocusListeners ~= new OnMoveFocusDelegateWrapper(dlg, 0, connectFlags);
			onMoveFocusListeners[onMoveFocusListeners.length - 1].handlerId = Signals.connectData(
				this,
				"move-focus",
				cast(GCallback)&callBackMoveFocus,
				cast(void*)onMoveFocusListeners[onMoveFocusListeners.length - 1],
				cast(GClosureNotify)&callBackMoveFocusDestroy,
				connectFlags);
			return onMoveFocusListeners[onMoveFocusListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackMoveFocus(GtkWidget* widgetStruct, GtkDirectionType direction,OnMoveFocusDelegateWrapper wrapper)
		{
			wrapper.dlg(direction, wrapper.outer);
		}
		
		extern(C) static void callBackMoveFocusDestroy(OnMoveFocusDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnMoveFocus(wrapper);
		}

		protected void internalRemoveOnMoveFocus(OnMoveFocusDelegateWrapper source)
		{
			foreach(index, wrapper; onMoveFocusListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onMoveFocusListeners[index] = null;
					onMoveFocusListeners = std.algorithm.remove(onMoveFocusListeners, index);
					break;
				}
			}
		}
		

		protected class OnParentSetDelegateWrapper
		{
			void delegate(Widget, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnParentSetDelegateWrapper[] onParentSetListeners;

		/**
		 * The ::parent-set signal is emitted when a new parent
		 * has been set on a widget.
		 *
		 * Params:
		 *     oldParent = the previous parent, or %NULL if the widget
		 *         just got its initial parent.
		 */
		gulong addOnParentSet(void delegate(Widget, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onParentSetListeners ~= new OnParentSetDelegateWrapper(dlg, 0, connectFlags);
			onParentSetListeners[onParentSetListeners.length - 1].handlerId = Signals.connectData(
				this,
				"parent-set",
				cast(GCallback)&callBackParentSet,
				cast(void*)onParentSetListeners[onParentSetListeners.length - 1],
				cast(GClosureNotify)&callBackParentSetDestroy,
				connectFlags);
			return onParentSetListeners[onParentSetListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackParentSet(GtkWidget* widgetStruct, GtkWidget* oldParent,OnParentSetDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(Widget)(oldParent), wrapper.outer);
		}
		
		extern(C) static void callBackParentSetDestroy(OnParentSetDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnParentSet(wrapper);
		}

		protected void internalRemoveOnParentSet(OnParentSetDelegateWrapper source)
		{
			foreach(index, wrapper; onParentSetListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onParentSetListeners[index] = null;
					onParentSetListeners = std.algorithm.remove(onParentSetListeners, index);
					break;
				}
			}
		}
		

		protected class OnPopupMenuDelegateWrapper
		{
			bool delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnPopupMenuDelegateWrapper[] onPopupMenuListeners;

		/**
		 * This signal gets emitted whenever a widget should pop up a context
		 * menu. This usually happens through the standard key binding mechanism;
		 * by pressing a certain key while a widget is focused, the user can cause
		 * the widget to pop up a menu.  For example, the #GtkEntry widget creates
		 * a menu with clipboard commands. See the
		 * [Popup Menu Migration Checklist][checklist-popup-menu]
		 * for an example of how to use this signal.
		 *
		 * Return: %TRUE if a menu was activated
		 */
		gulong addOnPopupMenu(bool delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onPopupMenuListeners ~= new OnPopupMenuDelegateWrapper(dlg, 0, connectFlags);
			onPopupMenuListeners[onPopupMenuListeners.length - 1].handlerId = Signals.connectData(
				this,
				"popup-menu",
				cast(GCallback)&callBackPopupMenu,
				cast(void*)onPopupMenuListeners[onPopupMenuListeners.length - 1],
				cast(GClosureNotify)&callBackPopupMenuDestroy,
				connectFlags);
			return onPopupMenuListeners[onPopupMenuListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackPopupMenu(GtkWidget* widgetStruct,OnPopupMenuDelegateWrapper wrapper)
		{
			return wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackPopupMenuDestroy(OnPopupMenuDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnPopupMenu(wrapper);
		}

		protected void internalRemoveOnPopupMenu(OnPopupMenuDelegateWrapper source)
		{
			foreach(index, wrapper; onPopupMenuListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onPopupMenuListeners[index] = null;
					onPopupMenuListeners = std.algorithm.remove(onPopupMenuListeners, index);
					break;
				}
			}
		}
		

		protected class OnPropertyNotifyDelegateWrapper
		{
			bool delegate(GdkEventProperty*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventProperty*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnPropertyNotifyDelegateWrapper[] onPropertyNotifyListeners;

		/**
		 * The ::property-notify-event signal will be emitted when a property on
		 * the @widget's window has been changed or deleted.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROPERTY_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventProperty which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnPropertyNotify(bool delegate(GdkEventProperty*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROPERTY_CHANGE_MASK);
			onPropertyNotifyListeners ~= new OnPropertyNotifyDelegateWrapper(dlg, 0, connectFlags);
			onPropertyNotifyListeners[onPropertyNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"property-notify-event",
				cast(GCallback)&callBackPropertyNotify,
				cast(void*)onPropertyNotifyListeners[onPropertyNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackPropertyNotifyDestroy,
				connectFlags);
			return onPropertyNotifyListeners[onPropertyNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackPropertyNotify(GtkWidget* widgetStruct, GdkEventProperty* event,OnPropertyNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackPropertyNotifyDestroy(OnPropertyNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnPropertyNotify(wrapper);
		}

		protected void internalRemoveOnPropertyNotify(OnPropertyNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onPropertyNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onPropertyNotifyListeners[index] = null;
					onPropertyNotifyListeners = std.algorithm.remove(onPropertyNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnPropertyNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnPropertyNotifyEventGenericDelegateWrapper[] onPropertyNotifyEventGenericListeners;
		
		/**
		 * The ::property-notify-event signal will be emitted when a property on
		 * the @widget's window has been changed or deleted.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROPERTY_CHANGE_MASK mask.
		 *
		 * Params:
		 *     event = the #GdkEventProperty which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnPropertyNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROPERTY_CHANGE_MASK);
			onPropertyNotifyEventGenericListeners ~= new OnPropertyNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onPropertyNotifyEventGenericListeners[onPropertyNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"property-notify-event",
				cast(GCallback)&callBackPropertyNotifyEventGeneric,
				cast(void*)onPropertyNotifyEventGenericListeners[onPropertyNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackPropertyNotifyEventGenericDestroy,
				connectFlags);
			return onPropertyNotifyEventGenericListeners[onPropertyNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackPropertyNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnPropertyNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackPropertyNotifyEventGenericDestroy(OnPropertyNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnPropertyNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnPropertyNotifyEventGeneric(OnPropertyNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onPropertyNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onPropertyNotifyEventGenericListeners[index] = null;
					onPropertyNotifyEventGenericListeners = std.algorithm.remove(onPropertyNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnProximityInDelegateWrapper
		{
			bool delegate(GdkEventProximity*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventProximity*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnProximityInDelegateWrapper[] onProximityInListeners;

		/**
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROXIMITY_IN_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventProximity which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnProximityIn(bool delegate(GdkEventProximity*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROXIMITY_IN_MASK);
			onProximityInListeners ~= new OnProximityInDelegateWrapper(dlg, 0, connectFlags);
			onProximityInListeners[onProximityInListeners.length - 1].handlerId = Signals.connectData(
				this,
				"proximity-in-event",
				cast(GCallback)&callBackProximityIn,
				cast(void*)onProximityInListeners[onProximityInListeners.length - 1],
				cast(GClosureNotify)&callBackProximityInDestroy,
				connectFlags);
			return onProximityInListeners[onProximityInListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackProximityIn(GtkWidget* widgetStruct, GdkEventProximity* event,OnProximityInDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackProximityInDestroy(OnProximityInDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnProximityIn(wrapper);
		}

		protected void internalRemoveOnProximityIn(OnProximityInDelegateWrapper source)
		{
			foreach(index, wrapper; onProximityInListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onProximityInListeners[index] = null;
					onProximityInListeners = std.algorithm.remove(onProximityInListeners, index);
					break;
				}
			}
		}
		

		protected class OnProximityInEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnProximityInEventGenericDelegateWrapper[] onProximityInEventGenericListeners;
		
		/**
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROXIMITY_IN_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventProximity which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnProximityIn(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROXIMITY_IN_MASK);
			onProximityInEventGenericListeners ~= new OnProximityInEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onProximityInEventGenericListeners[onProximityInEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"proximity-in-event",
				cast(GCallback)&callBackProximityInEventGeneric,
				cast(void*)onProximityInEventGenericListeners[onProximityInEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackProximityInEventGenericDestroy,
				connectFlags);
			return onProximityInEventGenericListeners[onProximityInEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackProximityInEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnProximityInEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackProximityInEventGenericDestroy(OnProximityInEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnProximityInEventGeneric(wrapper);
		}
		protected void internalRemoveOnProximityInEventGeneric(OnProximityInEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onProximityInEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onProximityInEventGenericListeners[index] = null;
					onProximityInEventGenericListeners = std.algorithm.remove(onProximityInEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnProximityOutDelegateWrapper
		{
			bool delegate(GdkEventProximity*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventProximity*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnProximityOutDelegateWrapper[] onProximityOutListeners;

		/**
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROXIMITY_OUT_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventProximity which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnProximityOut(bool delegate(GdkEventProximity*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROXIMITY_OUT_MASK);
			onProximityOutListeners ~= new OnProximityOutDelegateWrapper(dlg, 0, connectFlags);
			onProximityOutListeners[onProximityOutListeners.length - 1].handlerId = Signals.connectData(
				this,
				"proximity-out-event",
				cast(GCallback)&callBackProximityOut,
				cast(void*)onProximityOutListeners[onProximityOutListeners.length - 1],
				cast(GClosureNotify)&callBackProximityOutDestroy,
				connectFlags);
			return onProximityOutListeners[onProximityOutListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackProximityOut(GtkWidget* widgetStruct, GdkEventProximity* event,OnProximityOutDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackProximityOutDestroy(OnProximityOutDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnProximityOut(wrapper);
		}

		protected void internalRemoveOnProximityOut(OnProximityOutDelegateWrapper source)
		{
			foreach(index, wrapper; onProximityOutListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onProximityOutListeners[index] = null;
					onProximityOutListeners = std.algorithm.remove(onProximityOutListeners, index);
					break;
				}
			}
		}
		

		protected class OnProximityOutEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnProximityOutEventGenericDelegateWrapper[] onProximityOutEventGenericListeners;
		
		/**
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_PROXIMITY_OUT_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventProximity which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnProximityOut(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.PROXIMITY_OUT_MASK);
			onProximityOutEventGenericListeners ~= new OnProximityOutEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onProximityOutEventGenericListeners[onProximityOutEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"proximity-out-event",
				cast(GCallback)&callBackProximityOutEventGeneric,
				cast(void*)onProximityOutEventGenericListeners[onProximityOutEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackProximityOutEventGenericDestroy,
				connectFlags);
			return onProximityOutEventGenericListeners[onProximityOutEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackProximityOutEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnProximityOutEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackProximityOutEventGenericDestroy(OnProximityOutEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnProximityOutEventGeneric(wrapper);
		}
		protected void internalRemoveOnProximityOutEventGeneric(OnProximityOutEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onProximityOutEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onProximityOutEventGenericListeners[index] = null;
					onProximityOutEventGenericListeners = std.algorithm.remove(onProximityOutEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnQueryTooltipDelegateWrapper
		{
			bool delegate(int, int, bool, Tooltip, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(int, int, bool, Tooltip, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnQueryTooltipDelegateWrapper[] onQueryTooltipListeners;

		/**
		 * Emitted when #GtkWidget:has-tooltip is %TRUE and the hover timeout
		 * has expired with the cursor hovering "above" @widget; or emitted when @widget got
		 * focus in keyboard mode.
		 *
		 * Using the given coordinates, the signal handler should determine
		 * whether a tooltip should be shown for @widget. If this is the case
		 * %TRUE should be returned, %FALSE otherwise.  Note that if
		 * @keyboard_mode is %TRUE, the values of @x and @y are undefined and
		 * should not be used.
		 *
		 * The signal handler is free to manipulate @tooltip with the therefore
		 * destined function calls.
		 *
		 * Params:
		 *     x = the x coordinate of the cursor position where the request has
		 *         been emitted, relative to @widget's left side
		 *     y = the y coordinate of the cursor position where the request has
		 *         been emitted, relative to @widget's top
		 *     keyboardMode = %TRUE if the tooltip was triggered using the keyboard
		 *     tooltip = a #GtkTooltip
		 *
		 * Return: %TRUE if @tooltip should be shown right now, %FALSE otherwise.
		 *
		 * Since: 2.12
		 */
		gulong addOnQueryTooltip(bool delegate(int, int, bool, Tooltip, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onQueryTooltipListeners ~= new OnQueryTooltipDelegateWrapper(dlg, 0, connectFlags);
			onQueryTooltipListeners[onQueryTooltipListeners.length - 1].handlerId = Signals.connectData(
				this,
				"query-tooltip",
				cast(GCallback)&callBackQueryTooltip,
				cast(void*)onQueryTooltipListeners[onQueryTooltipListeners.length - 1],
				cast(GClosureNotify)&callBackQueryTooltipDestroy,
				connectFlags);
			return onQueryTooltipListeners[onQueryTooltipListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackQueryTooltip(GtkWidget* widgetStruct, int x, int y, bool keyboardMode, GtkTooltip* tooltip,OnQueryTooltipDelegateWrapper wrapper)
		{
			return wrapper.dlg(x, y, keyboardMode, ObjectG.getDObject!(Tooltip)(tooltip), wrapper.outer);
		}
		
		extern(C) static void callBackQueryTooltipDestroy(OnQueryTooltipDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnQueryTooltip(wrapper);
		}

		protected void internalRemoveOnQueryTooltip(OnQueryTooltipDelegateWrapper source)
		{
			foreach(index, wrapper; onQueryTooltipListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onQueryTooltipListeners[index] = null;
					onQueryTooltipListeners = std.algorithm.remove(onQueryTooltipListeners, index);
					break;
				}
			}
		}
		

		protected class OnRealizeDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnRealizeDelegateWrapper[] onRealizeListeners;

		/**
		 * The ::realize signal is emitted when @widget is associated with a
		 * #GdkWindow, which means that gtk_widget_realize() has been called or the
		 * widget has been mapped (that is, it is going to be drawn).
		 */
		gulong addOnRealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onRealizeListeners ~= new OnRealizeDelegateWrapper(dlg, 0, connectFlags);
			onRealizeListeners[onRealizeListeners.length - 1].handlerId = Signals.connectData(
				this,
				"realize",
				cast(GCallback)&callBackRealize,
				cast(void*)onRealizeListeners[onRealizeListeners.length - 1],
				cast(GClosureNotify)&callBackRealizeDestroy,
				connectFlags);
			return onRealizeListeners[onRealizeListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackRealize(GtkWidget* widgetStruct,OnRealizeDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackRealizeDestroy(OnRealizeDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnRealize(wrapper);
		}

		protected void internalRemoveOnRealize(OnRealizeDelegateWrapper source)
		{
			foreach(index, wrapper; onRealizeListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onRealizeListeners[index] = null;
					onRealizeListeners = std.algorithm.remove(onRealizeListeners, index);
					break;
				}
			}
		}
		

		protected class OnScreenChangedDelegateWrapper
		{
			void delegate(Screen, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Screen, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnScreenChangedDelegateWrapper[] onScreenChangedListeners;

		/**
		 * The ::screen-changed signal gets emitted when the
		 * screen of a widget has changed.
		 *
		 * Params:
		 *     previousScreen = the previous screen, or %NULL if the
		 *         widget was not associated with a screen before
		 */
		gulong addOnScreenChanged(void delegate(Screen, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onScreenChangedListeners ~= new OnScreenChangedDelegateWrapper(dlg, 0, connectFlags);
			onScreenChangedListeners[onScreenChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"screen-changed",
				cast(GCallback)&callBackScreenChanged,
				cast(void*)onScreenChangedListeners[onScreenChangedListeners.length - 1],
				cast(GClosureNotify)&callBackScreenChangedDestroy,
				connectFlags);
			return onScreenChangedListeners[onScreenChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackScreenChanged(GtkWidget* widgetStruct, GdkScreen* previousScreen,OnScreenChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(Screen)(previousScreen), wrapper.outer);
		}
		
		extern(C) static void callBackScreenChangedDestroy(OnScreenChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnScreenChanged(wrapper);
		}

		protected void internalRemoveOnScreenChanged(OnScreenChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onScreenChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onScreenChangedListeners[index] = null;
					onScreenChangedListeners = std.algorithm.remove(onScreenChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnScrollDelegateWrapper
		{
			bool delegate(GdkEventScroll*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventScroll*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnScrollDelegateWrapper[] onScrollListeners;

		/**
		 * The ::scroll-event signal is emitted when a button in the 4 to 7
		 * range is pressed. Wheel mice are usually configured to generate
		 * button press events for buttons 4 and 5 when the wheel is turned.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_SCROLL_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventScroll which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnScroll(bool delegate(GdkEventScroll*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.SCROLL_MASK);
			onScrollListeners ~= new OnScrollDelegateWrapper(dlg, 0, connectFlags);
			onScrollListeners[onScrollListeners.length - 1].handlerId = Signals.connectData(
				this,
				"scroll-event",
				cast(GCallback)&callBackScroll,
				cast(void*)onScrollListeners[onScrollListeners.length - 1],
				cast(GClosureNotify)&callBackScrollDestroy,
				connectFlags);
			return onScrollListeners[onScrollListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackScroll(GtkWidget* widgetStruct, GdkEventScroll* event,OnScrollDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackScrollDestroy(OnScrollDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnScroll(wrapper);
		}

		protected void internalRemoveOnScroll(OnScrollDelegateWrapper source)
		{
			foreach(index, wrapper; onScrollListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onScrollListeners[index] = null;
					onScrollListeners = std.algorithm.remove(onScrollListeners, index);
					break;
				}
			}
		}
		

		protected class OnScrollEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnScrollEventGenericDelegateWrapper[] onScrollEventGenericListeners;
		
		/**
		 * The ::scroll-event signal is emitted when a button in the 4 to 7
		 * range is pressed. Wheel mice are usually configured to generate
		 * button press events for buttons 4 and 5 when the wheel is turned.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_SCROLL_MASK mask.
		 *
		 * This signal will be sent to the grab widget if there is one.
		 *
		 * Params:
		 *     event = the #GdkEventScroll which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnScroll(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.SCROLL_MASK);
			onScrollEventGenericListeners ~= new OnScrollEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onScrollEventGenericListeners[onScrollEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"scroll-event",
				cast(GCallback)&callBackScrollEventGeneric,
				cast(void*)onScrollEventGenericListeners[onScrollEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackScrollEventGenericDestroy,
				connectFlags);
			return onScrollEventGenericListeners[onScrollEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackScrollEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnScrollEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackScrollEventGenericDestroy(OnScrollEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnScrollEventGeneric(wrapper);
		}
		protected void internalRemoveOnScrollEventGeneric(OnScrollEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onScrollEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onScrollEventGenericListeners[index] = null;
					onScrollEventGenericListeners = std.algorithm.remove(onScrollEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionClearDelegateWrapper
		{
			bool delegate(GdkEventSelection*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventSelection*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionClearDelegateWrapper[] onSelectionClearListeners;

		/**
		 * The ::selection-clear-event signal will be emitted when the
		 * the @widget's window has lost ownership of a selection.
		 *
		 * Params:
		 *     event = the #GdkEventSelection which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnSelectionClear(bool delegate(GdkEventSelection*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionClearListeners ~= new OnSelectionClearDelegateWrapper(dlg, 0, connectFlags);
			onSelectionClearListeners[onSelectionClearListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-clear-event",
				cast(GCallback)&callBackSelectionClear,
				cast(void*)onSelectionClearListeners[onSelectionClearListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionClearDestroy,
				connectFlags);
			return onSelectionClearListeners[onSelectionClearListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionClear(GtkWidget* widgetStruct, GdkEventSelection* event,OnSelectionClearDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackSelectionClearDestroy(OnSelectionClearDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionClear(wrapper);
		}

		protected void internalRemoveOnSelectionClear(OnSelectionClearDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionClearListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionClearListeners[index] = null;
					onSelectionClearListeners = std.algorithm.remove(onSelectionClearListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionClearEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionClearEventGenericDelegateWrapper[] onSelectionClearEventGenericListeners;
		
		/**
		 * The ::selection-clear-event signal will be emitted when the
		 * the @widget's window has lost ownership of a selection.
		 *
		 * Params:
		 *     event = the #GdkEventSelection which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnSelectionClear(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionClearEventGenericListeners ~= new OnSelectionClearEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onSelectionClearEventGenericListeners[onSelectionClearEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-clear-event",
				cast(GCallback)&callBackSelectionClearEventGeneric,
				cast(void*)onSelectionClearEventGenericListeners[onSelectionClearEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionClearEventGenericDestroy,
				connectFlags);
			return onSelectionClearEventGenericListeners[onSelectionClearEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionClearEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnSelectionClearEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackSelectionClearEventGenericDestroy(OnSelectionClearEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionClearEventGeneric(wrapper);
		}
		protected void internalRemoveOnSelectionClearEventGeneric(OnSelectionClearEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionClearEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionClearEventGenericListeners[index] = null;
					onSelectionClearEventGenericListeners = std.algorithm.remove(onSelectionClearEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionGetDelegateWrapper
		{
			void delegate(SelectionData, uint, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(SelectionData, uint, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionGetDelegateWrapper[] onSelectionGetListeners;

		/** */
		gulong addOnSelectionGet(void delegate(SelectionData, uint, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionGetListeners ~= new OnSelectionGetDelegateWrapper(dlg, 0, connectFlags);
			onSelectionGetListeners[onSelectionGetListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-get",
				cast(GCallback)&callBackSelectionGet,
				cast(void*)onSelectionGetListeners[onSelectionGetListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionGetDestroy,
				connectFlags);
			return onSelectionGetListeners[onSelectionGetListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackSelectionGet(GtkWidget* widgetStruct, GtkSelectionData* data, uint info, uint time,OnSelectionGetDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(SelectionData)(data), info, time, wrapper.outer);
		}
		
		extern(C) static void callBackSelectionGetDestroy(OnSelectionGetDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionGet(wrapper);
		}

		protected void internalRemoveOnSelectionGet(OnSelectionGetDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionGetListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionGetListeners[index] = null;
					onSelectionGetListeners = std.algorithm.remove(onSelectionGetListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionNotifyDelegateWrapper
		{
			bool delegate(GdkEventSelection*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventSelection*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionNotifyDelegateWrapper[] onSelectionNotifyListeners;

		/**
		 * Return: %TRUE to stop other handlers from being invoked for the event. %FALSE to propagate the event further.
		 */
		gulong addOnSelectionNotify(bool delegate(GdkEventSelection*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionNotifyListeners ~= new OnSelectionNotifyDelegateWrapper(dlg, 0, connectFlags);
			onSelectionNotifyListeners[onSelectionNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-notify-event",
				cast(GCallback)&callBackSelectionNotify,
				cast(void*)onSelectionNotifyListeners[onSelectionNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionNotifyDestroy,
				connectFlags);
			return onSelectionNotifyListeners[onSelectionNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionNotify(GtkWidget* widgetStruct, GdkEventSelection* event,OnSelectionNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackSelectionNotifyDestroy(OnSelectionNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionNotify(wrapper);
		}

		protected void internalRemoveOnSelectionNotify(OnSelectionNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionNotifyListeners[index] = null;
					onSelectionNotifyListeners = std.algorithm.remove(onSelectionNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionNotifyEventGenericDelegateWrapper[] onSelectionNotifyEventGenericListeners;
		
		/**
		 * Return: %TRUE to stop other handlers from being invoked for the event. %FALSE to propagate the event further.
		 */
		gulong addOnSelectionNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionNotifyEventGenericListeners ~= new OnSelectionNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onSelectionNotifyEventGenericListeners[onSelectionNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-notify-event",
				cast(GCallback)&callBackSelectionNotifyEventGeneric,
				cast(void*)onSelectionNotifyEventGenericListeners[onSelectionNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionNotifyEventGenericDestroy,
				connectFlags);
			return onSelectionNotifyEventGenericListeners[onSelectionNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnSelectionNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackSelectionNotifyEventGenericDestroy(OnSelectionNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnSelectionNotifyEventGeneric(OnSelectionNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionNotifyEventGenericListeners[index] = null;
					onSelectionNotifyEventGenericListeners = std.algorithm.remove(onSelectionNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionReceivedDelegateWrapper
		{
			void delegate(SelectionData, uint, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(SelectionData, uint, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionReceivedDelegateWrapper[] onSelectionReceivedListeners;

		/** */
		gulong addOnSelectionReceived(void delegate(SelectionData, uint, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionReceivedListeners ~= new OnSelectionReceivedDelegateWrapper(dlg, 0, connectFlags);
			onSelectionReceivedListeners[onSelectionReceivedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-received",
				cast(GCallback)&callBackSelectionReceived,
				cast(void*)onSelectionReceivedListeners[onSelectionReceivedListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionReceivedDestroy,
				connectFlags);
			return onSelectionReceivedListeners[onSelectionReceivedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackSelectionReceived(GtkWidget* widgetStruct, GtkSelectionData* data, uint time,OnSelectionReceivedDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(SelectionData)(data), time, wrapper.outer);
		}
		
		extern(C) static void callBackSelectionReceivedDestroy(OnSelectionReceivedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionReceived(wrapper);
		}

		protected void internalRemoveOnSelectionReceived(OnSelectionReceivedDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionReceivedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionReceivedListeners[index] = null;
					onSelectionReceivedListeners = std.algorithm.remove(onSelectionReceivedListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionRequestDelegateWrapper
		{
			bool delegate(GdkEventSelection*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventSelection*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionRequestDelegateWrapper[] onSelectionRequestListeners;

		/**
		 * The ::selection-request-event signal will be emitted when
		 * another client requests ownership of the selection owned by
		 * the @widget's window.
		 *
		 * Params:
		 *     event = the #GdkEventSelection which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnSelectionRequest(bool delegate(GdkEventSelection*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionRequestListeners ~= new OnSelectionRequestDelegateWrapper(dlg, 0, connectFlags);
			onSelectionRequestListeners[onSelectionRequestListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-request-event",
				cast(GCallback)&callBackSelectionRequest,
				cast(void*)onSelectionRequestListeners[onSelectionRequestListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionRequestDestroy,
				connectFlags);
			return onSelectionRequestListeners[onSelectionRequestListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionRequest(GtkWidget* widgetStruct, GdkEventSelection* event,OnSelectionRequestDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackSelectionRequestDestroy(OnSelectionRequestDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionRequest(wrapper);
		}

		protected void internalRemoveOnSelectionRequest(OnSelectionRequestDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionRequestListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionRequestListeners[index] = null;
					onSelectionRequestListeners = std.algorithm.remove(onSelectionRequestListeners, index);
					break;
				}
			}
		}
		

		protected class OnSelectionRequestEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSelectionRequestEventGenericDelegateWrapper[] onSelectionRequestEventGenericListeners;
		
		/**
		 * The ::selection-request-event signal will be emitted when
		 * another client requests ownership of the selection owned by
		 * the @widget's window.
		 *
		 * Params:
		 *     event = the #GdkEventSelection which triggered
		 *         this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnSelectionRequest(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSelectionRequestEventGenericListeners ~= new OnSelectionRequestEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onSelectionRequestEventGenericListeners[onSelectionRequestEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"selection-request-event",
				cast(GCallback)&callBackSelectionRequestEventGeneric,
				cast(void*)onSelectionRequestEventGenericListeners[onSelectionRequestEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackSelectionRequestEventGenericDestroy,
				connectFlags);
			return onSelectionRequestEventGenericListeners[onSelectionRequestEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackSelectionRequestEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnSelectionRequestEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackSelectionRequestEventGenericDestroy(OnSelectionRequestEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSelectionRequestEventGeneric(wrapper);
		}
		protected void internalRemoveOnSelectionRequestEventGeneric(OnSelectionRequestEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onSelectionRequestEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSelectionRequestEventGenericListeners[index] = null;
					onSelectionRequestEventGenericListeners = std.algorithm.remove(onSelectionRequestEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnShowDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnShowDelegateWrapper[] onShowListeners;

		/**
		 * The ::show signal is emitted when @widget is shown, for example with
		 * gtk_widget_show().
		 */
		gulong addOnShow(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onShowListeners ~= new OnShowDelegateWrapper(dlg, 0, connectFlags);
			onShowListeners[onShowListeners.length - 1].handlerId = Signals.connectData(
				this,
				"show",
				cast(GCallback)&callBackShow,
				cast(void*)onShowListeners[onShowListeners.length - 1],
				cast(GClosureNotify)&callBackShowDestroy,
				connectFlags);
			return onShowListeners[onShowListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackShow(GtkWidget* widgetStruct,OnShowDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackShowDestroy(OnShowDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnShow(wrapper);
		}

		protected void internalRemoveOnShow(OnShowDelegateWrapper source)
		{
			foreach(index, wrapper; onShowListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onShowListeners[index] = null;
					onShowListeners = std.algorithm.remove(onShowListeners, index);
					break;
				}
			}
		}
		

		protected class OnShowHelpDelegateWrapper
		{
			bool delegate(GtkWidgetHelpType, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GtkWidgetHelpType, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnShowHelpDelegateWrapper[] onShowHelpListeners;

		/**
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnShowHelp(bool delegate(GtkWidgetHelpType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onShowHelpListeners ~= new OnShowHelpDelegateWrapper(dlg, 0, connectFlags);
			onShowHelpListeners[onShowHelpListeners.length - 1].handlerId = Signals.connectData(
				this,
				"show-help",
				cast(GCallback)&callBackShowHelp,
				cast(void*)onShowHelpListeners[onShowHelpListeners.length - 1],
				cast(GClosureNotify)&callBackShowHelpDestroy,
				connectFlags);
			return onShowHelpListeners[onShowHelpListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackShowHelp(GtkWidget* widgetStruct, GtkWidgetHelpType helpType,OnShowHelpDelegateWrapper wrapper)
		{
			return wrapper.dlg(helpType, wrapper.outer);
		}
		
		extern(C) static void callBackShowHelpDestroy(OnShowHelpDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnShowHelp(wrapper);
		}

		protected void internalRemoveOnShowHelp(OnShowHelpDelegateWrapper source)
		{
			foreach(index, wrapper; onShowHelpListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onShowHelpListeners[index] = null;
					onShowHelpListeners = std.algorithm.remove(onShowHelpListeners, index);
					break;
				}
			}
		}
		

		protected class OnSizeAllocateDelegateWrapper
		{
			void delegate(Allocation, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Allocation, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnSizeAllocateDelegateWrapper[] onSizeAllocateListeners;

		/** */
		gulong addOnSizeAllocate(void delegate(Allocation, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onSizeAllocateListeners ~= new OnSizeAllocateDelegateWrapper(dlg, 0, connectFlags);
			onSizeAllocateListeners[onSizeAllocateListeners.length - 1].handlerId = Signals.connectData(
				this,
				"size-allocate",
				cast(GCallback)&callBackSizeAllocate,
				cast(void*)onSizeAllocateListeners[onSizeAllocateListeners.length - 1],
				cast(GClosureNotify)&callBackSizeAllocateDestroy,
				connectFlags);
			return onSizeAllocateListeners[onSizeAllocateListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackSizeAllocate(GtkWidget* widgetStruct, Allocation allocation,OnSizeAllocateDelegateWrapper wrapper)
		{
			wrapper.dlg(allocation, wrapper.outer);
		}
		
		extern(C) static void callBackSizeAllocateDestroy(OnSizeAllocateDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnSizeAllocate(wrapper);
		}

		protected void internalRemoveOnSizeAllocate(OnSizeAllocateDelegateWrapper source)
		{
			foreach(index, wrapper; onSizeAllocateListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onSizeAllocateListeners[index] = null;
					onSizeAllocateListeners = std.algorithm.remove(onSizeAllocateListeners, index);
					break;
				}
			}
		}
		

		protected class OnStateChangedDelegateWrapper
		{
			void delegate(GtkStateType, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(GtkStateType, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnStateChangedDelegateWrapper[] onStateChangedListeners;

		/**
		 * The ::state-changed signal is emitted when the widget state changes.
		 * See gtk_widget_get_state().
		 *
		 * Deprecated: Use #GtkWidget::state-flags-changed instead.
		 *
		 * Params:
		 *     state = the previous state
		 */
		gulong addOnStateChanged(void delegate(GtkStateType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onStateChangedListeners ~= new OnStateChangedDelegateWrapper(dlg, 0, connectFlags);
			onStateChangedListeners[onStateChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"state-changed",
				cast(GCallback)&callBackStateChanged,
				cast(void*)onStateChangedListeners[onStateChangedListeners.length - 1],
				cast(GClosureNotify)&callBackStateChangedDestroy,
				connectFlags);
			return onStateChangedListeners[onStateChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackStateChanged(GtkWidget* widgetStruct, GtkStateType state,OnStateChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(state, wrapper.outer);
		}
		
		extern(C) static void callBackStateChangedDestroy(OnStateChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnStateChanged(wrapper);
		}

		protected void internalRemoveOnStateChanged(OnStateChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onStateChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onStateChangedListeners[index] = null;
					onStateChangedListeners = std.algorithm.remove(onStateChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnStateFlagsChangedDelegateWrapper
		{
			void delegate(GtkStateFlags, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(GtkStateFlags, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnStateFlagsChangedDelegateWrapper[] onStateFlagsChangedListeners;

		/**
		 * The ::state-flags-changed signal is emitted when the widget state
		 * changes, see gtk_widget_get_state_flags().
		 *
		 * Params:
		 *     flags = The previous state flags.
		 *
		 * Since: 3.0
		 */
		gulong addOnStateFlagsChanged(void delegate(GtkStateFlags, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onStateFlagsChangedListeners ~= new OnStateFlagsChangedDelegateWrapper(dlg, 0, connectFlags);
			onStateFlagsChangedListeners[onStateFlagsChangedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"state-flags-changed",
				cast(GCallback)&callBackStateFlagsChanged,
				cast(void*)onStateFlagsChangedListeners[onStateFlagsChangedListeners.length - 1],
				cast(GClosureNotify)&callBackStateFlagsChangedDestroy,
				connectFlags);
			return onStateFlagsChangedListeners[onStateFlagsChangedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackStateFlagsChanged(GtkWidget* widgetStruct, GtkStateFlags flags,OnStateFlagsChangedDelegateWrapper wrapper)
		{
			wrapper.dlg(flags, wrapper.outer);
		}
		
		extern(C) static void callBackStateFlagsChangedDestroy(OnStateFlagsChangedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnStateFlagsChanged(wrapper);
		}

		protected void internalRemoveOnStateFlagsChanged(OnStateFlagsChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onStateFlagsChangedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onStateFlagsChangedListeners[index] = null;
					onStateFlagsChangedListeners = std.algorithm.remove(onStateFlagsChangedListeners, index);
					break;
				}
			}
		}
		

		protected class OnStyleSetDelegateWrapper
		{
			void delegate(Style, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Style, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnStyleSetDelegateWrapper[] onStyleSetListeners;

		/**
		 * The ::style-set signal is emitted when a new style has been set
		 * on a widget. Note that style-modifying functions like
		 * gtk_widget_modify_base() also cause this signal to be emitted.
		 *
		 * Note that this signal is emitted for changes to the deprecated
		 * #GtkStyle. To track changes to the #GtkStyleContext associated
		 * with a widget, use the #GtkWidget::style-updated signal.
		 *
		 * Deprecated: Use the #GtkWidget::style-updated signal
		 *
		 * Params:
		 *     previousStyle = the previous style, or %NULL if the widget
		 *         just got its initial style
		 */
		gulong addOnStyleSet(void delegate(Style, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onStyleSetListeners ~= new OnStyleSetDelegateWrapper(dlg, 0, connectFlags);
			onStyleSetListeners[onStyleSetListeners.length - 1].handlerId = Signals.connectData(
				this,
				"style-set",
				cast(GCallback)&callBackStyleSet,
				cast(void*)onStyleSetListeners[onStyleSetListeners.length - 1],
				cast(GClosureNotify)&callBackStyleSetDestroy,
				connectFlags);
			return onStyleSetListeners[onStyleSetListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackStyleSet(GtkWidget* widgetStruct, GtkStyle* previousStyle,OnStyleSetDelegateWrapper wrapper)
		{
			wrapper.dlg(ObjectG.getDObject!(Style)(previousStyle), wrapper.outer);
		}
		
		extern(C) static void callBackStyleSetDestroy(OnStyleSetDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnStyleSet(wrapper);
		}

		protected void internalRemoveOnStyleSet(OnStyleSetDelegateWrapper source)
		{
			foreach(index, wrapper; onStyleSetListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onStyleSetListeners[index] = null;
					onStyleSetListeners = std.algorithm.remove(onStyleSetListeners, index);
					break;
				}
			}
		}
		

		protected class OnStyleUpdatedDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnStyleUpdatedDelegateWrapper[] onStyleUpdatedListeners;

		/**
		 * The ::style-updated signal is a convenience signal that is emitted when the
		 * #GtkStyleContext::changed signal is emitted on the @widget's associated
		 * #GtkStyleContext as returned by gtk_widget_get_style_context().
		 *
		 * Note that style-modifying functions like gtk_widget_override_color() also
		 * cause this signal to be emitted.
		 *
		 * Since: 3.0
		 */
		gulong addOnStyleUpdated(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onStyleUpdatedListeners ~= new OnStyleUpdatedDelegateWrapper(dlg, 0, connectFlags);
			onStyleUpdatedListeners[onStyleUpdatedListeners.length - 1].handlerId = Signals.connectData(
				this,
				"style-updated",
				cast(GCallback)&callBackStyleUpdated,
				cast(void*)onStyleUpdatedListeners[onStyleUpdatedListeners.length - 1],
				cast(GClosureNotify)&callBackStyleUpdatedDestroy,
				connectFlags);
			return onStyleUpdatedListeners[onStyleUpdatedListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackStyleUpdated(GtkWidget* widgetStruct,OnStyleUpdatedDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackStyleUpdatedDestroy(OnStyleUpdatedDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnStyleUpdated(wrapper);
		}

		protected void internalRemoveOnStyleUpdated(OnStyleUpdatedDelegateWrapper source)
		{
			foreach(index, wrapper; onStyleUpdatedListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onStyleUpdatedListeners[index] = null;
					onStyleUpdatedListeners = std.algorithm.remove(onStyleUpdatedListeners, index);
					break;
				}
			}
		}
		

		protected class OnTouchDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnTouchDelegateWrapper[] onTouchListeners;

		/** */
		gulong addOnTouch(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onTouchListeners ~= new OnTouchDelegateWrapper(dlg, 0, connectFlags);
			onTouchListeners[onTouchListeners.length - 1].handlerId = Signals.connectData(
				this,
				"touch-event",
				cast(GCallback)&callBackTouch,
				cast(void*)onTouchListeners[onTouchListeners.length - 1],
				cast(GClosureNotify)&callBackTouchDestroy,
				connectFlags);
			return onTouchListeners[onTouchListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackTouch(GtkWidget* widgetStruct, GdkEvent* object,OnTouchDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(object), wrapper.outer);
		}
		
		extern(C) static void callBackTouchDestroy(OnTouchDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnTouch(wrapper);
		}

		protected void internalRemoveOnTouch(OnTouchDelegateWrapper source)
		{
			foreach(index, wrapper; onTouchListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onTouchListeners[index] = null;
					onTouchListeners = std.algorithm.remove(onTouchListeners, index);
					break;
				}
			}
		}
		

		protected class OnUnmapDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnUnmapDelegateWrapper[] onUnmapListeners;

		/**
		 * The ::unmap signal is emitted when @widget is going to be unmapped, which
		 * means that either it or any of its parents up to the toplevel widget have
		 * been set as hidden.
		 *
		 * As ::unmap indicates that a widget will not be shown any longer, it can be
		 * used to, for example, stop an animation on the widget.
		 */
		gulong addOnUnmap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onUnmapListeners ~= new OnUnmapDelegateWrapper(dlg, 0, connectFlags);
			onUnmapListeners[onUnmapListeners.length - 1].handlerId = Signals.connectData(
				this,
				"unmap",
				cast(GCallback)&callBackUnmap,
				cast(void*)onUnmapListeners[onUnmapListeners.length - 1],
				cast(GClosureNotify)&callBackUnmapDestroy,
				connectFlags);
			return onUnmapListeners[onUnmapListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackUnmap(GtkWidget* widgetStruct,OnUnmapDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackUnmapDestroy(OnUnmapDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnUnmap(wrapper);
		}

		protected void internalRemoveOnUnmap(OnUnmapDelegateWrapper source)
		{
			foreach(index, wrapper; onUnmapListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onUnmapListeners[index] = null;
					onUnmapListeners = std.algorithm.remove(onUnmapListeners, index);
					break;
				}
			}
		}
		

		protected class OnUnmapEventDelegateWrapper
		{
			bool delegate(GdkEventAny*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventAny*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnUnmapEventDelegateWrapper[] onUnmapEventListeners;

		/**
		 * The ::unmap-event signal will be emitted when the @widget's window is
		 * unmapped. A window is unmapped when it becomes invisible on the screen.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventAny which triggered this signal
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnUnmapEvent(bool delegate(GdkEventAny*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onUnmapEventListeners ~= new OnUnmapEventDelegateWrapper(dlg, 0, connectFlags);
			onUnmapEventListeners[onUnmapEventListeners.length - 1].handlerId = Signals.connectData(
				this,
				"unmap-event",
				cast(GCallback)&callBackUnmapEvent,
				cast(void*)onUnmapEventListeners[onUnmapEventListeners.length - 1],
				cast(GClosureNotify)&callBackUnmapEventDestroy,
				connectFlags);
			return onUnmapEventListeners[onUnmapEventListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackUnmapEvent(GtkWidget* widgetStruct, GdkEventAny* event,OnUnmapEventDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackUnmapEventDestroy(OnUnmapEventDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnUnmapEvent(wrapper);
		}

		protected void internalRemoveOnUnmapEvent(OnUnmapEventDelegateWrapper source)
		{
			foreach(index, wrapper; onUnmapEventListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onUnmapEventListeners[index] = null;
					onUnmapEventListeners = std.algorithm.remove(onUnmapEventListeners, index);
					break;
				}
			}
		}
		

		protected class OnUnmapEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnUnmapEventGenericDelegateWrapper[] onUnmapEventGenericListeners;
		
		/**
		 * The ::unmap-event signal will be emitted when the @widget's window is
		 * unmapped. A window is unmapped when it becomes invisible on the screen.
		 *
		 * To receive this signal, the #GdkWindow associated to the widget needs
		 * to enable the #GDK_STRUCTURE_MASK mask. GDK will enable this mask
		 * automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventAny which triggered this signal
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnUnmapEvent(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onUnmapEventGenericListeners ~= new OnUnmapEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onUnmapEventGenericListeners[onUnmapEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"unmap-event",
				cast(GCallback)&callBackUnmapEventGeneric,
				cast(void*)onUnmapEventGenericListeners[onUnmapEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackUnmapEventGenericDestroy,
				connectFlags);
			return onUnmapEventGenericListeners[onUnmapEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackUnmapEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnUnmapEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackUnmapEventGenericDestroy(OnUnmapEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnUnmapEventGeneric(wrapper);
		}
		protected void internalRemoveOnUnmapEventGeneric(OnUnmapEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onUnmapEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onUnmapEventGenericListeners[index] = null;
					onUnmapEventGenericListeners = std.algorithm.remove(onUnmapEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnUnrealizeDelegateWrapper
		{
			void delegate(Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(void delegate(Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnUnrealizeDelegateWrapper[] onUnrealizeListeners;

		/**
		 * The ::unrealize signal is emitted when the #GdkWindow associated with
		 * @widget is destroyed, which means that gtk_widget_unrealize() has been
		 * called or the widget has been unmapped (that is, it is going to be
		 * hidden).
		 */
		gulong addOnUnrealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onUnrealizeListeners ~= new OnUnrealizeDelegateWrapper(dlg, 0, connectFlags);
			onUnrealizeListeners[onUnrealizeListeners.length - 1].handlerId = Signals.connectData(
				this,
				"unrealize",
				cast(GCallback)&callBackUnrealize,
				cast(void*)onUnrealizeListeners[onUnrealizeListeners.length - 1],
				cast(GClosureNotify)&callBackUnrealizeDestroy,
				connectFlags);
			return onUnrealizeListeners[onUnrealizeListeners.length - 1].handlerId;
		}
		
		extern(C) static void callBackUnrealize(GtkWidget* widgetStruct,OnUnrealizeDelegateWrapper wrapper)
		{
			wrapper.dlg(wrapper.outer);
		}
		
		extern(C) static void callBackUnrealizeDestroy(OnUnrealizeDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnUnrealize(wrapper);
		}

		protected void internalRemoveOnUnrealize(OnUnrealizeDelegateWrapper source)
		{
			foreach(index, wrapper; onUnrealizeListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onUnrealizeListeners[index] = null;
					onUnrealizeListeners = std.algorithm.remove(onUnrealizeListeners, index);
					break;
				}
			}
		}
		

		protected class OnVisibilityNotifyDelegateWrapper
		{
			bool delegate(GdkEventVisibility*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventVisibility*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnVisibilityNotifyDelegateWrapper[] onVisibilityNotifyListeners;

		/**
		 * The ::visibility-notify-event will be emitted when the @widget's
		 * window is obscured or unobscured.
		 *
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_VISIBILITY_NOTIFY_MASK mask.
		 *
		 * Deprecated: Modern composited windowing systems with pervasive
		 * transparency make it impossible to track the visibility of a window
		 * reliably, so this signal can not be guaranteed to provide useful
		 * information.
		 *
		 * Params:
		 *     event = the #GdkEventVisibility which
		 *         triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnVisibilityNotify(bool delegate(GdkEventVisibility*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.VISIBILITY_NOTIFY_MASK);
			onVisibilityNotifyListeners ~= new OnVisibilityNotifyDelegateWrapper(dlg, 0, connectFlags);
			onVisibilityNotifyListeners[onVisibilityNotifyListeners.length - 1].handlerId = Signals.connectData(
				this,
				"visibility-notify-event",
				cast(GCallback)&callBackVisibilityNotify,
				cast(void*)onVisibilityNotifyListeners[onVisibilityNotifyListeners.length - 1],
				cast(GClosureNotify)&callBackVisibilityNotifyDestroy,
				connectFlags);
			return onVisibilityNotifyListeners[onVisibilityNotifyListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackVisibilityNotify(GtkWidget* widgetStruct, GdkEventVisibility* event,OnVisibilityNotifyDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackVisibilityNotifyDestroy(OnVisibilityNotifyDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnVisibilityNotify(wrapper);
		}

		protected void internalRemoveOnVisibilityNotify(OnVisibilityNotifyDelegateWrapper source)
		{
			foreach(index, wrapper; onVisibilityNotifyListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onVisibilityNotifyListeners[index] = null;
					onVisibilityNotifyListeners = std.algorithm.remove(onVisibilityNotifyListeners, index);
					break;
				}
			}
		}
		

		protected class OnVisibilityNotifyEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnVisibilityNotifyEventGenericDelegateWrapper[] onVisibilityNotifyEventGenericListeners;
		
		/**
		 * The ::visibility-notify-event will be emitted when the @widget's
		 * window is obscured or unobscured.
		 *
		 * To receive this signal the #GdkWindow associated to the widget needs
		 * to enable the #GDK_VISIBILITY_NOTIFY_MASK mask.
		 *
		 * Deprecated: Modern composited windowing systems with pervasive
		 * transparency make it impossible to track the visibility of a window
		 * reliably, so this signal can not be guaranteed to provide useful
		 * information.
		 *
		 * Params:
		 *     event = the #GdkEventVisibility which
		 *         triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the event.
		 *     %FALSE to propagate the event further.
		 */
		gulong addOnVisibilityNotify(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			addEvents(EventMask.VISIBILITY_NOTIFY_MASK);
			onVisibilityNotifyEventGenericListeners ~= new OnVisibilityNotifyEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onVisibilityNotifyEventGenericListeners[onVisibilityNotifyEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"visibility-notify-event",
				cast(GCallback)&callBackVisibilityNotifyEventGeneric,
				cast(void*)onVisibilityNotifyEventGenericListeners[onVisibilityNotifyEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackVisibilityNotifyEventGenericDestroy,
				connectFlags);
			return onVisibilityNotifyEventGenericListeners[onVisibilityNotifyEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackVisibilityNotifyEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnVisibilityNotifyEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackVisibilityNotifyEventGenericDestroy(OnVisibilityNotifyEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnVisibilityNotifyEventGeneric(wrapper);
		}
		protected void internalRemoveOnVisibilityNotifyEventGeneric(OnVisibilityNotifyEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onVisibilityNotifyEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onVisibilityNotifyEventGenericListeners[index] = null;
					onVisibilityNotifyEventGenericListeners = std.algorithm.remove(onVisibilityNotifyEventGenericListeners, index);
					break;
				}
			}
		}
		

		protected class OnWindowStateDelegateWrapper
		{
			bool delegate(GdkEventWindowState*, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(GdkEventWindowState*, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnWindowStateDelegateWrapper[] onWindowStateListeners;

		/**
		 * The ::window-state-event will be emitted when the state of the
		 * toplevel window associated to the @widget changes.
		 *
		 * To receive this signal the #GdkWindow associated to the widget
		 * needs to enable the #GDK_STRUCTURE_MASK mask. GDK will enable
		 * this mask automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventWindowState which
		 *         triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the
		 *     event. %FALSE to propagate the event further.
		 */
		gulong addOnWindowState(bool delegate(GdkEventWindowState*, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onWindowStateListeners ~= new OnWindowStateDelegateWrapper(dlg, 0, connectFlags);
			onWindowStateListeners[onWindowStateListeners.length - 1].handlerId = Signals.connectData(
				this,
				"window-state-event",
				cast(GCallback)&callBackWindowState,
				cast(void*)onWindowStateListeners[onWindowStateListeners.length - 1],
				cast(GClosureNotify)&callBackWindowStateDestroy,
				connectFlags);
			return onWindowStateListeners[onWindowStateListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackWindowState(GtkWidget* widgetStruct, GdkEventWindowState* event,OnWindowStateDelegateWrapper wrapper)
		{
			return wrapper.dlg(event, wrapper.outer);
		}
		
		extern(C) static void callBackWindowStateDestroy(OnWindowStateDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnWindowState(wrapper);
		}

		protected void internalRemoveOnWindowState(OnWindowStateDelegateWrapper source)
		{
			foreach(index, wrapper; onWindowStateListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onWindowStateListeners[index] = null;
					onWindowStateListeners = std.algorithm.remove(onWindowStateListeners, index);
					break;
				}
			}
		}
		

		protected class OnWindowStateEventGenericDelegateWrapper
		{
			bool delegate(Event, Widget) dlg;
			gulong handlerId;
			ConnectFlags flags;
			this(bool delegate(Event, Widget) dlg, gulong handlerId, ConnectFlags flags)
			{
				this.dlg = dlg;
				this.handlerId = handlerId;
				this.flags = flags;
			}
		}
		protected OnWindowStateEventGenericDelegateWrapper[] onWindowStateEventGenericListeners;
		
		/**
		 * The ::window-state-event will be emitted when the state of the
		 * toplevel window associated to the @widget changes.
		 *
		 * To receive this signal the #GdkWindow associated to the widget
		 * needs to enable the #GDK_STRUCTURE_MASK mask. GDK will enable
		 * this mask automatically for all new windows.
		 *
		 * Params:
		 *     event = the #GdkEventWindowState which
		 *         triggered this signal.
		 *
		 * Return: %TRUE to stop other handlers from being invoked for the
		 *     event. %FALSE to propagate the event further.
		 */
		gulong addOnWindowState(bool delegate(Event, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
		{
			onWindowStateEventGenericListeners ~= new OnWindowStateEventGenericDelegateWrapper(dlg, 0, connectFlags);
			onWindowStateEventGenericListeners[onWindowStateEventGenericListeners.length - 1].handlerId = Signals.connectData(
				this,
				"window-state-event",
				cast(GCallback)&callBackWindowStateEventGeneric,
				cast(void*)onWindowStateEventGenericListeners[onWindowStateEventGenericListeners.length - 1],
				cast(GClosureNotify)&callBackWindowStateEventGenericDestroy,
				connectFlags);
			return onWindowStateEventGenericListeners[onWindowStateEventGenericListeners.length - 1].handlerId;
		}
		
		extern(C) static int callBackWindowStateEventGeneric(GtkWidget* widgetStruct, GdkEvent* event,OnWindowStateEventGenericDelegateWrapper wrapper)
		{
			return wrapper.dlg(ObjectG.getDObject!(Event)(event), wrapper.outer);
		}
		
		extern(C) static void callBackWindowStateEventGenericDestroy(OnWindowStateEventGenericDelegateWrapper wrapper, GClosure* closure)
		{
			wrapper.outer.internalRemoveOnWindowStateEventGeneric(wrapper);
		}
		protected void internalRemoveOnWindowStateEventGeneric(OnWindowStateEventGenericDelegateWrapper source)
		{
			foreach(index, wrapper; onWindowStateEventGenericListeners)
			{
				if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
				{
					onWindowStateEventGenericListeners[index] = null;
					onWindowStateEventGenericListeners = std.algorithm.remove(onWindowStateEventGenericListeners, index);
					break;
				}
			}
		}
		

		/**
		 * This function is supposed to be called in #GtkWidget::draw
		 * implementations for widgets that support multiple windows.
		 * @cr must be untransformed from invoking of the draw function.
		 * This function will return %TRUE if the contents of the given
		 * @window are supposed to be drawn and %FALSE otherwise. Note
		 * that when the drawing was not initiated by the windowing
		 * system this function will return %TRUE for all windows, so
		 * you need to draw the bottommost window first. Also, do not
		 * use “else if” statements to check which window should be drawn.
		 *
		 * Params:
		 *     cr = a cairo context
		 *     window = the window to check. @window may not be an input-only
		 *         window.
		 *
		 * Return: %TRUE if @window should be drawn
		 *
		 * Since: 3.0
		 */
		public static bool cairoShouldDrawWindow(Context cr, GdkWin window)
		{
			return gtk_cairo_should_draw_window((cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct()) != 0;
		}

		/**
		 * Transforms the given cairo context @cr that from @widget-relative
		 * coordinates to @window-relative coordinates.
		 * If the @widget’s window is not an ancestor of @window, no
		 * modification will be applied.
		 *
		 * This is the inverse to the transformation GTK applies when
		 * preparing an expose event to be emitted with the #GtkWidget::draw
		 * signal. It is intended to help porting multiwindow widgets from
		 * GTK+ 2 to the rendering architecture of GTK+ 3.
		 *
		 * Params:
		 *     cr = the cairo context to transform
		 *     widget = the widget the context is currently centered for
		 *     window = the window to transform the context to
		 *
		 * Since: 3.0
		 */
		public static void cairoTransformToWindow(Context cr, Widget widget, GdkWin window)
		{
			gtk_cairo_transform_to_window((cr is null) ? null : cr.getContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (window is null) ? null : window.getWindowStruct());
		}

		/**
		 * Distributes @extra_space to child @sizes by bringing smaller
		 * children up to natural size first.
		 *
		 * The remaining space will be added to the @minimum_size member of the
		 * GtkRequestedSize struct. If all sizes reach their natural size then
		 * the remaining space is returned.
		 *
		 * Params:
		 *     extraSpace = Extra space to redistribute among children after subtracting
		 *         minimum sizes and any child padding from the overall allocation
		 *     nRequestedSizes = Number of requests to fit into the allocation
		 *     sizes = An array of structs with a client pointer and a minimum/natural size
		 *         in the orientation of the allocation.
		 *
		 * Return: The remainder of @extra_space after redistributing space
		 *     to @sizes.
		 */
		public static int distributeNaturalAllocation(int extraSpace, uint nRequestedSizes, GtkRequestedSize* sizes)
		{
			return gtk_distribute_natural_allocation(extraSpace, nRequestedSizes, sizes);
		}
	}
