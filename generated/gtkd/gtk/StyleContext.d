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


module gtk.StyleContext;

private import cairo.Context;
private import cairo.Surface;
private import gdk.FrameClock;
private import gdk.RGBA;
private import gdk.Screen;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.Border;
private import gtk.CssSection;
private import gtk.IconSet;
private import gtk.IconSource;
private import gtk.StyleProviderIF;
private import gtk.WidgetPath;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgFontDescription;
private import pango.PgLayout;
private import std.algorithm;


/**
 * #GtkStyleContext is an object that stores styling information affecting
 * a widget defined by #GtkWidgetPath.
 * 
 * In order to construct the final style information, #GtkStyleContext
 * queries information from all attached #GtkStyleProviders. Style providers
 * can be either attached explicitly to the context through
 * gtk_style_context_add_provider(), or to the screen through
 * gtk_style_context_add_provider_for_screen(). The resulting style is a
 * combination of all providers’ information in priority order.
 * 
 * For GTK+ widgets, any #GtkStyleContext returned by
 * gtk_widget_get_style_context() will already have a #GtkWidgetPath, a
 * #GdkScreen and RTL/LTR information set. The style context will also be
 * updated automatically if any of these settings change on the widget.
 * 
 * If you are using the theming layer standalone, you will need to set a
 * widget path and a screen yourself to the created style context through
 * gtk_style_context_set_path() and gtk_style_context_set_screen(), as well
 * as updating the context yourself using gtk_style_context_invalidate()
 * whenever any of the conditions change, such as a change in the
 * #GtkSettings:gtk-theme-name setting or a hierarchy change in the rendered
 * widget. See the “Foreign drawing“ example in gtk3-demo.
 * 
 * # Style Classes # {#gtkstylecontext-classes}
 * 
 * Widgets can add style classes to their context, which can be used to associate
 * different styles by class. The documentation for individual widgets lists
 * which style classes it uses itself, and which style classes may be added by
 * applications to affect their appearance.
 * 
 * GTK+ defines macros for a number of style classes.
 * 
 * # Style Regions
 * 
 * Widgets can also add regions with flags to their context. This feature is
 * deprecated and will be removed in a future GTK+ update. Please use style
 * classes instead.
 * 
 * GTK+ defines macros for a number of style regions.
 * 
 * # Custom styling in UI libraries and applications
 * 
 * If you are developing a library with custom #GtkWidgets that
 * render differently than standard components, you may need to add a
 * #GtkStyleProvider yourself with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
 * priority, either a #GtkCssProvider or a custom object implementing the
 * #GtkStyleProvider interface. This way themes may still attempt
 * to style your UI elements in a different way if needed so.
 * 
 * If you are using custom styling on an applications, you probably want then
 * to make your style information prevail to the theme’s, so you must use
 * a #GtkStyleProvider with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
 * priority, keep in mind that the user settings in
 * `XDG_CONFIG_HOME/gtk-3.0/gtk.css` will
 * still take precedence over your changes, as it uses the
 * %GTK_STYLE_PROVIDER_PRIORITY_USER priority.
 */
public class StyleContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkStyleContext* gtkStyleContext;

	/** Get the main Gtk struct */
	public GtkStyleContext* getStyleContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStyleContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyleContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStyleContext* gtkStyleContext, bool ownedRef = false)
	{
		this.gtkStyleContext = gtkStyleContext;
		super(cast(GObject*)gtkStyleContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_style_context_get_type();
	}

	/**
	 * Creates a standalone #GtkStyleContext, this style context
	 * won’t be attached to any widget, so you may want
	 * to call gtk_style_context_set_path() yourself.
	 *
	 * This function is only useful when using the theming layer
	 * separated from GTK+, if you are using #GtkStyleContext to
	 * theme #GtkWidgets, use gtk_widget_get_style_context()
	 * in order to get a style context ready to theme the widget.
	 *
	 * Returns: A newly created #GtkStyleContext.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_style_context_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStyleContext*) p, true);
	}

	/**
	 * Adds a global style provider to @screen, which will be used
	 * in style construction for all #GtkStyleContexts under @screen.
	 *
	 * GTK+ uses this to make styling information from #GtkSettings
	 * available.
	 *
	 * Note: If both priorities are the same, A #GtkStyleProvider
	 * added through gtk_style_context_add_provider() takes precedence
	 * over another added through this function.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *     provider = a #GtkStyleProvider
	 *     priority = the priority of the style provider. The lower
	 *         it is, the earlier it will be used in the style
	 *         construction. Typically this will be in the range
	 *         between %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 *         %GTK_STYLE_PROVIDER_PRIORITY_USER
	 *
	 * Since: 3.0
	 */
	public static void addProviderForScreen(Screen screen, StyleProviderIF provider, uint priority)
	{
		gtk_style_context_add_provider_for_screen((screen is null) ? null : screen.getScreenStruct(), (provider is null) ? null : provider.getStyleProviderStruct(), priority);
	}

	/**
	 * Removes @provider from the global style providers list in @screen.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *     provider = a #GtkStyleProvider
	 *
	 * Since: 3.0
	 */
	public static void removeProviderForScreen(Screen screen, StyleProviderIF provider)
	{
		gtk_style_context_remove_provider_for_screen((screen is null) ? null : screen.getScreenStruct(), (provider is null) ? null : provider.getStyleProviderStruct());
	}

	/**
	 * This function recomputes the styles for all widgets under a particular
	 * #GdkScreen. This is useful when some global parameter has changed that
	 * affects the appearance of all widgets, because when a widget gets a new
	 * style, it will both redraw and recompute any cached information about
	 * its appearance. As an example, it is used when the color scheme changes
	 * in the related #GtkSettings object.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 3.0
	 */
	public static void resetWidgets(Screen screen)
	{
		gtk_style_context_reset_widgets((screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Adds a style class to @context, so posterior calls to
	 * gtk_style_context_get() or any of the gtk_render_*()
	 * functions will make use of this new class for styling.
	 *
	 * In the CSS file format, a #GtkEntry defining a “search”
	 * class, would be matched by:
	 *
	 * |[ <!-- language="CSS" -->
	 * entry.search { ... }
	 * ]|
	 *
	 * While any widget defining a “search” class would be
	 * matched by:
	 * |[ <!-- language="CSS" -->
	 * .search { ... }
	 * ]|
	 *
	 * Params:
	 *     className = class name to use in styling
	 *
	 * Since: 3.0
	 */
	public void addClass(string className)
	{
		gtk_style_context_add_class(gtkStyleContext, Str.toStringz(className));
	}

	/**
	 * Adds a style provider to @context, to be used in style construction.
	 * Note that a style provider added by this function only affects
	 * the style of the widget to which @context belongs. If you want
	 * to affect the style of all widgets, use
	 * gtk_style_context_add_provider_for_screen().
	 *
	 * Note: If both priorities are the same, a #GtkStyleProvider
	 * added through this function takes precedence over another added
	 * through gtk_style_context_add_provider_for_screen().
	 *
	 * Params:
	 *     provider = a #GtkStyleProvider
	 *     priority = the priority of the style provider. The lower
	 *         it is, the earlier it will be used in the style
	 *         construction. Typically this will be in the range
	 *         between %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 *         %GTK_STYLE_PROVIDER_PRIORITY_USER
	 *
	 * Since: 3.0
	 */
	public void addProvider(StyleProviderIF provider, uint priority)
	{
		gtk_style_context_add_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderStruct(), priority);
	}

	/**
	 * Adds a region to @context, so posterior calls to
	 * gtk_style_context_get() or any of the gtk_render_*()
	 * functions will make use of this new region for styling.
	 *
	 * In the CSS file format, a #GtkTreeView defining a “row”
	 * region, would be matched by:
	 *
	 * |[ <!-- language="CSS" -->
	 * treeview row { ... }
	 * ]|
	 *
	 * Pseudo-classes are used for matching @flags, so the two
	 * following rules:
	 * |[ <!-- language="CSS" -->
	 * treeview row:nth-child(even) { ... }
	 * treeview row:nth-child(odd) { ... }
	 * ]|
	 *
	 * would apply to even and odd rows, respectively.
	 *
	 * Region names must only contain lowercase letters
	 * and “-”, starting always with a lowercase letter.
	 *
	 * Params:
	 *     regionName = region name to use in styling
	 *     flags = flags that apply to the region
	 *
	 * Since: 3.0
	 */
	public void addRegion(string regionName, GtkRegionFlags flags)
	{
		gtk_style_context_add_region(gtkStyleContext, Str.toStringz(regionName), flags);
	}

	/**
	 * Stops all running animations for @region_id and all animatable
	 * regions underneath.
	 *
	 * A %NULL @region_id will stop all ongoing animations in @context,
	 * when dealing with a #GtkStyleContext obtained through
	 * gtk_widget_get_style_context(), this is normally done for you
	 * in all circumstances you would expect all widget to be stopped,
	 * so this should be only used in complex widgets with different
	 * animatable regions.
	 *
	 * Deprecated: This function does nothing.
	 *
	 * Params:
	 *     regionId = animatable region to stop, or %NULL.
	 *         See gtk_style_context_push_animatable_region()
	 *
	 * Since: 3.0
	 */
	public void cancelAnimations(void* regionId)
	{
		gtk_style_context_cancel_animations(gtkStyleContext, regionId);
	}

	/**
	 * Gets the background color for a given state.
	 *
	 * This function is far less useful than it seems, and it should not be used in
	 * newly written code. CSS has no concept of "background color", as a background
	 * can be an image, or a gradient, or any other pattern including solid colors.
	 *
	 * The only reason why you would call gtk_style_context_get_background_color() is
	 * to use the returned value to draw the background with it; the correct way to
	 * achieve this result is to use gtk_render_background() instead, along with CSS
	 * style classes to modify the color to be rendered.
	 *
	 * Deprecated: Use gtk_render_background() instead.
	 *
	 * Params:
	 *     state = state to retrieve the color for
	 *     color = return value for the background color
	 *
	 * Since: 3.0
	 */
	public void getBackgroundColor(GtkStateFlags state, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		gtk_style_context_get_background_color(gtkStyleContext, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Gets the border for a given state as a #GtkBorder.
	 *
	 * See gtk_style_context_get_property() and
	 * #GTK_STYLE_PROPERTY_BORDER_WIDTH for details.
	 *
	 * Params:
	 *     state = state to retrieve the border for
	 *     border = return value for the border settings
	 *
	 * Since: 3.0
	 */
	public void getBorder(GtkStateFlags state, out Border border)
	{
		GtkBorder* outborder = sliceNew!GtkBorder();

		gtk_style_context_get_border(gtkStyleContext, state, outborder);

		border = ObjectG.getDObject!(Border)(outborder, true);
	}

	/**
	 * Gets the border color for a given state.
	 *
	 * Deprecated: Use gtk_render_frame() instead.
	 *
	 * Params:
	 *     state = state to retrieve the color for
	 *     color = return value for the border color
	 *
	 * Since: 3.0
	 */
	public void getBorderColor(GtkStateFlags state, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		gtk_style_context_get_border_color(gtkStyleContext, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Gets the foreground color for a given state.
	 *
	 * See gtk_style_context_get_property() and
	 * #GTK_STYLE_PROPERTY_COLOR for details.
	 *
	 * Params:
	 *     state = state to retrieve the color for
	 *     color = return value for the foreground color
	 *
	 * Since: 3.0
	 */
	public void getColor(GtkStateFlags state, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		gtk_style_context_get_color(gtkStyleContext, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Returns the widget direction used for rendering.
	 *
	 * Deprecated: Use gtk_style_context_get_state() and
	 * check for #GTK_STATE_FLAG_DIR_LTR and
	 * #GTK_STATE_FLAG_DIR_RTL instead.
	 *
	 * Returns: the widget direction
	 *
	 * Since: 3.0
	 */
	public GtkTextDirection getDirection()
	{
		return gtk_style_context_get_direction(gtkStyleContext);
	}

	/**
	 * Returns the font description for a given state. The returned
	 * object is const and will remain valid until the
	 * #GtkStyleContext::changed signal happens.
	 *
	 * Deprecated: Use gtk_style_context_get() for "font" or
	 * subproperties instead.
	 *
	 * Params:
	 *     state = state to retrieve the font for
	 *
	 * Returns: the #PangoFontDescription for the given
	 *     state.  This object is owned by GTK+ and should not be
	 *     freed.
	 *
	 * Since: 3.0
	 */
	public PgFontDescription getFont(GtkStateFlags state)
	{
		auto p = gtk_style_context_get_font(gtkStyleContext, state);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}

	/**
	 * Returns the #GdkFrameClock to which @context is attached.
	 *
	 * Returns: a #GdkFrameClock, or %NULL
	 *     if @context does not have an attached frame clock.
	 *
	 * Since: 3.8
	 */
	public FrameClock getFrameClock()
	{
		auto p = gtk_style_context_get_frame_clock(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) p);
	}

	/**
	 * Returns the sides where rendered elements connect visually with others.
	 *
	 * Returns: the junction sides
	 *
	 * Since: 3.0
	 */
	public GtkJunctionSides getJunctionSides()
	{
		return gtk_style_context_get_junction_sides(gtkStyleContext);
	}

	/**
	 * Gets the margin for a given state as a #GtkBorder.
	 * See gtk_style_property_get() and #GTK_STYLE_PROPERTY_MARGIN
	 * for details.
	 *
	 * Params:
	 *     state = state to retrieve the border for
	 *     margin = return value for the margin settings
	 *
	 * Since: 3.0
	 */
	public void getMargin(GtkStateFlags state, out Border margin)
	{
		GtkBorder* outmargin = sliceNew!GtkBorder();

		gtk_style_context_get_margin(gtkStyleContext, state, outmargin);

		margin = ObjectG.getDObject!(Border)(outmargin, true);
	}

	/**
	 * Gets the padding for a given state as a #GtkBorder.
	 * See gtk_style_context_get() and #GTK_STYLE_PROPERTY_PADDING
	 * for details.
	 *
	 * Params:
	 *     state = state to retrieve the padding for
	 *     padding = return value for the padding settings
	 *
	 * Since: 3.0
	 */
	public void getPadding(GtkStateFlags state, out Border padding)
	{
		GtkBorder* outpadding = sliceNew!GtkBorder();

		gtk_style_context_get_padding(gtkStyleContext, state, outpadding);

		padding = ObjectG.getDObject!(Border)(outpadding, true);
	}

	/**
	 * Gets the parent context set via gtk_style_context_set_parent().
	 * See that function for details.
	 *
	 * Returns: the parent context or %NULL
	 *
	 * Since: 3.4
	 */
	public StyleContext getParent()
	{
		auto p = gtk_style_context_get_parent(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
	}

	/**
	 * Returns the widget path used for style matching.
	 *
	 * Returns: A #GtkWidgetPath
	 *
	 * Since: 3.0
	 */
	public WidgetPath getPath()
	{
		auto p = gtk_style_context_get_path(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}

	/**
	 * Gets a style property from @context for the given state.
	 *
	 * Note that not all CSS properties that are supported by GTK+ can be
	 * retrieved in this way, since they may not be representable as #GValue.
	 * GTK+ defines macros for a number of properties that can be used
	 * with this function.
	 *
	 * Note that passing a state other than the current state of @context
	 * is not recommended unless the style context has been saved with
	 * gtk_style_context_save().
	 *
	 * When @value is no longer needed, g_value_unset() must be called
	 * to free any allocated memory.
	 *
	 * Params:
	 *     property = style property name
	 *     state = state to retrieve the property value for
	 *     value = return location for the style property value
	 *
	 * Since: 3.0
	 */
	public void getProperty(string property, GtkStateFlags state, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		gtk_style_context_get_property(gtkStyleContext, Str.toStringz(property), state, outvalue);

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Returns the scale used for assets.
	 *
	 * Returns: the scale
	 *
	 * Since: 3.10
	 */
	public int getScale()
	{
		return gtk_style_context_get_scale(gtkStyleContext);
	}

	/**
	 * Returns the #GdkScreen to which @context is attached.
	 *
	 * Returns: a #GdkScreen.
	 */
	public Screen getScreen()
	{
		auto p = gtk_style_context_get_screen(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Queries the location in the CSS where @property was defined for the
	 * current @context. Note that the state to be queried is taken from
	 * gtk_style_context_get_state().
	 *
	 * If the location is not available, %NULL will be returned. The
	 * location might not be available for various reasons, such as the
	 * property being overridden, @property not naming a supported CSS
	 * property or tracking of definitions being disabled for performance
	 * reasons.
	 *
	 * Shorthand CSS properties cannot be queried for a location and will
	 * always return %NULL.
	 *
	 * Params:
	 *     property = style property name
	 *
	 * Returns: %NULL or the section where a value
	 *     for @property was defined
	 */
	public CssSection getSection(string property)
	{
		auto p = gtk_style_context_get_section(gtkStyleContext, Str.toStringz(property));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p);
	}

	/**
	 * Returns the state used for style matching.
	 *
	 * This method should only be used to retrieve the #GtkStateFlags
	 * to pass to #GtkStyleContext methods, like gtk_style_context_get_padding().
	 * If you need to retrieve the current state of a #GtkWidget, use
	 * gtk_widget_get_state_flags().
	 *
	 * Returns: the state flags
	 *
	 * Since: 3.0
	 */
	public GtkStateFlags getState()
	{
		return gtk_style_context_get_state(gtkStyleContext);
	}

	/**
	 * Gets the value for a widget style property.
	 *
	 * When @value is no longer needed, g_value_unset() must be called
	 * to free any allocated memory.
	 *
	 * Params:
	 *     propertyName = the name of the widget style property
	 *     value = Return location for the property value
	 */
	public void getStyleProperty(string propertyName, Value value)
	{
		gtk_style_context_get_style_property(gtkStyleContext, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Retrieves several widget style properties from @context according to the
	 * current style.
	 *
	 * Params:
	 *     args = va_list of property name/return location pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void getStyleValist(void* args)
	{
		gtk_style_context_get_style_valist(gtkStyleContext, args);
	}

	/**
	 * Retrieves several style property values from @context for a given state.
	 *
	 * See gtk_style_context_get_property() for details.
	 *
	 * Params:
	 *     state = state to retrieve the property values for
	 *     args = va_list of property name/return location pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void getValist(GtkStateFlags state, void* args)
	{
		gtk_style_context_get_valist(gtkStyleContext, state, args);
	}

	/**
	 * Returns %TRUE if @context currently has defined the
	 * given class name.
	 *
	 * Params:
	 *     className = a class name
	 *
	 * Returns: %TRUE if @context has @class_name defined
	 *
	 * Since: 3.0
	 */
	public bool hasClass(string className)
	{
		return gtk_style_context_has_class(gtkStyleContext, Str.toStringz(className)) != 0;
	}

	/**
	 * Returns %TRUE if @context has the region defined.
	 * If @flags_return is not %NULL, it is set to the flags
	 * affecting the region.
	 *
	 * Params:
	 *     regionName = a region name
	 *     flagsReturn = return location for region flags
	 *
	 * Returns: %TRUE if region is defined
	 *
	 * Since: 3.0
	 */
	public bool hasRegion(string regionName, out GtkRegionFlags flagsReturn)
	{
		return gtk_style_context_has_region(gtkStyleContext, Str.toStringz(regionName), &flagsReturn) != 0;
	}

	/**
	 * Invalidates @context style information, so it will be reconstructed
	 * again. It is useful if you modify the @context and need the new
	 * information immediately.
	 *
	 * Deprecated: Style contexts are invalidated automatically.
	 *
	 * Since: 3.0
	 */
	public void invalidate()
	{
		gtk_style_context_invalidate(gtkStyleContext);
	}

	/**
	 * Returns the list of classes currently defined in @context.
	 *
	 * Returns: a #GList of
	 *     strings with the currently defined classes. The contents
	 *     of the list are owned by GTK+, but you must free the list
	 *     itself with g_list_free() when you are done with it.
	 *
	 * Since: 3.0
	 */
	public ListG listClasses()
	{
		auto p = gtk_style_context_list_classes(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the list of regions currently defined in @context.
	 *
	 * Returns: a #GList of
	 *     strings with the currently defined regions. The contents
	 *     of the list are owned by GTK+, but you must free the list
	 *     itself with g_list_free() when you are done with it.
	 *
	 * Since: 3.0
	 */
	public ListG listRegions()
	{
		auto p = gtk_style_context_list_regions(gtkStyleContext);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Looks up and resolves a color name in the @context color map.
	 *
	 * Params:
	 *     colorName = color name to lookup
	 *     color = Return location for the looked up color
	 *
	 * Returns: %TRUE if @color_name was found and resolved, %FALSE otherwise
	 */
	public bool lookupColor(string colorName, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		auto p = gtk_style_context_lookup_color(gtkStyleContext, Str.toStringz(colorName), outcolor) != 0;

		color = ObjectG.getDObject!(RGBA)(outcolor, true);

		return p;
	}

	/**
	 * Looks up @stock_id in the icon factories associated to @context and
	 * the default icon factory, returning an icon set if found, otherwise
	 * %NULL.
	 *
	 * Deprecated: Use gtk_icon_theme_lookup_icon() instead.
	 *
	 * Params:
	 *     stockId = an icon name
	 *
	 * Returns: The looked up %GtkIconSet, or %NULL
	 */
	public IconSet lookupIconSet(string stockId)
	{
		auto p = gtk_style_context_lookup_icon_set(gtkStyleContext, Str.toStringz(stockId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}

	/**
	 * Notifies a state change on @context, so if the current style makes use
	 * of transition animations, one will be started so all rendered elements
	 * under @region_id are animated for state @state being set to value
	 * @state_value.
	 *
	 * The @window parameter is used in order to invalidate the rendered area
	 * as the animation runs, so make sure it is the same window that is being
	 * rendered on by the gtk_render_*() functions.
	 *
	 * If @region_id is %NULL, all rendered elements using @context will be
	 * affected by this state transition.
	 *
	 * As a practical example, a #GtkButton notifying a state transition on
	 * the prelight state:
	 * |[ <!-- language="C" -->
	 * gtk_style_context_notify_state_change (context,
	 * gtk_widget_get_window (widget),
	 * NULL,
	 * GTK_STATE_PRELIGHT,
	 * button->in_button);
	 * ]|
	 *
	 * Can be handled in the CSS file like this:
	 * |[ <!-- language="CSS" -->
	 * button {
	 * background-color: #f00
	 * }
	 *
	 * button:hover {
	 * background-color: #fff;
	 * transition: 200ms linear
	 * }
	 * ]|
	 *
	 * This combination will animate the button background from red to white
	 * if a pointer enters the button, and back to red if the pointer leaves
	 * the button.
	 *
	 * Note that @state is used when finding the transition parameters, which
	 * is why the style places the transition under the :hover pseudo-class.
	 *
	 * Deprecated: This function does nothing.
	 *
	 * Params:
	 *     window = a #GdkWindow
	 *     regionId = animatable region to notify on, or %NULL.
	 *         See gtk_style_context_push_animatable_region()
	 *     state = state to trigger transition for
	 *     stateValue = %TRUE if @state is the state we are changing to,
	 *         %FALSE if we are changing away from it
	 *
	 * Since: 3.0
	 */
	public void notifyStateChange(Window window, void* regionId, GtkStateType state, bool stateValue)
	{
		gtk_style_context_notify_state_change(gtkStyleContext, (window is null) ? null : window.getWindowStruct(), regionId, state, stateValue);
	}

	/**
	 * Pops an animatable region from @context.
	 * See gtk_style_context_push_animatable_region().
	 *
	 * Deprecated: This function does nothing.
	 *
	 * Since: 3.0
	 */
	public void popAnimatableRegion()
	{
		gtk_style_context_pop_animatable_region(gtkStyleContext);
	}

	/**
	 * Pushes an animatable region, so all further gtk_render_*() calls between
	 * this call and the following gtk_style_context_pop_animatable_region()
	 * will potentially show transition animations for this region if
	 * gtk_style_context_notify_state_change() is called for a given state,
	 * and the current theme/style defines transition animations for state
	 * changes.
	 *
	 * The @region_id used must be unique in @context so the themes
	 * can uniquely identify rendered elements subject to a state transition.
	 *
	 * Deprecated: This function does nothing.
	 *
	 * Params:
	 *     regionId = unique identifier for the animatable region
	 *
	 * Since: 3.0
	 */
	public void pushAnimatableRegion(void* regionId)
	{
		gtk_style_context_push_animatable_region(gtkStyleContext, regionId);
	}

	/**
	 * Removes @class_name from @context.
	 *
	 * Params:
	 *     className = class name to remove
	 *
	 * Since: 3.0
	 */
	public void removeClass(string className)
	{
		gtk_style_context_remove_class(gtkStyleContext, Str.toStringz(className));
	}

	/**
	 * Removes @provider from the style providers list in @context.
	 *
	 * Params:
	 *     provider = a #GtkStyleProvider
	 *
	 * Since: 3.0
	 */
	public void removeProvider(StyleProviderIF provider)
	{
		gtk_style_context_remove_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderStruct());
	}

	/**
	 * Removes a region from @context.
	 *
	 * Params:
	 *     regionName = region name to unset
	 *
	 * Since: 3.0
	 */
	public void removeRegion(string regionName)
	{
		gtk_style_context_remove_region(gtkStyleContext, Str.toStringz(regionName));
	}

	/**
	 * Restores @context state to a previous stage.
	 * See gtk_style_context_save().
	 *
	 * Since: 3.0
	 */
	public void restore()
	{
		gtk_style_context_restore(gtkStyleContext);
	}

	/**
	 * Saves the @context state, so temporary modifications done through
	 * gtk_style_context_add_class(), gtk_style_context_remove_class(),
	 * gtk_style_context_set_state(), etc. can quickly be reverted
	 * in one go through gtk_style_context_restore().
	 *
	 * The matching call to gtk_style_context_restore() must be done
	 * before GTK returns to the main loop.
	 *
	 * Since: 3.0
	 */
	public void save()
	{
		gtk_style_context_save(gtkStyleContext);
	}

	/**
	 * This function is analogous to gdk_window_scroll(), and
	 * should be called together with it so the invalidation
	 * areas for any ongoing animation are scrolled together
	 * with it.
	 *
	 * Deprecated: This function does nothing.
	 *
	 * Params:
	 *     window = a #GdkWindow used previously in
	 *         gtk_style_context_notify_state_change()
	 *     dx = Amount to scroll in the X axis
	 *     dy = Amount to scroll in the Y axis
	 *
	 * Since: 3.0
	 */
	public void scrollAnimations(Window window, int dx, int dy)
	{
		gtk_style_context_scroll_animations(gtkStyleContext, (window is null) ? null : window.getWindowStruct(), dx, dy);
	}

	/**
	 * Sets the background of @window to the background pattern or
	 * color specified in @context for its current state.
	 *
	 * Deprecated: Use gtk_render_background() instead.
	 * Note that clients still using this function are now responsible
	 * for calling this function again whenever @context is invalidated.
	 *
	 * Params:
	 *     window = a #GdkWindow
	 *
	 * Since: 3.0
	 */
	public void setBackground(Window window)
	{
		gtk_style_context_set_background(gtkStyleContext, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Sets the reading direction for rendering purposes.
	 *
	 * If you are using a #GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 *
	 * Deprecated: Use gtk_style_context_set_state() with
	 * #GTK_STATE_FLAG_DIR_LTR and #GTK_STATE_FLAG_DIR_RTL
	 * instead.
	 *
	 * Params:
	 *     direction = the new direction.
	 *
	 * Since: 3.0
	 */
	public void setDirection(GtkTextDirection direction)
	{
		gtk_style_context_set_direction(gtkStyleContext, direction);
	}

	/**
	 * Attaches @context to the given frame clock.
	 *
	 * The frame clock is used for the timing of animations.
	 *
	 * If you are using a #GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 *
	 * Params:
	 *     frameClock = a #GdkFrameClock
	 *
	 * Since: 3.8
	 */
	public void setFrameClock(FrameClock frameClock)
	{
		gtk_style_context_set_frame_clock(gtkStyleContext, (frameClock is null) ? null : frameClock.getFrameClockStruct());
	}

	/**
	 * Sets the sides where rendered elements (mostly through
	 * gtk_render_frame()) will visually connect with other visual elements.
	 *
	 * This is merely a hint that may or may not be honored
	 * by themes.
	 *
	 * Container widgets are expected to set junction hints as appropriate
	 * for their children, so it should not normally be necessary to call
	 * this function manually.
	 *
	 * Params:
	 *     sides = sides where rendered elements are visually connected to
	 *         other elements
	 *
	 * Since: 3.0
	 */
	public void setJunctionSides(GtkJunctionSides sides)
	{
		gtk_style_context_set_junction_sides(gtkStyleContext, sides);
	}

	/**
	 * Sets the parent style context for @context. The parent style
	 * context is used to implement
	 * [inheritance](http://www.w3.org/TR/css3-cascade/#inheritance)
	 * of properties.
	 *
	 * If you are using a #GtkStyleContext returned from
	 * gtk_widget_get_style_context(), the parent will be set for you.
	 *
	 * Params:
	 *     parent = the new parent or %NULL
	 *
	 * Since: 3.4
	 */
	public void setParent(StyleContext parent)
	{
		gtk_style_context_set_parent(gtkStyleContext, (parent is null) ? null : parent.getStyleContextStruct());
	}

	/**
	 * Sets the #GtkWidgetPath used for style matching. As a
	 * consequence, the style will be regenerated to match
	 * the new given path.
	 *
	 * If you are using a #GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to call
	 * this yourself.
	 *
	 * Params:
	 *     path = a #GtkWidgetPath
	 *
	 * Since: 3.0
	 */
	public void setPath(WidgetPath path)
	{
		gtk_style_context_set_path(gtkStyleContext, (path is null) ? null : path.getWidgetPathStruct());
	}

	/**
	 * Sets the scale to use when getting image assets for the style.
	 *
	 * Params:
	 *     scale = scale
	 *
	 * Since: 3.10
	 */
	public void setScale(int scale)
	{
		gtk_style_context_set_scale(gtkStyleContext, scale);
	}

	/**
	 * Attaches @context to the given screen.
	 *
	 * The screen is used to add style information from “global” style
	 * providers, such as the screens #GtkSettings instance.
	 *
	 * If you are using a #GtkStyleContext returned from
	 * gtk_widget_get_style_context(), you do not need to
	 * call this yourself.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 3.0
	 */
	public void setScreen(Screen screen)
	{
		gtk_style_context_set_screen(gtkStyleContext, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Sets the state to be used for style matching.
	 *
	 * Params:
	 *     flags = state to represent
	 *
	 * Since: 3.0
	 */
	public void setState(GtkStateFlags flags)
	{
		gtk_style_context_set_state(gtkStyleContext, flags);
	}

	/**
	 * Returns %TRUE if there is a transition animation running for the
	 * current region (see gtk_style_context_push_animatable_region()).
	 *
	 * If @progress is not %NULL, the animation progress will be returned
	 * there, 0.0 means the state is closest to being unset, while 1.0 means
	 * it’s closest to being set. This means transition animation will
	 * run from 0 to 1 when @state is being set and from 1 to 0 when
	 * it’s being unset.
	 *
	 * Deprecated: This function always returns %FALSE
	 *
	 * Params:
	 *     state = a widget state
	 *     progress = return location for the transition progress
	 *
	 * Returns: %TRUE if there is a running transition animation for @state.
	 *
	 * Since: 3.0
	 */
	public bool stateIsRunning(GtkStateType state, out double progress)
	{
		return gtk_style_context_state_is_running(gtkStyleContext, state, &progress) != 0;
	}

	/**
	 * Converts the style context into a string representation.
	 *
	 * The string representation always includes information about
	 * the name, state, id, visibility and style classes of the CSS
	 * node that is backing @context. Depending on the flags, more
	 * information may be included.
	 *
	 * This function is intended for testing and debugging of the
	 * CSS implementation in GTK+. There are no guarantees about
	 * the format of the returned string, it may change.
	 *
	 * Params:
	 *     flags = Flags that determine what to print
	 *
	 * Returns: a newly allocated string representing @context
	 *
	 * Since: 3.20
	 */
	public string toString(GtkStyleContextPrintFlags flags)
	{
		auto retStr = gtk_style_context_to_string(gtkStyleContext, flags);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * The ::changed signal is emitted when there is a change in the
	 * #GtkStyleContext.
	 *
	 * For a #GtkStyleContext returned by gtk_widget_get_style_context(), the
	 * #GtkWidget::style-updated signal/vfunc might be more convenient to use.
	 *
	 * This signal is useful when using the theming layer standalone.
	 *
	 * Since: 3.0
	 */
	gulong addOnChanged(void delegate(StyleContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Renders an activity indicator (such as in #GtkSpinner).
	 * The state %GTK_STATE_FLAG_CHECKED determines whether there is
	 * activity going on.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderActivity(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_activity((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders an arrow pointing to @angle.
	 *
	 * Typical arrow rendering at 0, 1⁄2 π;, π; and 3⁄2 π:
	 *
	 * ![](arrows.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     angle = arrow angle from 0 to 2 * %G_PI, being 0 the arrow pointing to the north
	 *     x = X origin of the render area
	 *     y = Y origin of the render area
	 *     size = square side for render area
	 *
	 * Since: 3.0
	 */
	public static void renderArrow(StyleContext context, Context cr, double angle, double x, double y, double size)
	{
		gtk_render_arrow((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), angle, x, y, size);
	}

	/**
	 * Renders the background of an element.
	 *
	 * Typical background rendering, showing the effect of
	 * `background-image`, `border-width` and `border-radius`:
	 *
	 * ![](background.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0.
	 */
	public static void renderBackground(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_background((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Returns the area that will be affected (i.e. drawn to) when
	 * calling gtk_render_background() for the given @context and
	 * rectangle.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *     outClip = return location for the clip
	 *
	 * Since: 3.20
	 */
	public static void renderBackgroundGetClip(StyleContext context, double x, double y, double width, double height, out GdkRectangle outClip)
	{
		gtk_render_background_get_clip((context is null) ? null : context.getStyleContextStruct(), x, y, width, height, &outClip);
	}

	/**
	 * Renders a checkmark (as in a #GtkCheckButton).
	 *
	 * The %GTK_STATE_FLAG_CHECKED state determines whether the check is
	 * on or off, and %GTK_STATE_FLAG_INCONSISTENT determines whether it
	 * should be marked as undefined.
	 *
	 * Typical checkmark rendering:
	 *
	 * ![](checks.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderCheck(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_check((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders an expander (as used in #GtkTreeView and #GtkExpander) in the area
	 * defined by @x, @y, @width, @height. The state %GTK_STATE_FLAG_CHECKED
	 * determines whether the expander is collapsed or expanded.
	 *
	 * Typical expander rendering:
	 *
	 * ![](expanders.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderExpander(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_expander((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders a extension (as in a #GtkNotebook tab) in the rectangle
	 * defined by @x, @y, @width, @height. The side where the extension
	 * connects to is defined by @gap_side.
	 *
	 * Typical extension rendering:
	 *
	 * ![](extensions.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *     gapSide = side where the gap is
	 *
	 * Since: 3.0
	 */
	public static void renderExtension(StyleContext context, Context cr, double x, double y, double width, double height, GtkPositionType gapSide)
	{
		gtk_render_extension((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height, gapSide);
	}

	/**
	 * Renders a focus indicator on the rectangle determined by @x, @y, @width, @height.
	 *
	 * Typical focus rendering:
	 *
	 * ![](focus.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderFocus(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_focus((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders a frame around the rectangle defined by @x, @y, @width, @height.
	 *
	 * Examples of frame rendering, showing the effect of `border-image`,
	 * `border-color`, `border-width`, `border-radius` and junctions:
	 *
	 * ![](frames.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderFrame(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_frame((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders a frame around the rectangle defined by (@x, @y, @width, @height),
	 * leaving a gap on one side. @xy0_gap and @xy1_gap will mean X coordinates
	 * for %GTK_POS_TOP and %GTK_POS_BOTTOM gap sides, and Y coordinates for
	 * %GTK_POS_LEFT and %GTK_POS_RIGHT.
	 *
	 * Typical rendering of a frame with a gap:
	 *
	 * ![](frame-gap.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *     gapSide = side where the gap is
	 *     xy0Gap = initial coordinate (X or Y depending on @gap_side) for the gap
	 *     xy1Gap = end coordinate (X or Y depending on @gap_side) for the gap
	 *
	 * Since: 3.0
	 */
	public static void renderFrameGap(StyleContext context, Context cr, double x, double y, double width, double height, GtkPositionType gapSide, double xy0Gap, double xy1Gap)
	{
		gtk_render_frame_gap((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height, gapSide, xy0Gap, xy1Gap);
	}

	/**
	 * Renders a handle (as in #GtkHandleBox, #GtkPaned and
	 * #GtkWindow’s resize grip), in the rectangle
	 * determined by @x, @y, @width, @height.
	 *
	 * Handles rendered for the paned and grip classes:
	 *
	 * ![](handles.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderHandle(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_handle((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders the icon in @pixbuf at the specified @x and @y coordinates.
	 *
	 * This function will render the icon in @pixbuf at exactly its size,
	 * regardless of scaling factors, which may not be appropriate when
	 * drawing on displays with high pixel densities.
	 *
	 * You probably want to use gtk_render_icon_surface() instead, if you
	 * already have a Cairo surface.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     pixbuf = a #GdkPixbuf containing the icon to draw
	 *     x = X position for the @pixbuf
	 *     y = Y position for the @pixbuf
	 *
	 * Since: 3.2
	 */
	public static void renderIcon(StyleContext context, Context cr, Pixbuf pixbuf, double x, double y)
	{
		gtk_render_icon((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), x, y);
	}

	/**
	 * Renders the icon specified by @source at the given @size, returning the result
	 * in a pixbuf.
	 *
	 * Deprecated: Use gtk_icon_theme_load_icon() instead.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     source = the #GtkIconSource specifying the icon to render
	 *     size = the size (#GtkIconSize) to render the icon at.
	 *         A size of `(GtkIconSize) -1` means render at the size of the source
	 *         and don’t scale.
	 *
	 * Returns: a newly-created #GdkPixbuf containing the rendered icon
	 *
	 * Since: 3.0
	 */
	public static Pixbuf renderIconPixbuf(StyleContext context, IconSource source, GtkIconSize size)
	{
		auto p = gtk_render_icon_pixbuf((context is null) ? null : context.getStyleContextStruct(), (source is null) ? null : source.getIconSourceStruct(), size);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Renders the icon in @surface at the specified @x and @y coordinates.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     surface = a #cairo_surface_t containing the icon to draw
	 *     x = X position for the @icon
	 *     y = Y position for the @incon
	 *
	 * Since: 3.10
	 */
	public static void renderIconSurface(StyleContext context, Context cr, Surface surface, double x, double y)
	{
		gtk_render_icon_surface((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), (surface is null) ? null : surface.getSurfaceStruct(), x, y);
	}

	/**
	 * Draws a text caret on @cr at the specified index of @layout.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin
	 *     y = Y origin
	 *     layout = the #PangoLayout of the text
	 *     index = the index in the #PangoLayout
	 *     direction = the #PangoDirection of the text
	 *
	 * Since: 3.4
	 */
	public static void renderInsertionCursor(StyleContext context, Context cr, double x, double y, PgLayout layout, int index, PangoDirection direction)
	{
		gtk_render_insertion_cursor((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct(), index, direction);
	}

	/**
	 * Renders @layout on the coordinates @x, @y
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin
	 *     y = Y origin
	 *     layout = the #PangoLayout to render
	 *
	 * Since: 3.0
	 */
	public static void renderLayout(StyleContext context, Context cr, double x, double y, PgLayout layout)
	{
		gtk_render_layout((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}

	/**
	 * Renders a line from (x0, y0) to (x1, y1).
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x0 = X coordinate for the origin of the line
	 *     y0 = Y coordinate for the origin of the line
	 *     x1 = X coordinate for the end of the line
	 *     y1 = Y coordinate for the end of the line
	 *
	 * Since: 3.0
	 */
	public static void renderLine(StyleContext context, Context cr, double x0, double y0, double x1, double y1)
	{
		gtk_render_line((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x0, y0, x1, y1);
	}

	/**
	 * Renders an option mark (as in a #GtkRadioButton), the %GTK_STATE_FLAG_CHECKED
	 * state will determine whether the option is on or off, and
	 * %GTK_STATE_FLAG_INCONSISTENT whether it should be marked as undefined.
	 *
	 * Typical option mark rendering:
	 *
	 * ![](options.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *
	 * Since: 3.0
	 */
	public static void renderOption(StyleContext context, Context cr, double x, double y, double width, double height)
	{
		gtk_render_option((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height);
	}

	/**
	 * Renders a slider (as in #GtkScale) in the rectangle defined by @x, @y,
	 * @width, @height. @orientation defines whether the slider is vertical
	 * or horizontal.
	 *
	 * Typical slider rendering:
	 *
	 * ![](sliders.png)
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cr = a #cairo_t
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 *     orientation = orientation of the slider
	 *
	 * Since: 3.0
	 */
	public static void renderSlider(StyleContext context, Context cr, double x, double y, double width, double height, GtkOrientation orientation)
	{
		gtk_render_slider((context is null) ? null : context.getStyleContextStruct(), (cr is null) ? null : cr.getContextStruct(), x, y, width, height, orientation);
	}
}
