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


module gtk.ThemingEngine;

private import gdk.RGBA;
private import gdk.Screen;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.Border;
private import gtk.WidgetPath;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgFontDescription;


/**
 * #GtkThemingEngine was the object used for rendering themed content
 * in GTK+ widgets. It used to allow overriding GTK+'s default
 * implementation of rendering functions by allowing engines to be
 * loaded as modules.
 * 
 * #GtkThemingEngine has been deprecated in GTK+ 3.14 and will be
 * ignored for rendering. The advancements in CSS theming are good
 * enough to allow themers to achieve their goals without the need
 * to modify source code.
 */
public class ThemingEngine : ObjectG
{
	/** the main Gtk struct */
	protected GtkThemingEngine* gtkThemingEngine;

	/** Get the main Gtk struct */
	public GtkThemingEngine* getThemingEngineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkThemingEngine;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkThemingEngine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkThemingEngine* gtkThemingEngine, bool ownedRef = false)
	{
		this.gtkThemingEngine = gtkThemingEngine;
		super(cast(GObject*)gtkThemingEngine, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_theming_engine_get_type();
	}

	/**
	 * Loads and initializes a theming engine module from the
	 * standard directories.
	 *
	 * Params:
	 *     name = Theme engine name to load
	 *
	 * Returns: A theming engine, or %NULL if
	 *     the engine @name doesn’t exist.
	 */
	public static ThemingEngine load(string name)
	{
		auto p = gtk_theming_engine_load(Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ThemingEngine)(cast(GtkThemingEngine*) p);
	}

	/**
	 * Registers a property so it can be used in the CSS file format,
	 * on the CSS file the property will look like
	 * "-${@name_space}-${property_name}". being
	 * ${property_name} the given to @pspec. @name_space will usually
	 * be the theme engine name.
	 *
	 * For any type a @parse_func may be provided, being this function
	 * used for turning any property value (between “:” and “;”) in
	 * CSS to the #GValue needed. For basic types there is already
	 * builtin parsing support, so %NULL may be provided for these
	 * cases.
	 *
	 * Engines must ensure property registration happens exactly once,
	 * usually GTK+ deals with theming engines as singletons, so this
	 * should be guaranteed to happen once, but bear this in mind
	 * when creating #GtkThemeEngines yourself.
	 *
	 * In order to make use of the custom registered properties in
	 * the CSS file, make sure the engine is loaded first by specifying
	 * the engine property, either in a previous rule or within the same
	 * one.
	 * |[
	 * * {
	 * engine: someengine;
	 * -SomeEngine-custom-property: 2;
	 * }
	 * ]|
	 *
	 * Deprecated: Code should use the default properties provided by CSS.
	 *
	 * Params:
	 *     nameSpace = namespace for the property name
	 *     parseFunc = parsing function to use, or %NULL
	 *     pspec = the #GParamSpec for the new property
	 *
	 * Since: 3.0
	 */
	public static void registerProperty(string nameSpace, GtkStylePropertyParser parseFunc, ParamSpec pspec)
	{
		gtk_theming_engine_register_property(Str.toStringz(nameSpace), parseFunc, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Gets the background color for a given state.
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

		gtk_theming_engine_get_background_color(gtkThemingEngine, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Gets the border for a given state as a #GtkBorder.
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

		gtk_theming_engine_get_border(gtkThemingEngine, state, outborder);

		border = ObjectG.getDObject!(Border)(outborder, true);
	}

	/**
	 * Gets the border color for a given state.
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

		gtk_theming_engine_get_border_color(gtkThemingEngine, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Gets the foreground color for a given state.
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

		gtk_theming_engine_get_color(gtkThemingEngine, state, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Returns the widget direction used for rendering.
	 *
	 * Deprecated: Use gtk_theming_engine_get_state() and
	 * check for #GTK_STATE_FLAG_DIR_LTR and
	 * #GTK_STATE_FLAG_DIR_RTL instead.
	 *
	 * Returns: the widget direction
	 *
	 * Since: 3.0
	 */
	public GtkTextDirection getDirection()
	{
		return gtk_theming_engine_get_direction(gtkThemingEngine);
	}

	/**
	 * Returns the font description for a given state.
	 *
	 * Deprecated: Use gtk_theming_engine_get()
	 *
	 * Params:
	 *     state = state to retrieve the font for
	 *
	 * Returns: the #PangoFontDescription for the given
	 *     state. This object is owned by GTK+ and should not be
	 *     freed.
	 *
	 * Since: 3.0
	 */
	public PgFontDescription getFont(GtkStateFlags state)
	{
		auto p = gtk_theming_engine_get_font(gtkThemingEngine, state);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}

	/**
	 * Returns the widget direction used for rendering.
	 *
	 * Returns: the widget direction
	 *
	 * Since: 3.0
	 */
	public GtkJunctionSides getJunctionSides()
	{
		return gtk_theming_engine_get_junction_sides(gtkThemingEngine);
	}

	/**
	 * Gets the margin for a given state as a #GtkBorder.
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

		gtk_theming_engine_get_margin(gtkThemingEngine, state, outmargin);

		margin = ObjectG.getDObject!(Border)(outmargin, true);
	}

	/**
	 * Gets the padding for a given state as a #GtkBorder.
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

		gtk_theming_engine_get_padding(gtkThemingEngine, state, outpadding);

		padding = ObjectG.getDObject!(Border)(outpadding, true);
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
		auto p = gtk_theming_engine_get_path(gtkThemingEngine);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}

	/**
	 * Gets a property value as retrieved from the style settings that apply
	 * to the currently rendered element.
	 *
	 * Params:
	 *     property = the property name
	 *     state = state to retrieve the value for
	 *     value = return location for the property value,
	 *         you must free this memory using g_value_unset() once you are
	 *         done with it.
	 *
	 * Since: 3.0
	 */
	public void getProperty(string property, GtkStateFlags state, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		gtk_theming_engine_get_property(gtkThemingEngine, Str.toStringz(property), state, outvalue);

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Returns the #GdkScreen to which @engine currently rendering to.
	 *
	 * Returns: a #GdkScreen, or %NULL.
	 */
	public Screen getScreen()
	{
		auto p = gtk_theming_engine_get_screen(gtkThemingEngine);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * returns the state used when rendering.
	 *
	 * Returns: the state flags
	 *
	 * Since: 3.0
	 */
	public GtkStateFlags getState()
	{
		return gtk_theming_engine_get_state(gtkThemingEngine);
	}

	/**
	 * Gets the value for a widget style property.
	 *
	 * Params:
	 *     propertyName = the name of the widget style property
	 *     value = Return location for the property value, free with
	 *         g_value_unset() after use.
	 *
	 * Since: 3.0
	 */
	public void getStyleProperty(string propertyName, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		gtk_theming_engine_get_style_property(gtkThemingEngine, Str.toStringz(propertyName), outvalue);

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Retrieves several widget style properties from @engine according to the
	 * currently rendered content’s style.
	 *
	 * Params:
	 *     args = va_list of property name/return location pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void getStyleValist(void* args)
	{
		gtk_theming_engine_get_style_valist(gtkThemingEngine, args);
	}

	/**
	 * Retrieves several style property values that apply to the currently
	 * rendered element.
	 *
	 * Params:
	 *     state = state to retrieve values for
	 *     args = va_list of property name/return location pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void getValist(GtkStateFlags state, void* args)
	{
		gtk_theming_engine_get_valist(gtkThemingEngine, state, args);
	}

	/**
	 * Returns %TRUE if the currently rendered contents have
	 * defined the given class name.
	 *
	 * Params:
	 *     styleClass = class name to look up
	 *
	 * Returns: %TRUE if @engine has @class_name defined
	 *
	 * Since: 3.0
	 */
	public bool hasClass(string styleClass)
	{
		return gtk_theming_engine_has_class(gtkThemingEngine, Str.toStringz(styleClass)) != 0;
	}

	/**
	 * Returns %TRUE if the currently rendered contents have the
	 * region defined. If @flags_return is not %NULL, it is set
	 * to the flags affecting the region.
	 *
	 * Params:
	 *     styleRegion = a region name
	 *     flags = return location for region flags
	 *
	 * Returns: %TRUE if region is defined
	 *
	 * Since: 3.0
	 */
	public bool hasRegion(string styleRegion, out GtkRegionFlags flags)
	{
		return gtk_theming_engine_has_region(gtkThemingEngine, Str.toStringz(styleRegion), &flags) != 0;
	}

	/**
	 * Looks up and resolves a color name in the current style’s color map.
	 *
	 * Params:
	 *     colorName = color name to lookup
	 *     color = Return location for the looked up color
	 *
	 * Returns: %TRUE if @color_name was found and resolved, %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public bool lookupColor(string colorName, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		auto p = gtk_theming_engine_lookup_color(gtkThemingEngine, Str.toStringz(colorName), outcolor) != 0;

		color = ObjectG.getDObject!(RGBA)(outcolor, true);

		return p;
	}

	/**
	 * Returns %TRUE if there is a transition animation running for the
	 * current region (see gtk_style_context_push_animatable_region()).
	 *
	 * If @progress is not %NULL, the animation progress will be returned
	 * there, 0.0 means the state is closest to being %FALSE, while 1.0 means
	 * it’s closest to being %TRUE. This means transition animations will
	 * run from 0 to 1 when @state is being set to %TRUE and from 1 to 0 when
	 * it’s being set to %FALSE.
	 *
	 * Deprecated: Always returns %FALSE
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
		return gtk_theming_engine_state_is_running(gtkThemingEngine, state, &progress) != 0;
	}
}
