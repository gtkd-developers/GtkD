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
 * inFile  = GtkThemingEngine.html
 * outPack = gtk
 * outFile = ThemingEngine
 * strct   = GtkThemingEngine
 * realStrct=
 * ctorStrct=
 * clss    = ThemingEngine
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_theming_engine_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdarg
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gdk.RGBA
 * 	- gdk.Screen
 * 	- gtk.WidgetPath
 * 	- pango.PgFontDescription
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GdkRGBA* -> RGBA
 * 	- GdkScreen* -> Screen
 * 	- GtkThemingEngine* -> ThemingEngine
 * 	- GtkWidgetPath* -> WidgetPath
 * 	- PangoFontDescription* -> PgFontDescription
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ThemingEngine;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ParamSpec;
private import gobject.Value;
private import gdk.RGBA;
private import gdk.Screen;
private import gtk.WidgetPath;
private import pango.PgFontDescription;


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
 * GtkThemingEngine is the object used for rendering themed content
 * in GTK+ widgets. Even though GTK+ has a default implementation,
 * it can be overridden in CSS files by enforcing a GtkThemingEngine
 * object to be loaded as a module.
 *
 * In order to implement a theming engine, a GtkThemingEngine subclass
 * must be created, alongside the CSS file that will reference it, the
 * theming engine would be created as an .so library, and installed in
 * $(gtk-modules-dir)/theming-engines/.
 *
 * GtkThemingEngines have limited access to the object they are
 * rendering, the GtkThemingEngine API has read-only accessors to the
 * style information contained in the rendered object's GtkStyleContext.
 */
public class ThemingEngine : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkThemingEngine* gtkThemingEngine;
	
	
	public GtkThemingEngine* getThemingEngineStruct()
	{
		return gtkThemingEngine;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkThemingEngine;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkThemingEngine* gtkThemingEngine)
	{
		super(cast(GObject*)gtkThemingEngine);
		this.gtkThemingEngine = gtkThemingEngine;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkThemingEngine = cast(GtkThemingEngine*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_theming_engine_get_direction has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_theming_engine_get_state() and
	 *  check for GTK_STATE_FLAG_DIR_LTR and
	 *  GTK_STATE_FLAG_DIR_RTL instead.
	 * Returns the widget direction used for rendering.
	 * Returns: the widget direction Since 3.0
	 */
	public GtkTextDirection getDirection()
	{
		// GtkTextDirection gtk_theming_engine_get_direction (GtkThemingEngine *engine);
		return gtk_theming_engine_get_direction(gtkThemingEngine);
	}
	
	/**
	 * Returns the widget direction used for rendering.
	 * Returns: the widget direction Since 3.0
	 */
	public GtkJunctionSides getJunctionSides()
	{
		// GtkJunctionSides gtk_theming_engine_get_junction_sides  (GtkThemingEngine *engine);
		return gtk_theming_engine_get_junction_sides(gtkThemingEngine);
	}
	
	/**
	 * Returns the widget path used for style matching.
	 * Returns: A GtkWidgetPath. [transfer none] Since 3.0
	 */
	public WidgetPath getPath()
	{
		// const GtkWidgetPath * gtk_theming_engine_get_path (GtkThemingEngine *engine);
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
	 * Params:
	 * property = the property name
	 * state = state to retrieve the value for
	 * value = return location for the property value,
	 * you must free this memory using g_value_unset() once you are
	 * done with it. [out][transfer full]
	 * Since 3.0
	 */
	public void getProperty(string property, GtkStateFlags state, Value value)
	{
		// void gtk_theming_engine_get_property (GtkThemingEngine *engine,  const gchar *property,  GtkStateFlags state,  GValue *value);
		gtk_theming_engine_get_property(gtkThemingEngine, Str.toStringz(property), state, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Returns the GdkScreen to which engine currently rendering to.
	 * Returns: a GdkScreen, or NULL. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gtk_theming_engine_get_screen (GtkThemingEngine *engine);
		auto p = gtk_theming_engine_get_screen(gtkThemingEngine);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * returns the state used when rendering.
	 * Returns: the state flags Since 3.0
	 */
	public GtkStateFlags getState()
	{
		// GtkStateFlags gtk_theming_engine_get_state (GtkThemingEngine *engine);
		return gtk_theming_engine_get_state(gtkThemingEngine);
	}
	
	/**
	 * Gets the value for a widget style property.
	 * Params:
	 * propertyName = the name of the widget style property
	 * value = Return location for the property value, free with
	 * g_value_unset() after use.
	 * Since 3.0
	 */
	public void getStyleProperty(string propertyName, Value value)
	{
		// void gtk_theming_engine_get_style_property  (GtkThemingEngine *engine,  const gchar *property_name,  GValue *value);
		gtk_theming_engine_get_style_property(gtkThemingEngine, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Retrieves several widget style properties from engine according to the
	 * currently rendered content's style.
	 * Params:
	 * args = va_list of property name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void getStyleValist(void* args)
	{
		// void gtk_theming_engine_get_style_valist (GtkThemingEngine *engine,  va_list args);
		gtk_theming_engine_get_style_valist(gtkThemingEngine, args);
	}
	
	/**
	 * Retrieves several style property values that apply to the currently
	 * rendered element.
	 * Params:
	 * state = state to retrieve values for
	 * args = va_list of property name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void getValist(GtkStateFlags state, void* args)
	{
		// void gtk_theming_engine_get_valist (GtkThemingEngine *engine,  GtkStateFlags state,  va_list args);
		gtk_theming_engine_get_valist(gtkThemingEngine, state, args);
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
		// void gtk_theming_engine_get_color (GtkThemingEngine *engine,  GtkStateFlags state,  GdkRGBA *color);
		gtk_theming_engine_get_color(gtkThemingEngine, state, (color is null) ? null : color.getRGBAStruct());
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
		// void gtk_theming_engine_get_background_color  (GtkThemingEngine *engine,  GtkStateFlags state,  GdkRGBA *color);
		gtk_theming_engine_get_background_color(gtkThemingEngine, state, (color is null) ? null : color.getRGBAStruct());
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
		// void gtk_theming_engine_get_border_color (GtkThemingEngine *engine,  GtkStateFlags state,  GdkRGBA *color);
		gtk_theming_engine_get_border_color(gtkThemingEngine, state, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Gets the border for a given state as a GtkBorder.
	 * Params:
	 * state = state to retrieve the border for
	 * border = return value for the border settings. [out]
	 * Since 3.0
	 */
	public void getBorder(GtkStateFlags state, out GtkBorder border)
	{
		// void gtk_theming_engine_get_border (GtkThemingEngine *engine,  GtkStateFlags state,  GtkBorder *border);
		gtk_theming_engine_get_border(gtkThemingEngine, state, &border);
	}
	
	/**
	 * Gets the padding for a given state as a GtkBorder.
	 * Params:
	 * state = state to retrieve the padding for
	 * padding = return value for the padding settings. [out]
	 * Since 3.0
	 */
	public void getPadding(GtkStateFlags state, out GtkBorder padding)
	{
		// void gtk_theming_engine_get_padding (GtkThemingEngine *engine,  GtkStateFlags state,  GtkBorder *padding);
		gtk_theming_engine_get_padding(gtkThemingEngine, state, &padding);
	}
	
	/**
	 * Gets the margin for a given state as a GtkBorder.
	 * Params:
	 * state = state to retrieve the border for
	 * margin = return value for the margin settings. [out]
	 * Since 3.0
	 */
	public void getMargin(GtkStateFlags state, out GtkBorder margin)
	{
		// void gtk_theming_engine_get_margin (GtkThemingEngine *engine,  GtkStateFlags state,  GtkBorder *margin);
		gtk_theming_engine_get_margin(gtkThemingEngine, state, &margin);
	}
	
	/**
	 * Warning
	 * gtk_theming_engine_get_font has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_theming_engine_get()
	 * Returns the font description for a given state.
	 * Params:
	 * state = state to retrieve the font for
	 * Returns: the PangoFontDescription for the given state. This object is owned by GTK+ and should not be freed. [transfer none] Since 3.0
	 */
	public PgFontDescription getFont(GtkStateFlags state)
	{
		// const PangoFontDescription * gtk_theming_engine_get_font  (GtkThemingEngine *engine,  GtkStateFlags state);
		auto p = gtk_theming_engine_get_font(gtkThemingEngine, state);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Returns TRUE if the currently rendered contents have
	 * defined the given class name.
	 * Params:
	 * styleClass = class name to look up
	 * Returns: TRUE if engine has class_name defined Since 3.0
	 */
	public int hasClass(string styleClass)
	{
		// gboolean gtk_theming_engine_has_class (GtkThemingEngine *engine,  const gchar *style_class);
		return gtk_theming_engine_has_class(gtkThemingEngine, Str.toStringz(styleClass));
	}
	
	/**
	 * Returns TRUE if the currently rendered contents have the
	 * region defined. If flags_return is not NULL, it is set
	 * to the flags affecting the region.
	 * Params:
	 * styleRegion = a region name
	 * flags = return location for region flags. [out][allow-none]
	 * Returns: TRUE if region is defined Since 3.0
	 */
	public int hasRegion(string styleRegion, out GtkRegionFlags flags)
	{
		// gboolean gtk_theming_engine_has_region (GtkThemingEngine *engine,  const gchar *style_region,  GtkRegionFlags *flags);
		return gtk_theming_engine_has_region(gtkThemingEngine, Str.toStringz(styleRegion), &flags);
	}
	
	/**
	 * Looks up and resolves a color name in the current style's color map.
	 * Params:
	 * colorName = color name to lookup
	 * color = Return location for the looked up color. [out]
	 * Returns: TRUE if color_name was found and resolved, FALSE otherwise
	 */
	public int lookupColor(string colorName, RGBA color)
	{
		// gboolean gtk_theming_engine_lookup_color (GtkThemingEngine *engine,  const gchar *color_name,  GdkRGBA *color);
		return gtk_theming_engine_lookup_color(gtkThemingEngine, Str.toStringz(colorName), (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Warning
	 * gtk_theming_engine_state_is_running has been deprecated since version 3.6 and should not be used in newly-written code. Always returns FALSE
	 * Returns TRUE if there is a transition animation running for the
	 * current region (see gtk_style_context_push_animatable_region()).
	 * If progress is not NULL, the animation progress will be returned
	 * there, 0.0 means the state is closest to being FALSE, while 1.0 means
	 * it's closest to being TRUE. This means transition animations will
	 * run from 0 to 1 when state is being set to TRUE and from 1 to 0 when
	 * it's being set to FALSE.
	 * Params:
	 * state = a widget state
	 * progress = return location for the transition progress. [out]
	 * Returns: TRUE if there is a running transition animation for state. Since 3.0
	 */
	public int stateIsRunning(GtkStateType state, out double progress)
	{
		// gboolean gtk_theming_engine_state_is_running (GtkThemingEngine *engine,  GtkStateType state,  gdouble *progress);
		return gtk_theming_engine_state_is_running(gtkThemingEngine, state, &progress);
	}
	
	/**
	 * Loads and initializes a theming engine module from the
	 * standard directories.
	 * Params:
	 * name = Theme engine name to load
	 * Returns: A theming engine, or NULL if the engine name doesn't exist. [transfer none]
	 */
	public static ThemingEngine load(string name)
	{
		// GtkThemingEngine * gtk_theming_engine_load (const gchar *name);
		auto p = gtk_theming_engine_load(Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ThemingEngine)(cast(GtkThemingEngine*) p);
	}
	
	/**
	 * Warning
	 * gtk_theming_engine_register_property has been deprecated since version 3.8 and should not be used in newly-written code. Code should use the default properties provided by CSS.
	 * Registers a property so it can be used in the CSS file format,
	 * on the CSS file the property will look like
	 * "-${name_space}-${property_name}". being
	 * ${property_name} the given to pspec. name_space will usually
	 * be the theme engine name.
	 * For any type a parse_func may be provided, being this function
	 * used for turning any property value (between ':' and ';') in
	 * CSS to the GValue needed. For basic types there is already
	 * builtin parsing support, so NULL may be provided for these
	 * cases.
	 * Note
	 * Engines must ensure property registration happens exactly once,
	 * usually GTK+ deals with theming engines as singletons, so this
	 * should be guaranteed to happen once, but bear this in mind
	 * when creating GtkThemeEngines yourself.
	 * Note
	 * In order to make use of the custom registered properties in
	 * the CSS file, make sure the engine is loaded first by specifying
	 * the engine property, either in a previous rule or within the same
	 * one.
	 * * {
		 *  engine: someengine;
		 *  -SomeEngine-custom-property: 2;
	 * }
	 * Params:
	 * nameSpace = namespace for the property name
	 * parseFunc = parsing function to use, or NULL
	 * pspec = the GParamSpec for the new property
	 * Since 3.0
	 */
	public static void registerProperty(string nameSpace, GtkStylePropertyParser parseFunc, ParamSpec pspec)
	{
		// void gtk_theming_engine_register_property  (const gchar *name_space,  GtkStylePropertyParser parse_func,  GParamSpec *pspec);
		gtk_theming_engine_register_property(Str.toStringz(nameSpace), parseFunc, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
}
