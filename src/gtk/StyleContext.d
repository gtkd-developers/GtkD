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
 * inFile  = GtkStyleContext.html
 * outPack = gtk
 * outFile = StyleContext
 * strct   = GtkStyleContext
 * realStrct=
 * ctorStrct=
 * clss    = StyleContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_style_context_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_border_
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdarg
 * 	- glib.Str
 * 	- cairo.Context
 * 	- gobject.Value
 * 	- glib.ListG
 * 	- gdk.FrameClock
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gdk.Screen
 * 	- gdk.Window
 * 	- gtk.CssSection
 * 	- gtk.IconSet
 * 	- gtk.IconSource
 * 	- gtk.StyleProviderIF
 * 	- gtk.WidgetPath
 * 	- pango.PgFontDescription
 * 	- pango.PgLayout
 * structWrap:
 * 	- GList* -> ListG
 * 	- GValue* -> Value
 * 	- GdkFrameClock* -> FrameClock
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * 	- GtkCssSection* -> CssSection
 * 	- GtkIconSet* -> IconSet
 * 	- GtkIconSource* -> IconSource
 * 	- GtkStyleContext* -> StyleContext
 * 	- GtkStyleProvider* -> StyleProviderIF
 * 	- GtkWidgetPath* -> WidgetPath
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLayout* -> PgLayout
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.StyleContext;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import cairo.Context;
private import gobject.Value;
private import glib.ListG;
private import gdk.FrameClock;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gdk.Screen;
private import gdk.Window;
private import gtk.CssSection;
private import gtk.IconSet;
private import gtk.IconSource;
private import gtk.StyleProviderIF;
private import gtk.WidgetPath;
private import pango.PgFontDescription;
private import pango.PgLayout;


version(Tango) {
	private import tango.core.Vararg;

	version = druntime;
} else version(D_Version2) {
	private import core.vararg;

	version = druntime;
} else {
	private import std.stdarg;
}


private import gobject.ObjectG;

/**
 * GtkStyleContext is an object that stores styling information affecting
 * a widget defined by GtkWidgetPath.
 *
 * In order to construct the final style information, GtkStyleContext
 * queries information from all attached GtkStyleProviders. Style providers
 * can be either attached explicitly to the context through
 * gtk_style_context_add_provider(), or to the screen through
 * gtk_style_context_add_provider_for_screen(). The resulting style is a
 * combination of all providers' information in priority order.
 *
 * For GTK+ widgets, any GtkStyleContext returned by
 * gtk_widget_get_style_context() will already have a GtkWidgetPath, a
 * GdkScreen and RTL/LTR information set. The style context will be also
 * updated automatically if any of these settings change on the widget.
 *
 * If you are using the theming layer standalone, you will need to set a
 * widget path and a screen yourself to the created style context through
 * gtk_style_context_set_path() and gtk_style_context_set_screen(), as well
 * as updating the context yourself using gtk_style_context_invalidate()
 * whenever any of the conditions change, such as a change in the
 * "gtk-theme-name" setting or a hierarchy change in the rendered
 * widget.
 *
 * Transition animations
 *
 * GtkStyleContext has built-in support for state change transitions.
 * Note that these animations respect the "gtk-enable-animations"
 * setting.
 *
 * For simple widgets where state changes affect the whole widget area,
 * calling gtk_style_context_notify_state_change() with a NULL region
 * is sufficient to trigger the transition animation. And GTK+ already
 * does that when gtk_widget_set_state() or gtk_widget_set_state_flags()
 * are called.
 *
 * If a widget needs to declare several animatable regions (i.e. not
 * affecting the whole widget area), its "draw" signal handler
 * needs to wrap the render operations for the different regions with
 * calls to gtk_style_context_push_animatable_region() and
 * gtk_style_context_pop_animatable_region(). These functions take an
 * identifier for the region which must be unique within the style context.
 * For simple widgets with a fixed set of animatable regions, using an
 * enumeration works well:
 *
 * $(DDOC_COMMENT example)
 *
 * For complex widgets with an arbitrary number of animatable regions, it
 * is up to the implementation to come up with a way to uniquely identify
 * each animatable region. Using pointers to internal structs is one way
 * to achieve this:
 *
 * $(DDOC_COMMENT example)
 *
 * The widget also needs to notify the style context about a state change
 * for a given animatable region so the animation is triggered.
 *
 * $(DDOC_COMMENT example)
 *
 * gtk_style_context_notify_state_change() accepts NULL region IDs as a
 * special value, in this case, the whole widget area will be updated
 * by the animation.
 *
 * <hr>
 *
 * Style classes and regions
 *
 * Widgets can add style classes to their context, which can be used
 * to associate different styles by class (see the section called “Selectors”). Theme engines can also use style classes to vary their
 * rendering. GTK+ has a number of predefined style classes:
 * GTK_STYLE_CLASS_CELL,
 * GTK_STYLE_CLASS_ENTRY,
 * GTK_STYLE_CLASS_BUTTON,
 * GTK_STYLE_CLASS_COMBOBOX_ENTRY,
 * GTK_STYLE_CLASS_CALENDAR,
 * GTK_STYLE_CLASS_SLIDER,
 * GTK_STYLE_CLASS_BACKGROUND,
 * GTK_STYLE_CLASS_RUBBERBAND,
 * GTK_STYLE_CLASS_TOOLTIP,
 * GTK_STYLE_CLASS_MENU,
 * GTK_STYLE_CLASS_MENUBAR,
 * GTK_STYLE_CLASS_MENUITEM,
 * GTK_STYLE_CLASS_TOOLBAR,
 * GTK_STYLE_CLASS_PRIMARY_TOOLBAR,
 * GTK_STYLE_CLASS_INLINE_TOOLBAR,
 * GTK_STYLE_CLASS_RADIO,
 * GTK_STYLE_CLASS_CHECK,
 * GTK_STYLE_CLASS_TROUGH,
 * GTK_STYLE_CLASS_SCROLLBAR,
 * GTK_STYLE_CLASS_SCALE,
 * GTK_STYLE_CLASS_SCALE_HAS_MARKS_ABOVE,
 * GTK_STYLE_CLASS_SCALE_HAS_MARKS_BELOW,
 * GTK_STYLE_CLASS_HEADER,
 * GTK_STYLE_CLASS_ACCELERATOR,
 * GTK_STYLE_CLASS_GRIP,
 * GTK_STYLE_CLASS_DOCK,
 * GTK_STYLE_CLASS_PROGRESSBAR,
 * GTK_STYLE_CLASS_SPINNER,
 * GTK_STYLE_CLASS_EXPANDER,
 * GTK_STYLE_CLASS_SPINBUTTON,
 * GTK_STYLE_CLASS_NOTEBOOK,
 * GTK_STYLE_CLASS_VIEW,
 * GTK_STYLE_CLASS_SIDEBAR,
 * GTK_STYLE_CLASS_IMAGE,
 * GTK_STYLE_CLASS_HIGHLIGHT,
 * GTK_STYLE_CLASS_FRAME,
 * GTK_STYLE_CLASS_DND,
 * GTK_STYLE_CLASS_PANE_SEPARATOR,
 * GTK_STYLE_CLASS_SEPARATOR,
 * GTK_STYLE_CLASS_INFO,
 * GTK_STYLE_CLASS_WARNING,
 * GTK_STYLE_CLASS_QUESTION,
 * GTK_STYLE_CLASS_ERROR,
 * GTK_STYLE_CLASS_HORIZONTAL,
 * GTK_STYLE_CLASS_VERTICAL,
 * GTK_STYLE_CLASS_TOP,
 * GTK_STYLE_CLASS_BOTTOM,
 * GTK_STYLE_CLASS_LEFT,
 * GTK_STYLE_CLASS_RIGHT,
 *
 * Widgets can also add regions with flags to their context.
 * The regions used by GTK+ widgets are:
 *
 * Region
 * Flags
 * Macro
 * Used by
 *
 * row
 * even, odd
 * GTK_STYLE_REGION_ROW
 * GtkTreeView
 *
 * column
 * first, last, sorted
 * GTK_STYLE_REGION_COLUMN
 * GtkTreeView
 *
 * column-header
 *
 * GTK_STYLE_REGION_COLUMN_HEADER
 *
 * tab
 * even, odd, first, last
 * GTK_STYLE_REGION_TAB
 * GtkNotebook
 *
 * <hr>
 *
 * Custom styling in UI libraries and applications
 *
 * If you are developing a library with custom GtkWidgets that
 * render differently than standard components, you may need to add a
 * GtkStyleProvider yourself with the GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
 * priority, either a GtkCssProvider or a custom object implementing the
 * GtkStyleProvider interface. This way theming engines may still attempt
 * to style your UI elements in a different way if needed so.
 *
 * If you are using custom styling on an applications, you probably want then
 * to make your style information prevail to the theme's, so you must use
 * a GtkStyleProvider with the GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
 * priority, keep in mind that the user settings in
 * XDG_CONFIG_HOME/gtk-3.0/gtk.css will
 * still take precedence over your changes, as it uses the
 * GTK_STYLE_PROVIDER_PRIORITY_USER priority.
 *
 * If a custom theming engine is needed, you probably want to implement a
 * GtkStyleProvider yourself so it points to your GtkThemingEngine
 * implementation, as GtkCssProvider uses gtk_theming_engine_load()
 * which loads the theming engine module from the standard paths.
 */
public class StyleContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkStyleContext* gtkStyleContext;
	
	
	public GtkStyleContext* getStyleContextStruct()
	{
		return gtkStyleContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyleContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStyleContext* gtkStyleContext)
	{
		super(cast(GObject*)gtkStyleContext);
		this.gtkStyleContext = gtkStyleContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkStyleContext = cast(GtkStyleContext*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(StyleContext)[] onChangedListeners;
	/**
	 */
	void addOnChanged(void delegate(StyleContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkStyleContext* stylecontextStruct, StyleContext _styleContext)
	{
		foreach ( void delegate(StyleContext) dlg ; _styleContext.onChangedListeners )
		{
			dlg(_styleContext);
		}
	}
	
	
	/**
	 * Creates a standalone GtkStyleContext, this style context
	 * won't be attached to any widget, so you may want
	 * to call gtk_style_context_set_path() yourself.
	 * Note
	 * This function is only useful when using the theming layer
	 * separated from GTK+, if you are using GtkStyleContext to
	 * theme GtkWidgets, use gtk_widget_get_style_context()
	 * in order to get a style context ready to theme the widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkStyleContext * gtk_style_context_new (void);
		auto p = gtk_style_context_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_style_context_new()");
		}
		this(cast(GtkStyleContext*) p);
	}
	
	/**
	 * Adds a style provider to context, to be used in style construction.
	 * Note that a style provider added by this function only affects
	 * the style of the widget to which context belongs. If you want
	 * to affect the style of all widgets, use
	 * gtk_style_context_add_provider_for_screen().
	 * Note
	 * If both priorities are the same, A GtkStyleProvider
	 * added through this function takes precedence over another added
	 * through gtk_style_context_add_provider_for_screen().
	 * Params:
	 * provider = a GtkStyleProvider
	 * priority = the priority of the style provider. The lower
	 * it is, the earlier it will be used in the style
	 * construction. Typically this will be in the range
	 * between GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 * GTK_STYLE_PROVIDER_PRIORITY_USER
	 * Since 3.0
	 */
	public void addProvider(StyleProviderIF provider, uint priority)
	{
		// void gtk_style_context_add_provider (GtkStyleContext *context,  GtkStyleProvider *provider,  guint priority);
		gtk_style_context_add_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderTStruct(), priority);
	}
	
	/**
	 * Adds a global style provider to screen, which will be used
	 * in style construction for all GtkStyleContexts under screen.
	 * GTK+ uses this to make styling information from GtkSettings
	 * available.
	 * Note
	 * If both priorities are the same, A GtkStyleProvider
	 * added through gtk_style_context_add_provider() takes precedence
	 * over another added through this function.
	 * Params:
	 * screen = a GdkScreen
	 * provider = a GtkStyleProvider
	 * priority = the priority of the style provider. The lower
	 * it is, the earlier it will be used in the style
	 * construction. Typically this will be in the range
	 * between GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 * GTK_STYLE_PROVIDER_PRIORITY_USER
	 * Since 3.0
	 */
	public static void addProviderForScreen(Screen screen, StyleProviderIF provider, uint priority)
	{
		// void gtk_style_context_add_provider_for_screen  (GdkScreen *screen,  GtkStyleProvider *provider,  guint priority);
		gtk_style_context_add_provider_for_screen((screen is null) ? null : screen.getScreenStruct(), (provider is null) ? null : provider.getStyleProviderTStruct(), priority);
	}
	
	/**
	 * Warning
	 * gtk_style_context_get_direction has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_style_context_get_state() and
	 *  check for GTK_STATE_FLAG_DIR_LTR and
	 *  GTK_STATE_FLAG_DIR_RTL instead.
	 * Returns the widget direction used for rendering.
	 * Returns: the widget direction Since 3.0
	 */
	public GtkTextDirection getDirection()
	{
		// GtkTextDirection gtk_style_context_get_direction (GtkStyleContext *context);
		return gtk_style_context_get_direction(gtkStyleContext);
	}
	
	/**
	 * Returns the sides where rendered elements connect visually with others.
	 * Returns: the junction sides Since 3.0
	 */
	public GtkJunctionSides getJunctionSides()
	{
		// GtkJunctionSides gtk_style_context_get_junction_sides  (GtkStyleContext *context);
		return gtk_style_context_get_junction_sides(gtkStyleContext);
	}
	
	/**
	 * Gets the parent context set via gtk_style_context_set_parent().
	 * See that function for details.
	 * Returns: the parent context or NULL. [transfer none] Since 3.4
	 */
	public StyleContext getParent()
	{
		// GtkStyleContext * gtk_style_context_get_parent (GtkStyleContext *context);
		auto p = gtk_style_context_get_parent(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
	}
	
	/**
	 * Returns the widget path used for style matching.
	 * Returns: A GtkWidgetPath. [transfer none] Since 3.0
	 */
	public WidgetPath getPath()
	{
		// const GtkWidgetPath * gtk_style_context_get_path (GtkStyleContext *context);
		auto p = gtk_style_context_get_path(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Gets a style property from context for the given state.
	 * When value is no longer needed, g_value_unset() must be called
	 * to free any allocated memory.
	 * Params:
	 * property = style property name
	 * state = state to retrieve the property value for
	 * value = return location for the style property value. [out][transfer full]
	 * Since 3.0
	 */
	public void getProperty(string property, GtkStateFlags state, Value value)
	{
		// void gtk_style_context_get_property (GtkStyleContext *context,  const gchar *property,  GtkStateFlags state,  GValue *value);
		gtk_style_context_get_property(gtkStyleContext, Str.toStringz(property), state, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Returns the GdkScreen to which context is attached.
	 * Returns: a GdkScreen. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gtk_style_context_get_screen (GtkStyleContext *context);
		auto p = gtk_style_context_get_screen(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * Returns the GdkFrameClock to which context is attached.
	 * Returns: a GdkFrameClock, or NULL if context does not have an attached frame clock. [transfer none] Since 3.8
	 */
	public FrameClock getFrameClock()
	{
		// GdkFrameClock * gtk_style_context_get_frame_clock (GtkStyleContext *context);
		auto p = gtk_style_context_get_frame_clock(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) p);
	}
	
	/**
	 * Returns the state used when rendering.
	 * Returns: the state flags Since 3.0
	 */
	public GtkStateFlags getState()
	{
		// GtkStateFlags gtk_style_context_get_state (GtkStyleContext *context);
		return gtk_style_context_get_state(gtkStyleContext);
	}
	
	/**
	 * Gets the value for a widget style property.
	 * When value is no longer needed, g_value_unset() must be called
	 * to free any allocated memory.
	 * Params:
	 * propertyName = the name of the widget style property
	 * value = Return location for the property value
	 */
	public void getStyleProperty(string propertyName, Value value)
	{
		// void gtk_style_context_get_style_property  (GtkStyleContext *context,  const gchar *property_name,  GValue *value);
		gtk_style_context_get_style_property(gtkStyleContext, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Retrieves several widget style properties from context according to the
	 * current style.
	 * Params:
	 * args = va_list of property name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void getStyleValist(void* args)
	{
		// void gtk_style_context_get_style_valist (GtkStyleContext *context,  va_list args);
		gtk_style_context_get_style_valist(gtkStyleContext, args);
	}
	
	/**
	 * Retrieves several style property values from context for a given state.
	 * Params:
	 * state = state to retrieve the property values for
	 * args = va_list of property name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void getValist(GtkStateFlags state, void* args)
	{
		// void gtk_style_context_get_valist (GtkStyleContext *context,  GtkStateFlags state,  va_list args);
		gtk_style_context_get_valist(gtkStyleContext, state, args);
	}
	
	/**
	 * Queries the location in the CSS where property was defined for the
	 * current context. Note that the state to be queried is taken from
	 * gtk_style_context_get_state().
	 * If the location is not available, NULL will be returned. The
	 * location might not be available for various reasons, such as the
	 * property being overridden, property not naming a supported CSS
	 * property or tracking of definitions being disabled for performance
	 * reasons.
	 * Shorthand CSS properties cannot be queried for a location and will
	 * always return NULL.
	 * Params:
	 * property = style property name
	 * Returns: NULL or the section where value was defined
	 */
	public CssSection getSection(string property)
	{
		// GtkCssSection * gtk_style_context_get_section (GtkStyleContext *context,  const gchar *property);
		auto p = gtk_style_context_get_section(gtkStyleContext, Str.toStringz(property));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p);
	}
	
	/**
	 * Gets the foreground color for a given state.
	 * Params:
	 * state = state to retrieve the color for
	 * color = return value for the foreground color. [out]
	 * Since 3.0
	 */
	public void getColor(GtkStateFlags state, RGBA color)
	{
		// void gtk_style_context_get_color (GtkStyleContext *context,  GtkStateFlags state,  GdkRGBA *color);
		gtk_style_context_get_color(gtkStyleContext, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Gets the background color for a given state.
	 * Params:
	 * state = state to retrieve the color for
	 * color = return value for the background color. [out]
	 * Since 3.0
	 */
	public void getBackgroundColor(GtkStateFlags state, RGBA color)
	{
		// void gtk_style_context_get_background_color  (GtkStyleContext *context,  GtkStateFlags state,  GdkRGBA *color);
		gtk_style_context_get_background_color(gtkStyleContext, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Gets the border color for a given state.
	 * Params:
	 * state = state to retrieve the color for
	 * color = return value for the border color. [out]
	 * Since 3.0
	 */
	public void getBorderColor(GtkStateFlags state, RGBA color)
	{
		// void gtk_style_context_get_border_color (GtkStyleContext *context,  GtkStateFlags state,  GdkRGBA *color);
		gtk_style_context_get_border_color(gtkStyleContext, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Gets the border for a given state as a GtkBorder.
	 * See GTK_STYLE_PROPERTY_BORDER_WIDTH.
	 * Params:
	 * state = state to retrieve the border for
	 * border = return value for the border settings. [out]
	 * Since 3.0
	 */
	public void getBorder(GtkStateFlags state, out GtkBorder border)
	{
		// void gtk_style_context_get_border (GtkStyleContext *context,  GtkStateFlags state,  GtkBorder *border);
		gtk_style_context_get_border(gtkStyleContext, state, &border);
	}
	
	/**
	 * Gets the padding for a given state as a GtkBorder.
	 * See GTK_STYLE_PROPERTY_PADDING.
	 * Params:
	 * state = state to retrieve the padding for
	 * padding = return value for the padding settings. [out]
	 * Since 3.0
	 */
	public void getPadding(GtkStateFlags state, out GtkBorder padding)
	{
		// void gtk_style_context_get_padding (GtkStyleContext *context,  GtkStateFlags state,  GtkBorder *padding);
		gtk_style_context_get_padding(gtkStyleContext, state, &padding);
	}
	
	/**
	 * Gets the margin for a given state as a GtkBorder.
	 * See GTK_STYLE_PROPERTY_MARGIN.
	 * Params:
	 * state = state to retrieve the border for
	 * margin = return value for the margin settings. [out]
	 * Since 3.0
	 */
	public void getMargin(GtkStateFlags state, out GtkBorder margin)
	{
		// void gtk_style_context_get_margin (GtkStyleContext *context,  GtkStateFlags state,  GtkBorder *margin);
		gtk_style_context_get_margin(gtkStyleContext, state, &margin);
	}
	
	/**
	 * Warning
	 * gtk_style_context_get_font has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_style_context_get() for "font" or
	 *  subproperties instead.
	 * Returns the font description for a given state. The returned
	 * object is const and will remain valid until the
	 * "changed" signal happens.
	 * Params:
	 * state = state to retrieve the font for
	 * Returns: the PangoFontDescription for the given state. This object is owned by GTK+ and should not be freed. [transfer none] Since 3.0
	 */
	public PgFontDescription getFont(GtkStateFlags state)
	{
		// const PangoFontDescription * gtk_style_context_get_font (GtkStyleContext *context,  GtkStateFlags state);
		auto p = gtk_style_context_get_font(gtkStyleContext, state);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Invalidates context style information, so it will be reconstructed
	 * again.
	 * If you're using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 */
	public void invalidate()
	{
		// void gtk_style_context_invalidate (GtkStyleContext *context);
		gtk_style_context_invalidate(gtkStyleContext);
	}
	
	/**
	 * Warning
	 * gtk_style_context_state_is_running has been deprecated since version 3.6 and should not be used in newly-written code. This function always returns FALSE
	 * Returns TRUE if there is a transition animation running for the
	 * current region (see gtk_style_context_push_animatable_region()).
	 * If progress is not NULL, the animation progress will be returned
	 * there, 0.0 means the state is closest to being unset, while 1.0 means
	 * it's closest to being set. This means transition animation will
	 * run from 0 to 1 when state is being set and from 1 to 0 when
	 * it's being unset.
	 * Params:
	 * state = a widget state
	 * progress = return location for the transition progress. [out]
	 * Returns: TRUE if there is a running transition animation for state. Since 3.0
	 */
	public int stateIsRunning(GtkStateType state, out double progress)
	{
		// gboolean gtk_style_context_state_is_running (GtkStyleContext *context,  GtkStateType state,  gdouble *progress);
		return gtk_style_context_state_is_running(gtkStyleContext, state, &progress);
	}
	
	/**
	 * Looks up and resolves a color name in the context color map.
	 * Params:
	 * colorName = color name to lookup
	 * color = Return location for the looked up color. [out]
	 * Returns: TRUE if color_name was found and resolved, FALSE otherwise
	 */
	public int lookupColor(string colorName, RGBA color)
	{
		// gboolean gtk_style_context_lookup_color (GtkStyleContext *context,  const gchar *color_name,  GdkRGBA *color);
		return gtk_style_context_lookup_color(gtkStyleContext, Str.toStringz(colorName), (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Looks up stock_id in the icon factories associated to context and
	 * the default icon factory, returning an icon set if found, otherwise
	 * NULL.
	 * Params:
	 * stockId = an icon name
	 * Returns: The looked up GtkIconSet, or NULL. [transfer none]
	 */
	public IconSet lookupIconSet(string stockId)
	{
		// GtkIconSet * gtk_style_context_lookup_icon_set (GtkStyleContext *context,  const gchar *stock_id);
		auto p = gtk_style_context_lookup_icon_set(gtkStyleContext, Str.toStringz(stockId));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_context_notify_state_change has been deprecated since version 3.6 and should not be used in newly-written code. This function does nothing.
	 * Notifies a state change on context, so if the current style makes use
	 * of transition animations, one will be started so all rendered elements
	 * under region_id are animated for state state being set to value
	 * state_value.
	 * The window parameter is used in order to invalidate the rendered area
	 * as the animation runs, so make sure it is the same window that is being
	 * rendered on by the gtk_render_*() functions.
	 * If region_id is NULL, all rendered elements using context will be
	 * affected by this state transition.
	 * As a practical example, a GtkButton notifying a state transition on
	 * Params:
	 * window = a GdkWindow
	 * regionId = animatable region to notify on, or NULL.
	 * See gtk_style_context_push_animatable_region(). [allow-none]
	 * state = state to trigger transition for
	 * stateValue = TRUE if state is the state we are changing to,
	 * FALSE if we are changing away from it
	 * Since 3.0
	 */
	public void notifyStateChange(Window window, void* regionId, GtkStateType state, int stateValue)
	{
		// void gtk_style_context_notify_state_change  (GtkStyleContext *context,  GdkWindow *window,  gpointer region_id,  GtkStateType state,  gboolean state_value);
		gtk_style_context_notify_state_change(gtkStyleContext, (window is null) ? null : window.getWindowStruct(), regionId, state, stateValue);
	}
	
	/**
	 * Warning
	 * gtk_style_context_pop_animatable_region has been deprecated since version 3.6 and should not be used in newly-written code. This function does nothing.
	 * Pops an animatable region from context.
	 * See gtk_style_context_push_animatable_region().
	 */
	public void popAnimatableRegion()
	{
		// void gtk_style_context_pop_animatable_region  (GtkStyleContext *context);
		gtk_style_context_pop_animatable_region(gtkStyleContext);
	}
	
	/**
	 * Warning
	 * gtk_style_context_push_animatable_region has been deprecated since version 3.6 and should not be used in newly-written code. This function does nothing.
	 * Pushes an animatable region, so all further gtk_render_*() calls between
	 * this call and the following gtk_style_context_pop_animatable_region()
	 * will potentially show transition animations for this region if
	 * gtk_style_context_notify_state_change() is called for a given state,
	 * and the current theme/style defines transition animations for state
	 * changes.
	 * The region_id used must be unique in context so the theming engine
	 * can uniquely identify rendered elements subject to a state transition.
	 * Params:
	 * regionId = unique identifier for the animatable region
	 * Since 3.0
	 */
	public void pushAnimatableRegion(void* regionId)
	{
		// void gtk_style_context_push_animatable_region  (GtkStyleContext *context,  gpointer region_id);
		gtk_style_context_push_animatable_region(gtkStyleContext, regionId);
	}
	
	/**
	 * Warning
	 * gtk_style_context_cancel_animations has been deprecated since version 3.6 and should not be used in newly-written code. This function does nothing.
	 * Stops all running animations for region_id and all animatable
	 * regions underneath.
	 * A NULL region_id will stop all ongoing animations in context,
	 * when dealing with a GtkStyleContext obtained through
	 * gtk_widget_get_style_context(), this is normally done for you
	 * in all circumstances you would expect all widget to be stopped,
	 * so this should be only used in complex widgets with different
	 * animatable regions.
	 * Params:
	 * regionId = animatable region to stop, or NULL.
	 * See gtk_style_context_push_animatable_region(). [allow-none]
	 * Since 3.0
	 */
	public void cancelAnimations(void* regionId)
	{
		// void gtk_style_context_cancel_animations (GtkStyleContext *context,  gpointer region_id);
		gtk_style_context_cancel_animations(gtkStyleContext, regionId);
	}
	
	/**
	 * Warning
	 * gtk_style_context_scroll_animations has been deprecated since version 3.6 and should not be used in newly-written code. This function does nothing.
	 * This function is analogous to gdk_window_scroll(), and
	 * should be called together with it so the invalidation
	 * areas for any ongoing animation are scrolled together
	 * with it.
	 * Params:
	 * window = a GdkWindow used previously in
	 * gtk_style_context_notify_state_change()
	 * dx = Amount to scroll in the X axis
	 * dy = Amount to scroll in the Y axis
	 * Since 3.0
	 */
	public void scrollAnimations(Window window, int dx, int dy)
	{
		// void gtk_style_context_scroll_animations (GtkStyleContext *context,  GdkWindow *window,  gint dx,  gint dy);
		gtk_style_context_scroll_animations(gtkStyleContext, (window is null) ? null : window.getWindowStruct(), dx, dy);
	}
	
	/**
	 * Removes provider from the style providers list in context.
	 * Params:
	 * provider = a GtkStyleProvider
	 * Since 3.0
	 */
	public void removeProvider(StyleProviderIF provider)
	{
		// void gtk_style_context_remove_provider (GtkStyleContext *context,  GtkStyleProvider *provider);
		gtk_style_context_remove_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderTStruct());
	}
	
	/**
	 * Removes provider from the global style providers list in screen.
	 * Params:
	 * screen = a GdkScreen
	 * provider = a GtkStyleProvider
	 * Since 3.0
	 */
	public static void removeProviderForScreen(Screen screen, StyleProviderIF provider)
	{
		// void gtk_style_context_remove_provider_for_screen  (GdkScreen *screen,  GtkStyleProvider *provider);
		gtk_style_context_remove_provider_for_screen((screen is null) ? null : screen.getScreenStruct(), (provider is null) ? null : provider.getStyleProviderTStruct());
	}
	
	/**
	 * This function recomputes the styles for all widgets under a particular
	 * GdkScreen. This is useful when some global parameter has changed that
	 * affects the appearance of all widgets, because when a widget gets a new
	 * style, it will both redraw and recompute any cached information about
	 * its appearance. As an example, it is used when the color scheme changes
	 * in the related GtkSettings object.
	 * Params:
	 * screen = a GdkScreen
	 * Since 3.0
	 */
	public static void resetWidgets(Screen screen)
	{
		// void gtk_style_context_reset_widgets (GdkScreen *screen);
		gtk_style_context_reset_widgets((screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Sets the background of window to the background pattern or
	 * color specified in context for its current state.
	 * Params:
	 * window = a GdkWindow
	 * Since 3.0
	 */
	public void setBackground(Window window)
	{
		// void gtk_style_context_set_background (GtkStyleContext *context,  GdkWindow *window);
		gtk_style_context_set_background(gtkStyleContext, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Restores context state to a previous stage.
	 * See gtk_style_context_save().
	 */
	public void restore()
	{
		// void gtk_style_context_restore (GtkStyleContext *context);
		gtk_style_context_restore(gtkStyleContext);
	}
	
	/**
	 * Saves the context state, so all modifications done through
	 * gtk_style_context_add_class(), gtk_style_context_remove_class(),
	 * gtk_style_context_add_region(), gtk_style_context_remove_region()
	 * or gtk_style_context_set_junction_sides() can be reverted in one
	 * go through gtk_style_context_restore().
	 */
	public void save()
	{
		// void gtk_style_context_save (GtkStyleContext *context);
		gtk_style_context_save(gtkStyleContext);
	}
	
	/**
	 * Warning
	 * gtk_style_context_set_direction has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_style_context_set_state() with
	 *  GTK_STATE_FLAG_DIR_LTR and GTK_STATE_FLAG_DIR_RTL
	 *  instead.
	 * Sets the reading direction for rendering purposes.
	 * If you are using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 * Params:
	 * direction = the new direction.
	 * Since 3.0
	 */
	public void setDirection(GtkTextDirection direction)
	{
		// void gtk_style_context_set_direction (GtkStyleContext *context,  GtkTextDirection direction);
		gtk_style_context_set_direction(gtkStyleContext, direction);
	}
	
	/**
	 * Sets the sides where rendered elements (mostly through
	 * gtk_render_frame()) will visually connect with other visual elements.
	 * This is merely a hint that may or may not be honored
	 * by theming engines.
	 * Container widgets are expected to set junction hints as appropriate
	 * for their children, so it should not normally be necessary to call
	 * this function manually.
	 * Params:
	 * sides = sides where rendered elements are visually connected to
	 * other elements
	 * Since 3.0
	 */
	public void setJunctionSides(GtkJunctionSides sides)
	{
		// void gtk_style_context_set_junction_sides  (GtkStyleContext *context,  GtkJunctionSides sides);
		gtk_style_context_set_junction_sides(gtkStyleContext, sides);
	}
	
	/**
	 * Sets the parent style context for context. The parent style
	 * context is used to implement
	 * inheritance
	 * of properties.
	 * If you are using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), the parent will be set for you.
	 * Params:
	 * parent = the new parent or NULL. [allow-none]
	 * Since 3.4
	 */
	public void setParent(StyleContext parent)
	{
		// void gtk_style_context_set_parent (GtkStyleContext *context,  GtkStyleContext *parent);
		gtk_style_context_set_parent(gtkStyleContext, (parent is null) ? null : parent.getStyleContextStruct());
	}
	
	/**
	 * Sets the GtkWidgetPath used for style matching. As a
	 * consequence, the style will be regenerated to match
	 * the new given path.
	 * If you are using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to call
	 * this yourself.
	 * Params:
	 * path = a GtkWidgetPath
	 * Since 3.0
	 */
	public void setPath(WidgetPath path)
	{
		// void gtk_style_context_set_path (GtkStyleContext *context,  GtkWidgetPath *path);
		gtk_style_context_set_path(gtkStyleContext, (path is null) ? null : path.getWidgetPathStruct());
	}
	
	/**
	 * Adds a style class to context, so posterior calls to
	 * gtk_style_context_get() or any of the gtk_render_*()
	 * functions will make use of this new class for styling.
	 * In the CSS file format, a GtkEntry defining an "entry"
	 * Params:
	 * className = class name to use in styling
	 * Since 3.0
	 */
	public void addClass(string className)
	{
		// void gtk_style_context_add_class (GtkStyleContext *context,  const gchar *class_name);
		gtk_style_context_add_class(gtkStyleContext, Str.toStringz(className));
	}
	
	/**
	 * Removes class_name from context.
	 * Params:
	 * className = class name to remove
	 * Since 3.0
	 */
	public void removeClass(string className)
	{
		// void gtk_style_context_remove_class (GtkStyleContext *context,  const gchar *class_name);
		gtk_style_context_remove_class(gtkStyleContext, Str.toStringz(className));
	}
	
	/**
	 * Returns TRUE if context currently has defined the
	 * given class name
	 * Params:
	 * className = a class name
	 * Returns: TRUE if context has class_name defined Since 3.0
	 */
	public int hasClass(string className)
	{
		// gboolean gtk_style_context_has_class (GtkStyleContext *context,  const gchar *class_name);
		return gtk_style_context_has_class(gtkStyleContext, Str.toStringz(className));
	}
	
	/**
	 * Returns the list of classes currently defined in context.
	 * Returns: a GList of strings with the currently defined classes. The contents of the list are owned by GTK+, but you must free the list itself with g_list_free() when you are done with it. [transfer container][element-type utf8] Since 3.0
	 */
	public ListG listClasses()
	{
		// GList * gtk_style_context_list_classes (GtkStyleContext *context);
		auto p = gtk_style_context_list_classes(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Adds a region to context, so posterior calls to
	 * gtk_style_context_get() or any of the gtk_render_*()
	 * functions will make use of this new region for styling.
	 * In the CSS file format, a GtkTreeView defining a "row"
	 * Params:
	 * regionName = region name to use in styling
	 * flags = flags that apply to the region
	 * Since 3.0
	 */
	public void addRegion(string regionName, GtkRegionFlags flags)
	{
		// void gtk_style_context_add_region (GtkStyleContext *context,  const gchar *region_name,  GtkRegionFlags flags);
		gtk_style_context_add_region(gtkStyleContext, Str.toStringz(regionName), flags);
	}
	
	/**
	 * Removes a region from context.
	 * Params:
	 * regionName = region name to unset
	 * Since 3.0
	 */
	public void removeRegion(string regionName)
	{
		// void gtk_style_context_remove_region (GtkStyleContext *context,  const gchar *region_name);
		gtk_style_context_remove_region(gtkStyleContext, Str.toStringz(regionName));
	}
	
	/**
	 * Returns TRUE if context has the region defined.
	 * If flags_return is not NULL, it is set to the flags
	 * affecting the region.
	 * Params:
	 * regionName = a region name
	 * flagsReturn = return location for region flags. [out][allow-none]
	 * Returns: TRUE if region is defined Since 3.0
	 */
	public int hasRegion(string regionName, GtkRegionFlags* flagsReturn)
	{
		// gboolean gtk_style_context_has_region (GtkStyleContext *context,  const gchar *region_name,  GtkRegionFlags *flags_return);
		return gtk_style_context_has_region(gtkStyleContext, Str.toStringz(regionName), flagsReturn);
	}
	
	/**
	 * Returns the list of regions currently defined in context.
	 * Returns: a GList of strings with the currently defined regions. The contents of the list are owned by GTK+, but you must free the list itself with g_list_free() when you are done with it. [transfer container][element-type utf8] Since 3.0
	 */
	public ListG listRegions()
	{
		// GList * gtk_style_context_list_regions (GtkStyleContext *context);
		auto p = gtk_style_context_list_regions(gtkStyleContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Attaches context to the given screen.
	 * The screen is used to add style information from 'global' style
	 * providers, such as the screens GtkSettings instance.
	 * If you are using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 * Params:
	 * screen = a GdkScreen
	 * Since 3.0
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_style_context_set_screen (GtkStyleContext *context,  GdkScreen *screen);
		gtk_style_context_set_screen(gtkStyleContext, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Attaches context to the given frame clock.
	 * The frame clock is used for the timing of animations.
	 * If you are using a GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 * Params:
	 * frameClock = a GdkFrameClock
	 * Since 3.8
	 */
	public void setFrameClock(FrameClock frameClock)
	{
		// void gtk_style_context_set_frame_clock (GtkStyleContext *context,  GdkFrameClock *frame_clock);
		gtk_style_context_set_frame_clock(gtkStyleContext, (frameClock is null) ? null : frameClock.getFrameClockStruct());
	}
	
	/**
	 * Sets the state to be used when rendering with any
	 * of the gtk_render_*() functions.
	 * Params:
	 * flags = state to represent
	 * Since 3.0
	 */
	public void setState(GtkStateFlags flags)
	{
		// void gtk_style_context_set_state (GtkStyleContext *context,  GtkStateFlags flags);
		gtk_style_context_set_state(gtkStyleContext, flags);
	}
	
	/**
	 * Renders an arrow pointing to angle.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * angle = arrow angle from 0 to 2 * G_PI, being 0 the arrow pointing to the north
	 * x = X origin of the render area
	 * y = Y origin of the render area
	 * size = square side for render area
	 * Since 3.0
	 */
	public void renderArrow(Context cr, double angle, double x, double y, double size)
	{
		// void gtk_render_arrow (GtkStyleContext *context,  cairo_t *cr,  gdouble angle,  gdouble x,  gdouble y,  gdouble size);
		gtk_render_arrow(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), angle, x, y, size);
	}
	
	/**
	 * Renders the background of an element.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0.
	 */
	public void renderBackground(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_background (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_background(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders a checkmark (as in a GtkCheckButton).
	 * The GTK_STATE_FLAG_ACTIVE state determines whether the check is
	 * on or off, and GTK_STATE_FLAG_INCONSISTENT determines whether it
	 * should be marked as undefined.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderCheck(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_check (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_check(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders an expander (as used in GtkTreeView and GtkExpander) in the area
	 * defined by x, y, width, height. The state GTK_STATE_FLAG_ACTIVE
	 * determines whether the expander is collapsed or expanded.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderExpander(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_expander (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_expander(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders a extension (as in a GtkNotebook tab) in the rectangle
	 * defined by x, y, width, height. The side where the extension
	 * connects to is defined by gap_side.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * gapSide = side where the gap is
	 * Since 3.0
	 */
	public void renderExtension(Context cr, double x, double y, double width, double height, GtkPositionType gapSide)
	{
		// void gtk_render_extension (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height,  GtkPositionType gap_side);
		gtk_render_extension(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height, gapSide);
	}
	
	/**
	 * Renders a focus indicator on the rectangle determined by x, y, width, height.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderFocus(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_focus (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_focus(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders a frame around the rectangle defined by x, y, width, height.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderFrame(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_frame (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_frame(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders a frame around the rectangle defined by (x, y, width, height),
	 * leaving a gap on one side. xy0_gap and xy1_gap will mean X coordinates
	 * for GTK_POS_TOP and GTK_POS_BOTTOM gap sides, and Y coordinates for
	 * GTK_POS_LEFT and GTK_POS_RIGHT.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * gapSide = side where the gap is
	 * xy0_Gap = initial coordinate (X or Y depending on gap_side) for the gap
	 * xy1_Gap = end coordinate (X or Y depending on gap_side) for the gap
	 * Since 3.0
	 */
	public void renderFrameGap(Context cr, double x, double y, double width, double height, GtkPositionType gapSide, double xy0_Gap, double xy1_Gap)
	{
		// void gtk_render_frame_gap (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height,  GtkPositionType gap_side,  gdouble xy0_gap,  gdouble xy1_gap);
		gtk_render_frame_gap(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height, gapSide, xy0_Gap, xy1_Gap);
	}
	
	/**
	 * Renders a handle (as in GtkHandleBox, GtkPaned and
	 * GtkWindow's resize grip), in the rectangle
	 * determined by x, y, width, height.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderHandle(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_handle (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_handle(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders layout on the coordinates x, y
	 * Params:
	 * cr = a cairo_t
	 * x = X origin
	 * y = Y origin
	 * layout = the PangoLayout to render
	 * Since 3.0
	 */
	public void renderLayout(Context cr, double x, double y, PgLayout layout)
	{
		// void gtk_render_layout (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  PangoLayout *layout);
		gtk_render_layout(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Renders a line from (x0, y0) to (x1, y1).
	 * Params:
	 * cr = a cairo_t
	 * x0 = X coordinate for the origin of the line
	 * y0 = Y coordinate for the origin of the line
	 * x1 = X coordinate for the end of the line
	 * y1 = Y coordinate for the end of the line
	 * Since 3.0
	 */
	public void renderLine(Context cr, double x0, double y0, double x1, double y1)
	{
		// void gtk_render_line (GtkStyleContext *context,  cairo_t *cr,  gdouble x0,  gdouble y0,  gdouble x1,  gdouble y1);
		gtk_render_line(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x0, y0, x1, y1);
	}
	
	/**
	 * Renders an option mark (as in a GtkRadioButton), the GTK_STATE_FLAG_ACTIVE
	 * state will determine whether the option is on or off, and
	 * GTK_STATE_FLAG_INCONSISTENT whether it should be marked as undefined.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderOption(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_option (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_option(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders a slider (as in GtkScale) in the rectangle defined by x, y,
	 * width, height. orientation defines whether the slider is vertical
	 * or horizontal.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * orientation = orientation of the slider
	 * Since 3.0
	 */
	public void renderSlider(Context cr, double x, double y, double width, double height, GtkOrientation orientation)
	{
		// void gtk_render_slider (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height,  GtkOrientation orientation);
		gtk_render_slider(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height, orientation);
	}
	
	/**
	 * Renders an activity area (Such as in GtkSpinner or the
	 * fill line in GtkRange), the state GTK_STATE_FLAG_ACTIVE
	 * determines whether there is activity going on.
	 * Params:
	 * cr = a cairo_t
	 * x = X origin of the rectangle
	 * y = Y origin of the rectangle
	 * width = rectangle width
	 * height = rectangle height
	 * Since 3.0
	 */
	public void renderActivity(Context cr, double x, double y, double width, double height)
	{
		// void gtk_render_activity (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  gdouble width,  gdouble height);
		gtk_render_activity(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}
	
	/**
	 * Renders the icon specified by source at the given size, returning the result
	 * in a pixbuf.
	 * Params:
	 * source = the GtkIconSource specifying the icon to render
	 * size = the size to render the icon at. A size of (GtkIconSize) -1
	 * means render at the size of the source and don't scale. [type int]
	 * Returns: a newly-created GdkPixbuf containing the rendered icon. [transfer full] Since 3.0
	 */
	public Pixbuf renderIconPixbuf(IconSource source, GtkIconSize size)
	{
		// GdkPixbuf * gtk_render_icon_pixbuf (GtkStyleContext *context,  const GtkIconSource *source,  GtkIconSize size);
		auto p = gtk_render_icon_pixbuf(gtkStyleContext, (source is null) ? null : source.getIconSourceStruct(), size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Renders the icon in pixbuf at the specified x and y coordinates.
	 * Params:
	 * cr = a cairo_t
	 * pixbuf = a GdkPixbuf containing the icon to draw
	 * x = X position for the pixbuf
	 * y = Y position for the pixbuf
	 * Since 3.2
	 */
	public void renderIcon(Context cr, Pixbuf pixbuf, double x, double y)
	{
		// void gtk_render_icon (GtkStyleContext *context,  cairo_t *cr,  GdkPixbuf *pixbuf,  gdouble x,  gdouble y);
		gtk_render_icon(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), x, y);
	}
	
	/**
	 * Draws a text caret on cr at the specified index of layout.
	 * Params:
	 * cr = a cairo_t
	 * x = X origin
	 * y = Y origin
	 * layout = the PangoLayout of the text
	 * index = the index in the PangoLayout
	 * direction = the PangoDirection of the text
	 * Since 3.4
	 */
	public void renderInsertionCursor(Context cr, double x, double y, PgLayout layout, int index, PangoDirection direction)
	{
		// void gtk_render_insertion_cursor (GtkStyleContext *context,  cairo_t *cr,  gdouble x,  gdouble y,  PangoLayout *layout,  int index,  PangoDirection direction);
		gtk_render_insertion_cursor(gtkStyleContext, (cr is null) ? null : cr.getContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct(), index, direction);
	}
}
